// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik02LjMzMTQ4IDYuMDI4MzRDNi4xMTY3MSA2LjY0NTg3IDYgNy4zMDkzMSA2IDhDNiAxMS4zMTM3IDguNjg2MjkgMTQgMTIgMTRDMTUuMzEzNyAxNCAxOCAxMS4zMTM3IDE4IDhDMTggNC42ODYyOSAxNS4zMTM3IDIgMTIgMkMxMC45MjgzIDIgOS45MjIyOSAyLjI4MDk2IDkuMDUxNTEgMi43NzMyMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMy41Nzk4IDEzLjc4OThDMTMuODUwOSAxNC40NzM4IDE0IDE1LjIxOTUgMTQgMTZDMTQgMTkuMzEzNyAxMS4zMTM3IDIyIDcuOTk5OTUgMjJDNy4zMjUzNSAyMiA2LjY3Njc2IDIxLjg4ODYgNi4wNzE1MyAyMS42ODMzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIuNzA4MzUgMTguODMwNkMyLjI1NjM1IDE3Ljk4NzQgMiAxNy4wMjM2IDIgMTUuOTk5OUMyIDEzLjIzMyAzLjg3Mjk0IDEwLjkwMzUgNi40MjAxOCAxMC4yMTAxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDIwLjQ3MjJDMTMuMDYxNSAyMS40MjIzIDE0LjQ2MzMgMjIgMTYuMDAwMSAyMkMxOS4zMTM4IDIyIDIyLjAwMDEgMTkuMzEzOCAyMi4wMDAxIDE2QzIyLjAwMDEgMTMuMjMzMSAyMC4xMjcxIDEwLjkwMzYgMTcuNTc5OSAxMC4yMTAyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class FiltersBrokenIcon extends StatelessWidget {
  /// Creates the `filters` icon in the broken style.
  const FiltersBrokenIcon({
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
    name: 'filters',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M6.33148 6.02834C6.11671 6.64587 6 7.30931 6 8C6 11.3137 8.68629 14 12 14C15.3137 14 18 11.3137 18 8C18 4.68629 15.3137 2 12 2C10.9283 2 9.92229 2.28096 9.05151 2.77323" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5798 13.7898C13.8509 14.4738 14 15.2195 14 16C14 19.3137 11.3137 22 7.99995 22C7.32535 22 6.67676 21.8886 6.07153 21.6833" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.70835 18.8306C2.25635 17.9874 2 17.0236 2 15.9999C2 13.233 3.87294 10.9035 6.42018 10.2101" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 20.4722C13.0615 21.4223 14.4633 22 16.0001 22C19.3138 22 22.0001 19.3138 22.0001 16C22.0001 13.2331 20.1271 10.9036 17.5799 10.2102" stroke="currentColor" stroke-linecap="round"/>''',
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
