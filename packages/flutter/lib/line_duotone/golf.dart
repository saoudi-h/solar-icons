// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxlbGxpcHNlIG9wYWNpdHk9IjAuNSIgY3g9IjEyIiBjeT0iMTguNSIgcng9IjEwIiByeT0iMy41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDE4VjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTEuOTk5OCAzLjVMMTcuNDIyMSA2LjIxMTE0QzE4Ljk4MzIgNi45OTE2OSAxOS43NjM4IDcuMzgxOTYgMTkuNzYzOCA4QzE5Ljc2MzggOC42MTgwNCAxOC45ODMyIDkuMDA4MzEgMTcuNDIyMSA5Ljc4ODg2TDExLjk5OTggMTIuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class GolfLineDuotoneIcon extends StatelessWidget {
  /// Creates the `golf` icon in the lineDuotone style.
  const GolfLineDuotoneIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Width and height.
  final double? size;

  /// Primary color.
  final Color? color;

  /// Stroke width for stroked styles.
  final double? strokeWidth;

  /// Accent color for duotone styles.
  final Color? secondaryColor;

  /// Accent opacity for duotone styles, from 0 to 1.
  final double? secondaryOpacity;

  /// Accessibility label.
  final String? semanticLabel;

  /// When true, ignores [SolarProvider] and [IconTheme].
  final bool isolated;

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'golf',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M12 18V2" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.9998 3.5L17.4221 6.21114C18.9832 6.99169 19.7638 7.38196 19.7638 8C19.7638 8.61804 18.9832 9.00831 17.4221 9.78886L11.9998 12.5" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<ellipse opacity="0.5" cx="12" cy="18.5" rx="10" ry="3.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  SolarIconData get _data => data;

  @override
  Widget build(BuildContext context) {
    return SolarIcon(
      _data,
      size: size,
      color: color,
      strokeWidth: strokeWidth,
      secondaryColor: secondaryColor,
      secondaryOpacity: secondaryOpacity,
      semanticLabel: semanticLabel,
      isolated: isolated,
    );
  }
}
