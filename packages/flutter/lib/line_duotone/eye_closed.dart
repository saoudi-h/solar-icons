// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `eye-closed` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgN0MyIDcgNSAxNCAxMiAxNEMxMy4zNCAxNCAxNC41MzM0IDEzLjc0MzUgMTUuNTg3MiAxMy4zMjg3QzE2Ljk1NDcgMTIuNzkwNCAxOC4wODcyIDExLjk4NTYgMTkgMTEuMTI4OEMyMS4wNTg2IDkuMTk2NjEgMjIgNyAyMiA3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMTQuMDAwMVYxNi41MDAxTTE1LjU4NzIgMTMuMzI4OEwxNyAxNS41MDAxTTguNDEyODEgMTMuMzI4OEw3IDE1LjUwMDFNMTkgMTEuMTI4OUwyMC41IDEyLjYyODlNNSAxMS4xMjg5TDMuNSAxMi42Mjg5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class EyeClosedLineDuotoneIcon extends StatelessWidget {
  /// Creates the `eye-closed` icon in the lineDuotone style.
  const EyeClosedLineDuotoneIcon({
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
    name: 'eye-closed',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 7C2 7 5 14 12 14C13.34 14 14.5334 13.7435 15.5872 13.3287C16.9547 12.7904 18.0872 11.9856 19 11.1288C21.0586 9.19661 22 7 22 7" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 14.0001V16.5001M15.5872 13.3288L17 15.5001M8.41281 13.3288L7 15.5001M19 11.1289L20.5 12.6289M5 11.1289L3.5 12.6289" stroke="currentColor" stroke-linecap="round"/>''',
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
