import 'package:flutter/widgets.dart';

import 'solar_icon_data.dart';

/// Builds a standalone SVG document for [data].
///
/// Primary shapes use [color]. The duotone accent uses [secondaryColor] and
/// [secondaryOpacity]. Stroked shapes that omitted the catalogue default
/// width pick up [strokeWidth].
String composeSolarSvg(
  SolarIconData data, {
  required Color color,
  required double strokeWidth,
  required Color secondaryColor,
  required double secondaryOpacity,
}) {
  final accent = data.accent;
  final accentMarkup = accent == null
      ? ''
      : _paintFragment(
          accent,
          color: secondaryColor,
          strokeWidth: strokeWidth,
          layerOpacity: secondaryOpacity,
        );
  final bodyMarkup = _paintFragment(
    data.body,
    color: color,
    strokeWidth: strokeWidth,
  );
  return '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" '
      'viewBox="0 0 24 24" fill="none">$accentMarkup$bodyMarkup</svg>';
}

String _paintFragment(
  String fragment, {
  required Color color,
  required double strokeWidth,
  double? layerOpacity,
}) {
  var painted = fragment.replaceAll('currentColor', _hex(color));
  painted = _applyStrokeWidth(painted, strokeWidth);
  if (layerOpacity != null) {
    painted = painted.replaceAll(
      'opacity="0.5"',
      'opacity="${_formatNumber(layerOpacity)}"',
    );
  }
  return _wrapAlpha(painted, color);
}

String _applyStrokeWidth(String fragment, double strokeWidth) {
  if (!fragment.contains('stroke=')) return fragment;
  final width = _formatNumber(strokeWidth);
  final buffer = StringBuffer();
  var start = 0;
  while (true) {
    final open = fragment.indexOf('<', start);
    if (open < 0) {
      buffer.write(fragment.substring(start));
      break;
    }
    buffer.write(fragment.substring(start, open));
    final close = fragment.indexOf('>', open);
    if (close < 0) {
      buffer.write(fragment.substring(open));
      break;
    }
    buffer.write(
      _tagWithStrokeWidth(fragment.substring(open, close + 1), width),
    );
    start = close + 1;
  }
  return buffer.toString();
}

String _tagWithStrokeWidth(String tag, String width) {
  if (tag.startsWith('</') ||
      !tag.contains('stroke=') ||
      tag.contains('stroke-width=')) {
    return tag;
  }
  if (tag.endsWith('/>')) {
    return '${tag.substring(0, tag.length - 2)} stroke-width="$width"/>';
  }
  return '${tag.substring(0, tag.length - 1)} stroke-width="$width">';
}

String _wrapAlpha(String fragment, Color color) {
  final alpha = ((color.toARGB32() >> 24) & 0xFF) / 255;
  if (alpha >= 0.999) return fragment;
  return '<g opacity="${_formatNumber(alpha)}">$fragment</g>';
}

String _hex(Color color) {
  final rgb = color.toARGB32() & 0xFFFFFF;
  return '#${rgb.toRadixString(16).padLeft(6, '0')}';
}

String _formatNumber(double value) {
  var text = value.toStringAsFixed(4);
  text = text.replaceFirst(RegExp(r'0+$'), '');
  text = text.replaceFirst(RegExp(r'\.$'), '');
  return text;
}
