// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `monitor` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTAgMkgxNEMxNy43NzEyIDIgMTkuNjU2OSAyIDIwLjgyODQgMy4xNzE1N0MyMiA0LjM0MzE1IDIyIDYuMjI4NzYgMjIgMTBWMTFDMjIgMTEuNTUxNiAyMiAxMi41NDk0IDIxLjk5MzUgMTNIMi4wMDY1MkMyIDEyLjU0OTQgMiAxMS41NTE2IDIgMTFWMTBDMiA2LjIyODc2IDIgNC4zNDMxNSAzLjE3MTU3IDMuMTcxNTdDNC4zNDMxNSAyIDYuMjI4NzYgMiAxMCAyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNNy45ODQ2IDE3LjVDNS4xNDUyOCAxNy41IDMuNzI1NjIgMTcuNSAyLjg0MzU2IDE2LjYyMTNDMi4yNzIwNyAxNi4wNTIgMi4wNzA4NSAxNS4yNTc5IDIgMTRWMTNIMjJWMTRDMjEuOTI5MiAxNS4yNTc5IDIxLjcyNzkgMTYuMDUyIDIxLjE1NjQgMTYuNjIxM0MyMC4yNzQ0IDE3LjUgMTguODU0NyAxNy41IDE2LjAxNTQgMTcuNUgxMi43NTI5VjIxLjVIMTYuMDE1NEMxNi40MzEyIDIxLjUgMTYuNzY4MyAyMS44MzU4IDE2Ljc2ODMgMjIuMjVDMTYuNzY4MyAyMi42NjQyIDE2LjQzMTIgMjMgMTYuMDE1NCAyM0g3Ljk4NDZDNy41Njg3OSAyMyA3LjIzMTcxIDIyLjY2NDIgNy4yMzE3MSAyMi4yNUM3LjIzMTcxIDIxLjgzNTggNy41Njg3OSAyMS41IDcuOTg0NiAyMS41SDExLjI0NzFWMTcuNUg3Ljk4NDZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MonitorBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `monitor` icon in the boldDuotone style.
  const MonitorBoldDuotoneIcon({
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
    name: 'monitor',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7.9846 17.5C5.14528 17.5 3.72562 17.5 2.84356 16.6213C2.27207 16.052 2.07085 15.2579 2 14V13H22V14C21.9292 15.2579 21.7279 16.052 21.1564 16.6213C20.2744 17.5 18.8547 17.5 16.0154 17.5H12.7529V21.5H16.0154C16.4312 21.5 16.7683 21.8358 16.7683 22.25C16.7683 22.6642 16.4312 23 16.0154 23H7.9846C7.56879 23 7.23171 22.6642 7.23171 22.25C7.23171 21.8358 7.56879 21.5 7.9846 21.5H11.2471V17.5H7.9846Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M10 2H14C17.7712 2 19.6569 2 20.8284 3.17157C22 4.34315 22 6.22876 22 10V11C22 11.5516 22 12.5494 21.9935 13H2.00652C2 12.5494 2 11.5516 2 11V10C2 6.22876 2 4.34315 3.17157 3.17157C4.34315 2 6.22876 2 10 2Z" fill="currentColor"/>''',
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
