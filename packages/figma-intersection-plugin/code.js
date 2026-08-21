/*
 * Solar Path Intersections
 *
 * The plugin deliberately does not use Figma's snapping system. It reads the
 * vector network, converts every segment to a cubic Bezier, finds intersections
 * by adaptive subdivision, and refines each candidate with Newton iterations.
 */

var EPSILON = 1e-8;
var HIT_TOLERANCE = 1e-5;
var FLATNESS_TOLERANCE = 1e-5;
var MAX_SUBDIVISION_DEPTH = 24;
var MAX_SUBDIVISION_NODES = 12000;

function isSupportedNode(node) {
  return node && (node.type === 'VECTOR' || node.type === 'LINE');
}

function point(x, y) { return { x: x, y: y }; }
function add(a, b) { return point(a.x + b.x, a.y + b.y); }
function sub(a, b) { return point(a.x - b.x, a.y - b.y); }
function mul(a, scalar) { return point(a.x * scalar, a.y * scalar); }
function dot(a, b) { return a.x * b.x + a.y * b.y; }
function cross(a, b) { return a.x * b.y - a.y * b.x; }
function length(a) { return Math.sqrt(dot(a, a)); }
function clamp(value, min, max) { return Math.max(min, Math.min(max, value)); }
function lerp(a, b, t) { return a + (b - a) * t; }

function transformPoint(matrix, p) {
  return point(
    matrix[0][0] * p.x + matrix[0][1] * p.y + matrix[0][2],
    matrix[1][0] * p.x + matrix[1][1] * p.y + matrix[1][2]
  );
}

function cubicPoint(curve, t) {
  var mt = 1 - t;
  var mt2 = mt * mt;
  var t2 = t * t;
  return point(
    mt2 * mt * curve.p0.x + 3 * mt2 * t * curve.p1.x + 3 * mt * t2 * curve.p2.x + t2 * t * curve.p3.x,
    mt2 * mt * curve.p0.y + 3 * mt2 * t * curve.p1.y + 3 * mt * t2 * curve.p2.y + t2 * t * curve.p3.y
  );
}

function cubicDerivative(curve, t) {
  var mt = 1 - t;
  return point(
    3 * mt * mt * (curve.p1.x - curve.p0.x) + 6 * mt * (curve.p2.x - curve.p1.x) + 3 * t * t * (curve.p3.x - curve.p2.x),
    3 * mt * mt * (curve.p1.y - curve.p0.y) + 6 * mt * (curve.p2.y - curve.p1.y) + 3 * t * t * (curve.p3.y - curve.p2.y)
  );
}

function splitCubic(curve, t) {
  var p01 = lerpPoint(curve.p0, curve.p1, t);
  var p12 = lerpPoint(curve.p1, curve.p2, t);
  var p23 = lerpPoint(curve.p2, curve.p3, t);
  var p012 = lerpPoint(p01, p12, t);
  var p123 = lerpPoint(p12, p23, t);
  var middle = lerpPoint(p012, p123, t);
  return [
    { p0: curve.p0, p1: p01, p2: p012, p3: middle },
    { p0: middle, p1: p123, p2: p23, p3: curve.p3 },
  ];
}

function lerpPoint(a, b, t) {
  return point(lerp(a.x, b.x, t), lerp(a.y, b.y, t));
}

function bbox(curve) {
  return {
    minX: Math.min(curve.p0.x, curve.p1.x, curve.p2.x, curve.p3.x),
    minY: Math.min(curve.p0.y, curve.p1.y, curve.p2.y, curve.p3.y),
    maxX: Math.max(curve.p0.x, curve.p1.x, curve.p2.x, curve.p3.x),
    maxY: Math.max(curve.p0.y, curve.p1.y, curve.p2.y, curve.p3.y),
  };
}

function boxesOverlap(a, b, padding) {
  return a.minX <= b.maxX + padding && a.maxX + padding >= b.minX &&
    a.minY <= b.maxY + padding && a.maxY + padding >= b.minY;
}

function pointLineDistance(p, a, b) {
  var ab = sub(b, a);
  var denominator = length(ab);
  if (denominator < EPSILON) return length(sub(p, a));
  return Math.abs(cross(sub(p, a), ab)) / denominator;
}

function flatness(curve) {
  return Math.max(
    pointLineDistance(curve.p1, curve.p0, curve.p3),
    pointLineDistance(curve.p2, curve.p0, curve.p3)
  );
}

function lineIntersection(a0, a1, b0, b1) {
  var r = sub(a1, a0);
  var s = sub(b1, b0);
  var denominator = cross(r, s);
  if (Math.abs(denominator) < EPSILON) return null;
  var qp = sub(b0, a0);
  var t = cross(qp, s) / denominator;
  var u = cross(qp, r) / denominator;
  if (t < -HIT_TOLERANCE || t > 1 + HIT_TOLERANCE || u < -HIT_TOLERANCE || u > 1 + HIT_TOLERANCE) return null;
  return { a: clamp(t, 0, 1), b: clamp(u, 0, 1) };
}

function refineIntersection(curveA, curveB, tA, tB) {
  var a = clamp(tA, 0, 1);
  var b = clamp(tB, 0, 1);
  for (var i = 0; i < 16; i += 1) {
    var pa = cubicPoint(curveA, a);
    var pb = cubicPoint(curveB, b);
    var error = sub(pa, pb);
    if (length(error) < 1e-10) break;
    var da = cubicDerivative(curveA, a);
    var db = cubicDerivative(curveB, b);
    var determinant = -da.x * db.y + da.y * db.x;
    if (Math.abs(determinant) < 1e-12) break;
    var deltaA = (error.x * db.y - error.y * db.x) / determinant;
    var deltaB = (error.x * da.y - da.x * error.y) / determinant;
    // The values above solve J · delta = -F, so the correction is added to
    // the current parameters (subtracting it would move away from a crossing).
    a = clamp(a + deltaA, 0, 1);
    b = clamp(b + deltaB, 0, 1);
  }
  var finalA = cubicPoint(curveA, a);
  var finalB = cubicPoint(curveB, b);
  if (length(sub(finalA, finalB)) > HIT_TOLERANCE) return null;
  return { a: a, b: b, point: mul(add(finalA, finalB), 0.5) };
}

function collectCubicIntersections(curveA, curveB, rangeA, rangeB, depth, output, budget) {
  if (budget) {
    budget.visited += 1;
    if (budget.visited > MAX_SUBDIVISION_NODES) {
      budget.exceeded = true;
      return;
    }
  }
  var boxA = bbox(curveA);
  var boxB = bbox(curveB);
  if (!boxesOverlap(boxA, boxB, HIT_TOLERANCE)) return;

  var flatA = flatness(curveA);
  var flatB = flatness(curveB);
  if (depth >= MAX_SUBDIVISION_DEPTH || (flatA <= FLATNESS_TOLERANCE && flatB <= FLATNESS_TOLERANCE)) {
    var lineHit = lineIntersection(curveA.p0, curveA.p3, curveB.p0, curveB.p3);
    var seeds = lineHit ? [[lineHit.a, lineHit.b]] : [[0.5, 0.5], [0, 0], [0, 1], [1, 0], [1, 1]];
    for (var s = 0; s < seeds.length; s += 1) {
      var candidate = refineIntersection(
        rangeA.original,
        rangeB.original,
        lerp(rangeA.start, rangeA.end, seeds[s][0]),
        lerp(rangeB.start, rangeB.end, seeds[s][1])
      );
      if (candidate) output.push(candidate);
    }
    return;
  }

  if (flatA >= flatB) {
    var splitA = splitCubic(curveA, 0.5);
    var middleA = (rangeA.start + rangeA.end) / 2;
    collectCubicIntersections(splitA[0], curveB, { original: rangeA.original, start: rangeA.start, end: middleA }, rangeB, depth + 1, output, budget);
    collectCubicIntersections(splitA[1], curveB, { original: rangeA.original, start: middleA, end: rangeA.end }, rangeB, depth + 1, output, budget);
  } else {
    var splitB = splitCubic(curveB, 0.5);
    var middleB = (rangeB.start + rangeB.end) / 2;
    collectCubicIntersections(curveA, splitB[0], rangeA, { original: rangeB.original, start: rangeB.start, end: middleB }, depth + 1, output, budget);
    collectCubicIntersections(curveA, splitB[1], rangeA, { original: rangeB.original, start: middleB, end: rangeB.end }, depth + 1, output, budget);
  }
}

function deduplicateHits(hits) {
  var result = [];
  for (var i = 0; i < hits.length; i += 1) {
    var hit = hits[i];
    var duplicate = false;
    for (var j = 0; j < result.length; j += 1) {
      if (length(sub(hit.point, result[j].point)) < 1e-4 && Math.abs(hit.a - result[j].a) < 1e-4 && Math.abs(hit.b - result[j].b) < 1e-4) {
        duplicate = true;
        break;
      }
    }
    if (!duplicate) result.push(hit);
  }
  result.sort(function (a, b) { return a.point.x - b.point.x || a.point.y - b.point.y; });
  return result;
}

function deduplicateIntersections(intersections) {
  var result = [];
  for (var i = 0; i < intersections.length; i += 1) {
    var candidate = intersections[i];
    var duplicate = false;
    for (var j = 0; j < result.length; j += 1) {
      if (Math.hypot(candidate.x - result[j].x, candidate.y - result[j].y) < 1e-4) {
        duplicate = true;
        break;
      }
    }
    if (!duplicate) result.push(candidate);
  }
  return result;
}

function vectorCurve(node, segment) {
  var network = node.vectorNetwork;
  var start = network.vertices[segment.start];
  var end = network.vertices[segment.end];
  var tangentStart = segment.tangentStart || point(0, 0);
  var tangentEnd = segment.tangentEnd || point(0, 0);
  var startPoint = point(start.x, start.y);
  var endPoint = point(end.x, end.y);
  // Figma uses two zero tangents as a special representation for a straight
  // line. In cubic-Bezier form, that line must use the 1/3 and 2/3 handles;
  // using the endpoints themselves would create an eased curve instead.
  var isStraight = length(tangentStart) < EPSILON && length(tangentEnd) < EPSILON;
  return {
    p0: startPoint,
    p1: isStraight ? lerpPoint(startPoint, endPoint, 1 / 3) : add(startPoint, tangentStart),
    p2: isStraight ? lerpPoint(startPoint, endPoint, 2 / 3) : add(endPoint, tangentEnd),
    p3: endPoint,
  };
}

function nodeGeometry(node) {
  var curves = [];
  if (node.type === 'LINE') {
    curves.push({ segmentIndex: 0, curve: {
      p0: point(0, 0), p1: point(node.width / 3, 0), p2: point(node.width * 2 / 3, 0), p3: point(node.width, 0),
    } });
  } else {
    var network = node.vectorNetwork;
    for (var i = 0; i < network.segments.length; i += 1) {
      curves.push({ segmentIndex: i, curve: vectorCurve(node, network.segments[i]) });
    }
  }
  return { nodeId: node.id, type: node.type, transform: node.absoluteTransform, curves: curves };
}

function pageCurve(geometry, localCurve) {
  return {
    p0: transformPoint(geometry.transform, localCurve.p0),
    p1: transformPoint(geometry.transform, localCurve.p1),
    p2: transformPoint(geometry.transform, localCurve.p2),
    p3: transformPoint(geometry.transform, localCurve.p3),
  };
}

function analyseSelection(nodes) {
  var geometryA = nodeGeometry(nodes[0]);
  var geometryB = nodeGeometry(nodes[1]);
  var intersections = [];
  var budget = { visited: 0, exceeded: false };
  for (var i = 0; i < geometryA.curves.length; i += 1) {
    for (var j = 0; j < geometryB.curves.length; j += 1) {
      var curveA = pageCurve(geometryA, geometryA.curves[i].curve);
      var curveB = pageCurve(geometryB, geometryB.curves[j].curve);
      var hits = [];
      collectCubicIntersections(
        curveA,
        curveB,
        { original: curveA, start: 0, end: 1 },
        { original: curveB, start: 0, end: 1 },
        0,
        hits,
        budget
      );
      hits = deduplicateHits(hits);
      for (var h = 0; h < hits.length; h += 1) {
        intersections.push({
          id: 'i' + intersections.length,
          x: hits[h].point.x,
          y: hits[h].point.y,
          aSegment: geometryA.curves[i].segmentIndex,
          bSegment: geometryB.curves[j].segmentIndex,
          aT: hits[h].a,
          bT: hits[h].b,
        });
      }
    }
  }
  intersections = deduplicateIntersections(intersections);
  intersections.sort(function (a, b) { return a.x - b.x || a.y - b.y; });
  for (var k = 0; k < intersections.length; k += 1) intersections[k].id = 'i' + k;
  return {
    nodes: [
      { id: nodes[0].id, name: nodes[0].name, type: nodes[0].type },
      { id: nodes[1].id, name: nodes[1].name, type: nodes[1].type },
    ],
    intersections: intersections,
    budgetExceeded: budget.exceeded,
  };
}

function copyPaintProperties(source, target) {
  var properties = ['strokes', 'fills', 'strokeWeight', 'strokeCap', 'strokeJoin', 'strokeAlign', 'strokeMiterLimit', 'opacity', 'blendMode', 'effects', 'isMask', 'locked'];
  for (var i = 0; i < properties.length; i += 1) {
    var property = properties[i];
    try {
      if (source[property] !== undefined && target[property] !== undefined) target[property] = source[property];
    } catch (_error) { /* Some properties are read-only on a newly created vector. */ }
  }
}

function lineNetwork(line) {
  return {
    vertices: [{ x: 0, y: 0 }, { x: line.width, y: 0 }],
    segments: [{ start: 0, end: 1 }],
    regions: [],
  };
}

function validateNetwork(network) {
  if (!network || !Array.isArray(network.vertices) || !Array.isArray(network.segments)) {
    throw new Error('Le réseau vectoriel produit est incomplet.');
  }
  for (var i = 0; i < network.segments.length; i += 1) {
    var segment = network.segments[i];
    if (!network.vertices[segment.start] || !network.vertices[segment.end]) {
      throw new Error('Le réseau vectoriel produit contient un segment sans sommet valide.');
    }
  }
  if (!network.regions) return;
  for (var r = 0; r < network.regions.length; r += 1) {
    var region = network.regions[r];
    for (var l = 0; l < region.loops.length; l += 1) {
      var loop = region.loops[l];
      if (!loop.length) throw new Error('Le réseau vectoriel produit contient une région vide.');
      for (var s = 0; s < loop.length; s += 1) {
        var current = network.segments[loop[s]];
        var next = network.segments[loop[(s + 1) % loop.length]];
        if (!current || !next) throw new Error('Une région référence un segment inexistant.');
        var connected = current.start === next.start || current.start === next.end || current.end === next.start || current.end === next.end;
        if (!connected) throw new Error('La région produite n’est plus une boucle continue.');
      }
    }
  }
}

function splitCurveAtParameters(curve, parameters) {
  var pieces = [];
  var current = curve;
  var previous = 0;
  for (var i = 0; i < parameters.length; i += 1) {
    var relative = (parameters[i] - previous) / (1 - previous);
    var split = splitCubic(current, clamp(relative, 0, 1));
    pieces.push({ curve: split[0], startT: previous, endT: parameters[i] });
    current = split[1];
    previous = parameters[i];
  }
  pieces.push({ curve: current, startT: previous, endT: 1 });
  return pieces;
}

function tangentDirection(curve, t) {
  var tangent = cubicDerivative(curve, t);
  var magnitude = length(tangent);
  if (magnitude < EPSILON) return point(1, 0);
  return mul(tangent, 1 / magnitude);
}

function makeSegment(piece, startIndex, endIndex) {
  var tangentStart = sub(piece.curve.p1, piece.curve.p0);
  var tangentEnd = sub(piece.curve.p2, piece.curve.p3);
  var segment = { start: startIndex, end: endIndex };
  if (length(tangentStart) > EPSILON) segment.tangentStart = tangentStart;
  if (length(tangentEnd) > EPSILON) segment.tangentEnd = tangentEnd;
  return segment;
}

function sharedVertex(segmentA, segmentB) {
  if (segmentA.start === segmentB.start || segmentA.start === segmentB.end) return segmentA.start;
  if (segmentA.end === segmentB.start || segmentA.end === segmentB.end) return segmentA.end;
  return null;
}

function expandRegionLoop(loop, originalSegments, replacement) {
  if (loop.length === 0) return [];
  var expanded = [];
  var currentVertex = null;
  for (var i = 0; i < loop.length; i += 1) {
    var segmentIndex = loop[i];
    var source = originalSegments[segmentIndex];
    var chain = (replacement[segmentIndex] || []).slice();
    if (chain.length === 0) continue;

    var reverse = false;
    if (currentVertex === null && loop.length > 1) {
      var nextSource = originalSegments[loop[(i + 1) % loop.length]];
      var exitVertex = sharedVertex(source, nextSource);
      reverse = exitVertex === source.start;
      currentVertex = reverse ? source.end : source.start;
    } else if (currentVertex !== null) {
      if (source.end === currentVertex) reverse = true;
      else if (source.start !== currentVertex) throw new Error('La boucle Figma d’origine n’est pas continue.');
    }

    if (reverse) chain.reverse();
    for (var c = 0; c < chain.length; c += 1) expanded.push(chain[c]);
    currentVertex = reverse ? source.start : source.end;
  }
  return expanded;
}

function buildNetworkWithPoints(node, hits, cut, gap) {
  var original = node.type === 'LINE' ? lineNetwork(node) : node.vectorNetwork;
  var newVertices = original.vertices.map(function (vertex) {
    var copy = { x: vertex.x, y: vertex.y };
    if (vertex.strokeCap !== undefined) copy.strokeCap = vertex.strokeCap;
    if (vertex.strokeJoin !== undefined) copy.strokeJoin = vertex.strokeJoin;
    if (vertex.cornerRadius !== undefined) copy.cornerRadius = vertex.cornerRadius;
    if (vertex.handleMirroring !== undefined) copy.handleMirroring = vertex.handleMirroring;
    return copy;
  });
  var newSegments = [];
  var replacement = [];
  var grouped = {};
  for (var i = 0; i < hits.length; i += 1) {
    var item = hits[i];
    if (!grouped[item.segmentIndex]) grouped[item.segmentIndex] = [];
    grouped[item.segmentIndex].push(item);
  }

  for (var segmentIndex = 0; segmentIndex < original.segments.length; segmentIndex += 1) {
    var sourceSegment = original.segments[segmentIndex];
    var segmentCurve = node.type === 'LINE' ? {
      p0: point(0, 0), p1: point(node.width / 3, 0), p2: point(node.width * 2 / 3, 0), p3: point(node.width, 0),
    } : vectorCurve(node, sourceSegment);
    var segmentHits = (grouped[segmentIndex] || []).slice().sort(function (a, b) { return a.t - b.t; });
    var parameters = [];
    var effectiveHits = [];
    for (var h = 0; h < segmentHits.length; h += 1) {
      if (segmentHits[h].t > 1e-6 && segmentHits[h].t < 1 - 1e-6 && (parameters.length === 0 || Math.abs(parameters[parameters.length - 1] - segmentHits[h].t) > 1e-6)) {
        parameters.push(segmentHits[h].t);
        effectiveHits.push(segmentHits[h]);
      }
    }
    if (parameters.length === 0) {
      replacement[segmentIndex] = [newSegments.length];
      newSegments.push(sourceSegment);
      continue;
    }

    var pieces = splitCurveAtParameters(segmentCurve, parameters);
    var chain = [];
    var previousVertex = sourceSegment.start;
    for (var p = 0; p < pieces.length; p += 1) {
      var endIsOriginal = p === pieces.length - 1;
      var hitAtEnd = !endIsOriginal ? effectiveHits[p] : null;
      var endPoint = pieces[p].curve.p3;
      var endVertex;
      if (endIsOriginal) {
        endVertex = sourceSegment.end;
      } else {
        endVertex = newVertices.length;
        newVertices.push({ x: endPoint.x, y: endPoint.y });
      }
      var segment = makeSegment(pieces[p], previousVertex, endVertex);
      chain.push(newSegments.length);
      newSegments.push(segment);
      if (hitAtEnd) {
        if (cut) {
          // The exact intersection is a real vertex. The two pieces deliberately
          // do not share a segment, which creates a topological break. A positive
          // gap is added below by moving the two endpoints along the tangent.
          var leftIndex = endVertex;
          var rightIndex = newVertices.length;
          var localDirection = tangentDirection(segmentCurve, hitAtEnd.t);
          var halfGap = Math.max(0, gap || 0) / 2;
          var intersectionPoint = point(endPoint.x, endPoint.y);
          if (halfGap > 0) {
            newVertices[leftIndex] = sub(intersectionPoint, mul(localDirection, halfGap));
            newVertices.push(add(intersectionPoint, mul(localDirection, halfGap)));
          } else {
            newVertices.push({ x: intersectionPoint.x, y: intersectionPoint.y });
          }
          previousVertex = rightIndex;
        } else {
          previousVertex = endVertex;
        }
      } else {
        previousVertex = endVertex;
      }
    }
    replacement[segmentIndex] = chain;
  }

  var newRegions = [];
  if (original.regions) {
    for (var r = 0; r < original.regions.length; r += 1) {
      var region = original.regions[r];
      newRegions.push({
        windingRule: region.windingRule,
        loops: region.loops.map(function (loop) {
          return expandRegionLoop(loop, original.segments, replacement);
        }),
        fills: region.fills,
        fillStyleId: region.fillStyleId,
      });
    }
  }
  return { vertices: newVertices, segments: newSegments, regions: newRegions };
}

function replaceLineWithVector(line, network) {
  var replacement = figma.createVector();
  replacement.name = line.name;
  var transform = line.relativeTransform;
  copyPaintProperties(line, replacement);
  replacement.vectorNetwork = network;
  replacement.relativeTransform = transform;
  var parent = line.parent;
  var index = parent.children.indexOf(line);
  parent.insertChild(index, replacement);
  line.remove();
  return replacement;
}

function getCurrentSelection() {
  var selection = figma.currentPage.selection;
  if (selection.length !== 2 || !isSupportedNode(selection[0]) || !isSupportedNode(selection[1])) return null;
  return [selection[0], selection[1]];
}

function postSelection() {
  var nodes = getCurrentSelection();
  if (!nodes) {
    figma.ui.postMessage({ type: 'selection', valid: false, message: 'Sélectionne exactement deux calques VECTOR ou LINE.' });
    return;
  }
  try {
    figma.ui.postMessage({ type: 'analysis', valid: true, result: analyseSelection(nodes) });
  } catch (error) {
    figma.ui.postMessage({ type: 'error', message: error instanceof Error ? error.message : String(error) });
  }
}

var isApplying = false;
var suppressSelectionUntil = 0;

function applyOperation(message) {
  var nodes = getCurrentSelection();
  if (!nodes || nodes[0].id !== message.nodes[0] || nodes[1].id !== message.nodes[1]) throw new Error('La sélection a changé. Relance l’analyse.');
  var analysis = analyseSelection(nodes);
  var selected = analysis.intersections.filter(function (intersection) { return message.intersections.indexOf(intersection.id) !== -1; });
  if (selected.length === 0) throw new Error('Aucune intersection sélectionnée.');

  var cutNodeIndex = message.mode === 'cut-a' ? 0 : message.mode === 'cut-b' ? 1 : -1;
  var edits = [[], []];
  for (var i = 0; i < selected.length; i += 1) {
    var hit = selected[i];
    edits[0].push({ segmentIndex: hit.aSegment, t: hit.aT });
    edits[1].push({ segmentIndex: hit.bSegment, t: hit.bT });
  }
  var resultNodes = [];
  isApplying = true;
  try {
    for (var n = 0; n < nodes.length; n += 1) {
      figma.ui.postMessage({ type: 'progress', message: 'Préparation du tracé ' + (n + 1) + '/2…' });
      var network = buildNetworkWithPoints(nodes[n], edits[n], cutNodeIndex === n, Number(message.gap) || 0);
      validateNetwork(network);
      if (nodes[n].type === 'LINE') {
        figma.ui.postMessage({ type: 'progress', message: 'Conversion du tracé LINE…' });
        resultNodes.push(replaceLineWithVector(nodes[n], network));
      }
      else {
        // This plugin does not opt into dynamic-page document access, so the
        // vectorNetwork property is writable directly. Keeping the operation
        // synchronous avoids an unresolved setVectorNetworkAsync promise in
        // Figma's sandbox and makes failures immediately catchable.
        figma.ui.postMessage({ type: 'progress', message: 'Écriture du tracé ' + (n + 1) + '/2…' });
        nodes[n].vectorNetwork = network;
        resultNodes.push(nodes[n]);
      }
    }
    figma.currentPage.selection = resultNodes;
    figma.commitUndo();
    suppressSelectionUntil = Date.now() + 750;
    figma.ui.postMessage({ type: 'applied', count: selected.length, convertedLines: nodes.filter(function (node) { return node.type === 'LINE'; }).length });
  } finally {
    isApplying = false;
  }
}

figma.showUI(__html__, { width: 520, height: 640, themeColors: true, title: 'Solar Path Intersections' });
figma.on('selectionchange', function () {
  if (!isApplying && Date.now() >= suppressSelectionUntil) postSelection();
});
figma.ui.onmessage = function (message) {
  try {
    if (message.type === 'refresh') postSelection();
    if (message.type === 'apply') applyOperation(message);
    if (message.type === 'close') figma.closePlugin();
  } catch (error) {
    figma.ui.postMessage({ type: 'error', message: error instanceof Error ? error.message : String(error) });
  }
};

postSelection();
