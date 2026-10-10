// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjE1LjUxMTciIGN5PSIxOSIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoOTAgMTUuNTExNyAxOSkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIG9wYWNpdHk9IjAuNSIgY3g9IjE1LjUxMTciIGN5PSIxMiIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoOTAgMTUuNTExNyAxMikiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSIxNS40OTYxIiBjeT0iNSIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoOTAgMTUuNDk2MSA1KSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjguNTAzOTEiIGN5PSIxOSIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoOTAgOC41MDM5MSAxOSkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIG9wYWNpdHk9IjAuNSIgY3g9IjguNTAzOTEiIGN5PSIxMiIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoOTAgOC41MDM5MSAxMikiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSI4LjQ4ODI4IiBjeT0iNSIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoOTAgOC40ODgyOCA1KSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class GripVerticalLineDuotoneIcon extends StatelessWidget {
  /// Creates the `grip-vertical` icon in the lineDuotone style.
  const GripVerticalLineDuotoneIcon({
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
    name: 'grip-vertical',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="15.5117" cy="19" r="0.75" transform="rotate(90 15.5117 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15.4961" cy="5" r="0.75" transform="rotate(90 15.4961 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.50391" cy="19" r="0.75" transform="rotate(90 8.50391 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.48828" cy="5" r="0.75" transform="rotate(90 8.48828 5)" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="15.5117" cy="12" r="0.75" transform="rotate(90 15.5117 12)" stroke="currentColor" stroke-linecap="round"/>

<circle opacity="0.5" cx="8.50391" cy="12" r="0.75" transform="rotate(90 8.50391 12)" stroke="currentColor" stroke-linecap="round"/>''',
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
