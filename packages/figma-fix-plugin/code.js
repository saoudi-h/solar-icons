// ─── Helpers ────────────────────────────────────────────────────────────────

/**
 * Walk a node tree and collect all VectorNodes (including inside groups/frames)
 */
function collectVectorNodes(node) {
  if (node.type === 'VECTOR') return [node];
  if ('children' in node) {
    const list = [];
    for (let i = 0; i < node.children.length; i++) {
      const childNodes = collectVectorNodes(node.children[i]);
      for (let j = 0; j < childNodes.length; j++) {
        list.push(childNodes[j]);
      }
    }
    return list;
  }
  return [];
}

/**
 * Walk a node tree and collect all hidden original vector nodes
 */
function collectOriginalNodes(node) {
  const originals = [];
  function walk(n) {
    if (n.name && n.name.indexOf(" (original)") !== -1 && n.visible === false) {
      originals.push(n);
    }
    if ('children' in n) {
      for (let i = 0; i < n.children.length; i++) {
        walk(n.children[i]);
      }
    }
  }
  walk(node);
  return originals;
}

/**
 * Check if a vertex is part of a cycle (closed loop) in the adjacency list.
 * Iterative DFS implementation to avoid stack overflow or sandboxed nested closure bugs.
 */
function isVertexInCycle(startVertex, adj) {
  const visited = new Set();
  const stack = [];

  const startNeighbors = adj[startVertex] || [];
  for (let i = 0; i < startNeighbors.length; i++) {
    stack.push([startNeighbors[i], startVertex]);
  }
  visited.add(startVertex);

  while (stack.length > 0) {
    const item = stack.pop();
    const curr = item[0];
    const parent = item[1];

    if (curr === startVertex) {
      return true;
    }

    if (!visited.has(curr)) {
      visited.add(curr);
      const neighbors = adj[curr] || [];
      for (let i = 0; i < neighbors.length; i++) {
        const neighbor = neighbors[i];
        if (neighbor !== parent) {
          stack.push([neighbor, curr]);
        }
      }
    }
  }

  return false;
}

/**
 * Analyse a VectorNode and return a diagnostic report:
 * - isProblematic: true if Figma will convert strokes to fills on SVG export
 * - reasons: list of human-readable explanations
 * - fixable: true if our rebuild strategy can fix it
 */
function diagnoseVector(node, strictMode) {
  const reasons = [];
  const net = node.vectorNetwork;

  // 1. Check stroke alignment – SVG only supports CENTER
  const strokeAlignVal = node.strokeAlign;
  if (strokeAlignVal === figma.mixed) {
    reasons.push('strokeAlign="MIXED" (SVG only supports CENTER)');
  } else if (strokeAlignVal && strokeAlignVal !== 'CENTER') {
    reasons.push(`strokeAlign="${strokeAlignVal}" (SVG only supports CENTER)`);
  }

  // Compute vertex degrees to identify leaf vertices (endpoints, degree === 1) and junctions (degree > 2)
  const vertexDegrees = (net && net.vertices && net.segments) ? new Array(net.vertices.length).fill(0) : [];
  if (net && net.segments) {
    for (let i = 0; i < net.segments.length; i++) {
      const seg = net.segments[i];
      if (seg.start !== undefined && seg.start < vertexDegrees.length) {
        vertexDegrees[seg.start]++;
      }
      if (seg.end !== undefined && seg.end < vertexDegrees.length) {
        vertexDegrees[seg.end]++;
      }
    }
  }

  // 2. Check for asymmetric strokeCap per vertex (only on leaf endpoints where degree === 1)
  // We ignore 'NONE' caps because they represent the default behavior that inherits the node's cap.
  const explicitVertexCaps = new Set();
  if (net && net.vertices) {
    for (let i = 0; i < net.vertices.length; i++) {
      const v = net.vertices[i];
      const deg = vertexDegrees[i];
      if (deg === 1 && v.strokeCap && v.strokeCap !== 'NONE') {
        explicitVertexCaps.add(v.strokeCap);
      }
    }
  }
  const nodeCap = node.strokeCap === figma.mixed ? 'MIXED' : (node.strokeCap || 'NONE');
  if (explicitVertexCaps.size > 1) {
    reasons.push(`Mixed explicit per-vertex strokeCap: ${Array.from(explicitVertexCaps).join(', ')} — SVG requires uniform caps`);
  } else if (explicitVertexCaps.size === 1) {
    const cap = explicitVertexCaps.values().next().value;
    if (cap !== nodeCap) {
      reasons.push(`Explicit per-vertex strokeCap="${cap}" differs from node strokeCap="${nodeCap}"`);
    }
  }

  // 3. Check for width profiles (variable stroke width) — SVG can't represent these
  if (node.vectorNetwork && node.vectorNetwork.segments) {
    for (const seg of net.segments) {
      if (seg.tangentStart !== undefined || seg.tangentEnd !== undefined) {
        // This alone is fine (bezier), but check for strokeWeight override
      }
    }
  }

  // 4. Check for fills that look like they replaced a stroke
  const hasStrokes = node.strokes && node.strokes.length > 0;
  const hasFills = node.fills && node.fills.length > 0;
  if (!hasStrokes && hasFills) {
    if (strictMode) {
      reasons.push("Surface detected — shape uses fills with no strokes (prohibited in strict linear mode)");
    }
  }

  // 5. Check for advanced stroke features that force fill conversion
  if (node.dashPattern && node.dashPattern.length > 0) {
    reasons.push(`Dash pattern present — complex SVG dash, may export as fill`);
  }

  // 6. Check for branching paths (junctions or forks where degree > 2)
  // Only flags if the branching vertex is part of a closed cycle (loop) in the vector graph.
  // Open branching paths (like arrowheads on shafts) export cleanly in Figma.
  if (net && net.vertices && net.segments) {
    const adj = Array.from({ length: net.vertices.length }, () => []);
    for (let i = 0; i < net.segments.length; i++) {
      const seg = net.segments[i];
      if (seg.start !== undefined && seg.end !== undefined && seg.start < adj.length && seg.end < adj.length) {
        adj[seg.start].push(seg.end);
        adj[seg.end].push(seg.start);
      }
    }

    let hasBranchingCycle = false;
    for (let i = 0; i < vertexDegrees.length; i++) {
      if (vertexDegrees[i] > 2) {
        if (isVertexInCycle(i, adj)) {
          hasBranchingCycle = true;
          break;
        }
      }
    }

    if (hasBranchingCycle) {
      reasons.push("Branching vector network with closed loops — SVG strokes cannot branch");
    }
  }

  const isProblematic = reasons.length > 0;

  // Fixable: we can fix strokeAlign + asymmetric caps + branching (by splitting it).
  // Cannot fix: already-baked fills (no stroke left), dash patterns
  const alreadyBaked = reasons.some(r => r.includes('already converted to fill'));
  const fixable = isProblematic && !alreadyBaked;

  return { isProblematic, reasons, fixable };
}

/**
 * Rebuild a VectorNode from scratch using only SVG-compatible properties.
 * Strategy:
 *   - Read vectorPaths (the path data Figma already has)
 *   - Create a new VectorNode with those paths
 *   - Apply stroke properties at node level only (uniform cap/join)
 *   - Force strokeAlign to CENTER
 *   - Copy strokes array and strokeWeight from original
 */
async function rebuildVector(node) {
  const paths = node.vectorPaths;
  if (!paths || paths.length === 0) {
    return { success: false, reason: 'Node has no vectorPaths data' };
  }

  // Determine the dominant strokeCap across all vertices
  const net = node.vectorNetwork;
  const vertexCaps = [];
  if (net && net.vertices) {
    for (const v of net.vertices) {
      if (v.strokeCap) vertexCaps.push(v.strokeCap);
    }
  }
  const strokeCapVal = node.strokeCap !== figma.mixed ? node.strokeCap : null;
  const strokeJoinVal = node.strokeJoin !== figma.mixed ? node.strokeJoin : null;
  const dominantCap = mostFrequent(vertexCaps) || strokeCapVal || 'ROUND';
  const dominantJoin = strokeJoinVal || 'ROUND';

  // Create the new node
  const newNode = figma.createVector();
  newNode.name = node.name;

  // Set path geometry — use vectorPaths (SVG-compatible subset)
  newNode.vectorPaths = paths.map(p => ({
    windingRule: p.windingRule,
    data: p.data,
  }));

  // Restore position/size/rotation relative to parent using transform matrix
  newNode.relativeTransform = node.relativeTransform;

  // Stroke properties — uniform, SVG-compatible
  newNode.strokes = node.strokes;
  newNode.strokeWeight = node.strokeWeight;
  newNode.strokeAlign = 'CENTER'; // Force SVG-compatible alignment
  newNode.strokeCap = dominantCap;
  newNode.strokeJoin = dominantJoin;
  newNode.strokeMiterLimit = node.strokeMiterLimit;

  // Fills — carry over (some icons have fills too)
  newNode.fills = node.fills;

  // Visual properties
  newNode.opacity = node.opacity;
  newNode.blendMode = node.blendMode;
  newNode.isMask = node.isMask;
  newNode.effects = node.effects;
  newNode.constraints = node.constraints;
  newNode.locked = node.locked;

  // Corner radius if present
  if (node.cornerRadius !== undefined && node.cornerRadius !== figma.mixed) {
    newNode.cornerRadius = node.cornerRadius;
  }

  // Insert next to original in parent, rename and hide original instead of removing it
  const parent = node.parent;
  const index = parent.children.indexOf(node);
  node.name = node.name + " (original)";
  node.visible = false;
  parent.insertChild(index, newNode);

  return {
    success: true,
    newNode,
    dominantCap,
    capOverrideCount: vertexCaps.filter(c => c !== dominantCap).length,
    totalVertices: (net && net.vertices) ? net.vertices.length : 0,
  };
}

function mostFrequent(arr) {
  if (!arr || arr.length === 0) return null;
  const freq = {};
  let max = 0, result = null;
  for (const v of arr) {
    freq[v] = (freq[v] || 0) + 1;
    if (freq[v] > max) { max = freq[v]; result = v; }
  }
  return result;
}

/**
 * A robust UTF-8 decoder in plain JS for Figma's sandbox environment.
 */
function decodeUTF8(bytes) {
  let str = "";
  const temp = [];
  for (let i = 0; i < bytes.length; i++) {
    temp.push(bytes[i]);
    if (temp.length >= 8192) {
      str += String.fromCharCode.apply(null, temp);
      temp.length = 0;
    }
  }
  if (temp.length > 0) {
    str += String.fromCharCode.apply(null, temp);
  }
  return str;
}

/**
 * Export the currently selected node as SVG string via exportAsync
 */
async function exportNodeAsSVG(node) {
  const bytes = await node.exportAsync({ format: 'SVG' });
  return decodeUTF8(bytes);
}

/**
 * Analyse SVG string: check if paths/shapes use stroke or fill
 */
function analyseSVG(svgString) {
  const paths = [];
  // Match standard SVG shapes: path, rect, circle, ellipse, line, polyline, polygon
  const shapeRegex = /<(path|rect|circle|ellipse|line|polyline|polygon)([^>]*)>/g;
  let m;
  while ((m = shapeRegex.exec(svgString)) !== null) {
    const attrs = m[2];
    const hasStroke = /stroke(?!-width|-opacity|-linecap|-linejoin|-miterlimit|-dasharray|-dashoffset|None)/.test(attrs) && !/stroke="none"/i.test(attrs);
    const hasFill = /fill(?!-rule|-opacity|="none")/.test(attrs) && !/fill="none"/i.test(attrs);
    const strokeWidth = (attrs.match(/stroke-width="([^"]+)"/) || [])[1];
    paths.push({ hasStroke, hasFill, strokeWidth, attrs: attrs.trim() });
  }
  return paths;
}

// ─── Analysis Runner ─────────────────────────────────────────────────────────

async function runAnalysis(requestId, strictMode) {
  try {
    const sel = figma.currentPage.selection;
    if (sel.length === 0) {
      figma.ui.postMessage({ type: 'SELECTION_EMPTY', requestId });
      return;
    }

    const root = sel[0];
    const vectors = collectVectorNodes(root);

    if (vectors.length === 0) {
      figma.ui.postMessage({ type: 'SELECTION_NO_VECTORS', nodeName: root.name, requestId });
      return;
    }

    // Diagnose each vector
    const diagnostics = vectors.map(v => {
      const diag = diagnoseVector(v, strictMode);
      return Object.assign({
        id: v.id,
        name: v.name,
      }, diag);
    });

    // Also export as SVG and analyse output
    let svgAnalysis = [];
    try {
      const svg = await exportNodeAsSVG(root);
      svgAnalysis = analyseSVG(svg);
    } catch (e) {
      svgAnalysis = [];
    }

    const originalsCount = collectOriginalNodes(root).length;

    figma.ui.postMessage({
      type: 'ANALYSIS_RESULT',
      nodeName: root.name,
      vectorCount: vectors.length,
      diagnostics,
      svgAnalysis,
      originalsCount,
      requestId,
      strictMode,
    });
  } catch (err) {
    figma.ui.postMessage({ type: 'ERROR', message: 'Analysis failed: ' + err.message, requestId });
  }
}

// ─── Message handler ─────────────────────────────────────────────────────────

figma.showUI(__html__, { width: 400, height: 560, title: 'Solar Icon Fixer' });

let ignoreSelectionChange = false;

// Automatically update analysis when selection changes
figma.on('selectionchange', () => {
  if (ignoreSelectionChange) return;
  figma.ui.postMessage({ type: 'SELECTION_CHANGED' });
});

figma.ui.onmessage = async (msg) => {
  try {
    // ── UI READY ─────────────────────────────────────────────────────
    if (msg.type === 'UI_READY') {
      const strict = await figma.clientStorage.getAsync('strictMode') || false;
      figma.ui.postMessage({ type: 'INIT_SETTINGS', strictMode: strict });
      await runAnalysis(msg.requestId, strict);
    }

    // ── ANALYSE ──────────────────────────────────────────────────────
    if (msg.type === 'ANALYSE') {
      await runAnalysis(msg.requestId, msg.strictMode);
    }

    // ── REBUILD ───────────────────────────────────────────────────────
    if (msg.type === 'REBUILD') {
      ignoreSelectionChange = true;
      try {
        const sel = figma.currentPage.selection;
        if (sel.length === 0) {
          figma.ui.postMessage({ type: 'ERROR', message: 'No selection.', requestId: msg.requestId });
          return;
        }

        const root = sel[0];
        const vectors = collectVectorNodes(root);

        if (vectors.length === 0) {
          figma.ui.postMessage({ type: 'ERROR', message: 'No vector nodes found in selection.', requestId: msg.requestId });
          return;
        }

        const results = [];
        const newNodes = [];
        for (const v of vectors) {
          const r = await rebuildVector(v);
          results.push(Object.assign({ name: v.name }, r));
          if (r.success && r.newNode) {
            newNodes.push(r.newNode);
          }
        }

        // Keep the selection on the root or update to the new nodes
        if (root.type === 'FRAME' || root.type === 'GROUP' || root.type === 'COMPONENT') {
          figma.currentPage.selection = [root];
        } else if (newNodes.length > 0) {
          figma.currentPage.selection = newNodes;
        }

        // Re-export after fix to verify
        let svgAfter = [];
        let svgString = "";
        try {
          const newSel = figma.currentPage.selection;
          if (newSel.length > 0) {
            svgString = await exportNodeAsSVG(newSel[0]);
            svgAfter = analyseSVG(svgString);
          }
        } catch (e) {}

        const originalsCount = collectOriginalNodes(root).length;

        figma.ui.postMessage({
          type: 'REBUILD_RESULT',
          results: results.map(r => {
            const copy = Object.assign({}, r);
            delete copy.newNode;
            return copy;
          }),
          svgAfter,
          svg: svgString,
          originalsCount,
          requestId: msg.requestId,
        });
      } finally {
        ignoreSelectionChange = false;
      }
    }

    // ── PREVIEW SVG ──────────────────────────────────────────────────────────
    if (msg.type === 'PREVIEW') {
      const sel = figma.currentPage.selection;
      if (sel.length === 0) {
        figma.ui.postMessage({ type: 'ERROR', message: 'No selection.', requestId: msg.requestId });
        return;
      }
      try {
        const svg = await exportNodeAsSVG(sel[0]);
        const analysis = analyseSVG(svg);
        figma.ui.postMessage({ type: 'PREVIEW_RESULT', svg, analysis, requestId: msg.requestId });
      } catch (e) {
        figma.ui.postMessage({ type: 'ERROR', message: `Export failed: ${e.message}`, requestId: msg.requestId });
      }
    }

    // ── CLEAN ORIGINALS ──────────────────────────────────────────────────────
    if (msg.type === 'CLEAN_ORIGINALS') {
      ignoreSelectionChange = true;
      try {
        const sel = figma.currentPage.selection;
        if (sel.length === 0) {
          figma.ui.postMessage({ type: 'ERROR', message: 'No selection.', requestId: msg.requestId });
          return;
        }

        const root = sel[0];
        const originals = collectOriginalNodes(root);

        if (originals.length === 0) {
          figma.ui.postMessage({ type: 'ERROR', message: 'No hidden original layers found in selection.', requestId: msg.requestId });
          return;
        }

        for (const node of originals) {
          node.remove();
        }

        // Re-run analysis to update the UI
        await runAnalysis(msg.requestId, msg.strictMode);
      } finally {
        ignoreSelectionChange = false;
      }
    }

    // ── SAVE SETTING ─────────────────────────────────────────────────────────
    if (msg.type === 'SAVE_SETTING') {
      await figma.clientStorage.setAsync(msg.key, msg.value);
    }

    if (msg.type === 'CLOSE') {
      figma.closePlugin();
    }
  } catch (err) {
    figma.ui.postMessage({ type: 'ERROR', message: 'Plugin crashed: ' + err.message, requestId: msg.requestId });
  }
};s91