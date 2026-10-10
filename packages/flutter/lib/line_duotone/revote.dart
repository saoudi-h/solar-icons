// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `revote` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNC4zMTgwMiA0LjA2NDc2QzMgNS40MDI3NyAzIDcuNTU2MjggMyAxMS44NjMzQzMgMTYuMTcwMyAzIDE4LjMyMzggNC4zMTgwMiAxOS42NjE4QzUuNjM2MDQgMjAuOTk5OCA3Ljc1NzM2IDIwLjk5OTggMTIgMjAuOTk5OEMxNi4yNDI2IDIwLjk5OTggMTguMzY0IDIwLjk5OTggMTkuNjgyIDE5LjY2MThDMjEgMTguMzIzOCAyMSAxNi4xNzAzIDIxIDExLjg2MzNDMjEgNy41NTYyOCAyMSA1LjQwMjc3IDE5LjY4MiA0LjA2NDc2QzE4LjM2NCAyLjcyNjc0IDE2LjI0MjYgMi43MjY3NCAxMiAyLjcyNjc0QzEwLjU3ODMgMi43MjY3NCA5LjM5NDg3IDIuNzI2NzQgOC40IDIuNzc3MDhNMTAuMTUwNCAxTDguNCAyLjc3NzA4TDEwLjE1MDQgNC41NTQwNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik04LjUgMTIuNUwxMC41IDE0LjVMMTUuNSA5LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class RevoteLineDuotoneIcon extends StatelessWidget {
  /// Creates the `revote` icon in the lineDuotone style.
  const RevoteLineDuotoneIcon({
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
    name: 'revote',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8.5 12.5L10.5 14.5L15.5 9.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.31802 4.06476C3 5.40277 3 7.55628 3 11.8633C3 16.1703 3 18.3238 4.31802 19.6618C5.63604 20.9998 7.75736 20.9998 12 20.9998C16.2426 20.9998 18.364 20.9998 19.682 19.6618C21 18.3238 21 16.1703 21 11.8633C21 7.55628 21 5.40277 19.682 4.06476C18.364 2.72674 16.2426 2.72674 12 2.72674C10.5783 2.72674 9.39487 2.72674 8.4 2.77708M10.1504 1L8.4 2.77708L10.1504 4.55405" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
