// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `revote` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQuMzE4MDIgNC4wNjQ3NkMzIDUuNDAyNzcgMyA3LjU1NjI4IDMgMTEuODYzM0MzIDE2LjE3MDMgMyAxOC4zMjM4IDQuMzE4MDIgMTkuNjYxOEM1LjYzNjA0IDIwLjk5OTggNy43NTczNiAyMC45OTk4IDEyIDIwLjk5OThDMTYuMjQyNiAyMC45OTk4IDE4LjM2NCAyMC45OTk4IDE5LjY4MiAxOS42NjE4QzIwLjk4NiAxOC4zMzggMjAuOTk5OSAxNi4yMTYgMjEgMTEuOTk5OE04LjQgMi43NzcwOEM5LjM5NDg3IDIuNzI2NzQgMTAuNTc4MyAyLjcyNjc0IDEyIDIuNzI2NzRDMTYuMjQyNiAyLjcyNjc0IDE4LjM2NCAyLjcyNjc0IDE5LjY4MiA0LjA2NDc2QzIwLjUyNzUgNC45MjMxIDIwLjgzMDYgNi4xMTcwNSAyMC45MzkzIDcuOTk5ODRNMTAuMTUwNCAxTDguNCAyLjc3NzA4TDEwLjE1MDQgNC41NTQwNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik04LjUgMTIuNUwxMC41IDE0LjVMMTUuNSA5LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class RevoteBrokenIcon extends StatelessWidget {
  /// Creates the `revote` icon in the broken style.
  const RevoteBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4.31802 4.06476C3 5.40277 3 7.55628 3 11.8633C3 16.1703 3 18.3238 4.31802 19.6618C5.63604 20.9998 7.75736 20.9998 12 20.9998C16.2426 20.9998 18.364 20.9998 19.682 19.6618C20.986 18.338 20.9999 16.216 21 11.9998M8.4 2.77708C9.39487 2.72674 10.5783 2.72674 12 2.72674C16.2426 2.72674 18.364 2.72674 19.682 4.06476C20.5275 4.9231 20.8306 6.11705 20.9393 7.99984M10.1504 1L8.4 2.77708L10.1504 4.55405" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8.5 12.5L10.5 14.5L15.5 9.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
