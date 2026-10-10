// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjUiIGN5PSIxNS41MTE3IiByPSIwLjc1IiB0cmFuc2Zvcm09InJvdGF0ZSgtMTgwIDUgMTUuNTExNykiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIG9wYWNpdHk9IjAuNSIgY3g9IjEyIiBjeT0iMTUuNTExNyIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoLTE4MCAxMiAxNS41MTE3KSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjE5IiBjeT0iMTUuNDk2MSIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoLTE4MCAxOSAxNS40OTYxKSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjUiIGN5PSI4LjUwMzkxIiByPSIwLjc1IiB0cmFuc2Zvcm09InJvdGF0ZSgtMTgwIDUgOC41MDM5MSkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIG9wYWNpdHk9IjAuNSIgY3g9IjEyIiBjeT0iOC41MDM5MSIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoLTE4MCAxMiA4LjUwMzkxKSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjE5IiBjeT0iOC40ODgyOCIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoLTE4MCAxOSA4LjQ4ODI4KSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class GripHorizontalLineDuotoneIcon extends StatelessWidget {
  /// Creates the `grip-horizontal` icon in the lineDuotone style.
  const GripHorizontalLineDuotoneIcon({
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
    name: 'grip-horizontal',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="5" cy="15.5117" r="0.75" transform="rotate(-180 5 15.5117)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19" cy="15.4961" r="0.75" transform="rotate(-180 19 15.4961)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5" cy="8.50391" r="0.75" transform="rotate(-180 5 8.50391)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19" cy="8.48828" r="0.75" transform="rotate(-180 19 8.48828)" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="15.5117" r="0.75" transform="rotate(-180 12 15.5117)" stroke="currentColor" stroke-linecap="round"/>

<circle opacity="0.5" cx="12" cy="8.50391" r="0.75" transform="rotate(-180 12 8.50391)" stroke="currentColor" stroke-linecap="round"/>''',
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
