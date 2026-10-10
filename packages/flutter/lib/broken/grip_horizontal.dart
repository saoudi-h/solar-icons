// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grip-horizontal` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iNSIgY3k9IjE1LjUxMTciIHI9IjAuNzUiIHRyYW5zZm9ybT0icm90YXRlKC0xODAgNSAxNS41MTE3KSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTUuNTExNyIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoLTE4MCAxMiAxNS41MTE3KSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjE5IiBjeT0iMTUuNDk2MSIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoLTE4MCAxOSAxNS40OTYxKSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjUiIGN5PSI4LjUwMzkxIiByPSIwLjc1IiB0cmFuc2Zvcm09InJvdGF0ZSgtMTgwIDUgOC41MDM5MSkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSIxMiIgY3k9IjguNTAzOTEiIHI9IjAuNzUiIHRyYW5zZm9ybT0icm90YXRlKC0xODAgMTIgOC41MDM5MSkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSIxOSIgY3k9IjguNDg4MjgiIHI9IjAuNzUiIHRyYW5zZm9ybT0icm90YXRlKC0xODAgMTkgOC40ODgyOCkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class GripHorizontalBrokenIcon extends StatelessWidget {
  /// Creates the `grip-horizontal` icon in the broken style.
  const GripHorizontalBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="5" cy="15.5117" r="0.75" transform="rotate(-180 5 15.5117)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="15.5117" r="0.75" transform="rotate(-180 12 15.5117)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19" cy="15.4961" r="0.75" transform="rotate(-180 19 15.4961)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5" cy="8.50391" r="0.75" transform="rotate(-180 5 8.50391)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="8.50391" r="0.75" transform="rotate(-180 12 8.50391)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19" cy="8.48828" r="0.75" transform="rotate(-180 19 8.48828)" stroke="currentColor" stroke-linecap="round"/>''',
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
