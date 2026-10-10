// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grip-vertical` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTUuNTEyMiIgY3k9IjE5IiByPSIwLjc1IiB0cmFuc2Zvcm09InJvdGF0ZSg5MCAxNS41MTIyIDE5KSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjE1LjUxMjIiIGN5PSIxMiIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoOTAgMTUuNTEyMiAxMikiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSIxNS40OTYxIiBjeT0iNSIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoOTAgMTUuNDk2MSA1KSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjguNTA0MzkiIGN5PSIxOSIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoOTAgOC41MDQzOSAxOSkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSI4LjUwNDM5IiBjeT0iMTIiIHI9IjAuNzUiIHRyYW5zZm9ybT0icm90YXRlKDkwIDguNTA0MzkgMTIpIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBjeD0iOC40ODgyOCIgY3k9IjUiIHI9IjAuNzUiIHRyYW5zZm9ybT0icm90YXRlKDkwIDguNDg4MjggNSkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class GripVerticalLinearIcon extends StatelessWidget {
  /// Creates the `grip-vertical` icon in the linear style.
  const GripVerticalLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="15.5122" cy="19" r="0.75" transform="rotate(90 15.5122 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15.5122" cy="12" r="0.75" transform="rotate(90 15.5122 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15.4961" cy="5" r="0.75" transform="rotate(90 15.4961 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.50439" cy="19" r="0.75" transform="rotate(90 8.50439 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.50439" cy="12" r="0.75" transform="rotate(90 8.50439 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.48828" cy="5" r="0.75" transform="rotate(90 8.48828 5)" stroke="currentColor" stroke-linecap="round"/>''',
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
