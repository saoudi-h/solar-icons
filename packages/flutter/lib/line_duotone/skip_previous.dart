// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `skip-previous` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTcuMzQwMTYgOS4zNTI1OEM1LjU1MzI4IDEwLjUwNjUgNS41NTMyOCAxMy40OTM1IDcuMzQwMTUgMTQuNjQ3NEwxOC4xMjkyIDIxLjYxNDVDMTkuODY1OCAyMi43MzYgMjIgMjEuMjc2MyAyMiAxOC45NjcxTDIyIDUuMDMyOUMyMiAyLjcyMzY4IDE5Ljg2NTggMS4yNjQwMiAxOC4xMjkyIDIuMzg1NDhMNy4zNDAxNiA5LjM1MjU4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIgNVYxOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class SkipPreviousLineDuotoneIcon extends StatelessWidget {
  /// Creates the `skip-previous` icon in the lineDuotone style.
  const SkipPreviousLineDuotoneIcon({
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
    name: 'skip-previous',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7.34016 9.35258C5.55328 10.5065 5.55328 13.4935 7.34015 14.6474L18.1292 21.6145C19.8658 22.736 22 21.2763 22 18.9671L22 5.0329C22 2.72368 19.8658 1.26402 18.1292 2.38548L7.34016 9.35258Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 5V19" stroke="currentColor" stroke-linecap="round"/>''',
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
