// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grid-2x2-close` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE1LjM3ODYgMTUuMzc4N0wxNy41IDE3LjVNMTcuNSAxNy41TDE5LjYyMTMgMTkuNjIxM00xNy41IDE3LjVMMTkuNjIxMyAxNS4zNzg3TTE3LjUgMTcuNUwxNS4zNzg2IDE5LjYyMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYuNTUwMSAyLjA4ODU2QzE1LjMzNzUgMiAxMy44NTAzIDIgMTIgMkM3LjI4NTk1IDIgNC45Mjg5MyAyIDMuNDY0NDcgMy40NjQ0N0MyIDQuOTI4OTMgMiA3LjI4NTk1IDIgMTJDMiAxNi43MTQgMiAxOS4wNzExIDMuNDY0NDcgMjAuNTM1NUM0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTIgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIuMDAwMSAxMS45OTk5QzIyLjAwMDEgNy4yODU4NCAyMi4wMDAxIDQuOTI4ODIgMjAuNTM1NiAzLjQ2NDM2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDEySDEwTTIgMTJINiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMi4wMDQ5IDIyLjAwNDlMMTIuMDA0OSAyLjAwNDg4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Grid2x2CloseBrokenIcon extends StatelessWidget {
  /// Creates the `grid-2x2-close` icon in the broken style.
  const Grid2x2CloseBrokenIcon({
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
    name: 'grid-2x2-close',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15.3786 15.3787L17.5 17.5M17.5 17.5L19.6213 19.6213M17.5 17.5L19.6213 15.3787M17.5 17.5L15.3786 19.6213" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5501 2.08856C15.3375 2 13.8503 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M22.0001 11.9999C22.0001 7.28584 22.0001 4.92882 20.5356 3.46436" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12H10M2 12H6" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0049 22.0049L12.0049 2.00488" stroke="currentColor" stroke-linecap="round"/>''',
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
