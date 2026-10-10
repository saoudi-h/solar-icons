// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tuning-3` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSIxMiIgcj0iMiIgdHJhbnNmb3JtPSJyb3RhdGUoMTgwIDEyIDEyKSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjIwIiBjeT0iMTQiIHI9IjIiIHRyYW5zZm9ybT0icm90YXRlKDE4MCAyMCAxNCkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSIyIiBjeT0iMiIgcj0iMiIgdHJhbnNmb3JtPSJtYXRyaXgoLTEgOC43NDIyOGUtMDggOC43NDIyOGUtMDggMSA2IDgpIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTQgMTJMNCAxNC43NU00IDE5TDQgMTcuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMCAxMkwyMCA5LjI1TTIwIDVMMjAgNi41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDE5TDEyIDE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIwIDE5TDIwIDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTQgNUw0IDcuNjY2NjciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTBWNy41TTEyIDVWNS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Tuning3BrokenIcon extends StatelessWidget {
  /// Creates the `tuning-3` icon in the broken style.
  const Tuning3BrokenIcon({
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
    name: 'tuning-3',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="12" r="2" transform="rotate(180 12 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="20" cy="14" r="2" transform="rotate(180 20 14)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="2" cy="2" r="2" transform="matrix(-1 8.74228e-08 8.74228e-08 1 6 8)" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 12L4 14.75M4 19L4 17.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 12L20 9.25M20 5L20 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19L12 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 19L20 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 5L4 7.66667" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 10V7.5M12 5V5.5" stroke="currentColor" stroke-linecap="round"/>''',
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
