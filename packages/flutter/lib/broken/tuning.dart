// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tuning` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0IDE0LjVDMTQgMTIuODQzMSAxNS4zNDMxIDExLjUgMTcgMTEuNUMxOC42NTY5IDExLjUgMjAgMTIuODQzMSAyMCAxNC41QzIwIDE2LjE1NjkgMTguNjU2OSAxNy41IDE3IDE3LjVDMTUuMzQzMSAxNy41IDE0IDE2LjE1NjkgMTQgMTQuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNCA5LjVDNCAxMS4xNTY5IDUuMzQzMTUgMTIuNSA3IDEyLjVDOC42NTY4NSAxMi41IDEwIDExLjE1NjkgMTAgOS41QzEwIDcuODQzMTUgOC42NTY4NSA2LjUgNyA2LjVDNS4zNDMxNSA2LjUgNCA3Ljg0MzE1IDQgOS41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik03LjAwMDAxIDEzTDcgMThNNy4wMDAwMSAyMS4wMDAxTDcuMDAwMDEgMjIuMDAwMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNyAxMS4wMDAxTDE3IDYuMDAwMU0xNyAzLjAwMDAyTDE3IDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTcgMjJMMTcgMTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNyAyTDcgNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class TuningBrokenIcon extends StatelessWidget {
  /// Creates the `tuning` icon in the broken style.
  const TuningBrokenIcon({
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
    name: 'tuning',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14 14.5C14 12.8431 15.3431 11.5 17 11.5C18.6569 11.5 20 12.8431 20 14.5C20 16.1569 18.6569 17.5 17 17.5C15.3431 17.5 14 16.1569 14 14.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 9.5C4 11.1569 5.34315 12.5 7 12.5C8.65685 12.5 10 11.1569 10 9.5C10 7.84315 8.65685 6.5 7 6.5C5.34315 6.5 4 7.84315 4 9.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.00001 13L7 18M7.00001 21.0001L7.00001 22.0001" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 11.0001L17 6.0001M17 3.00002L17 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 22L17 18" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 2L7 6" stroke="currentColor" stroke-linecap="round"/>''',
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
