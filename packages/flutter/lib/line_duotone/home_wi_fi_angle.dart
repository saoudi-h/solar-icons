// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `home-wi-fi-angle` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMi4zNjQwNyAxMi45NTc5QzEuOTg0NjMgMTAuMzIwOCAxLjc5NDkxIDkuMDAyMjkgMi4zMzUzNyA3Ljg3NDk1QzIuODc1ODMgNi43NDc2IDQuMDI2MTkgNi4wNjIzNCA2LjMyNjkxIDQuNjkxODFMNy43MTE3NSAzLjg2Njg3QzkuODAxMDQgMi42MjIyOSAxMC44NDU3IDIgMTIgMkMxMy4xNTQzIDIgMTQuMTk5IDIuNjIyMjkgMTYuMjg4MiAzLjg2Njg3TDE3LjY3MzEgNC42OTE4MUMxOS45NzM4IDYuMDYyMzQgMjEuMTI0MiA2Ljc0NzYgMjEuNjY0NiA3Ljg3NDk1QzIyLjIwNTEgOS4wMDIyOSAyMi4wMTU0IDEwLjMyMDggMjEuNjM1OSAxMi45NTc5TDIxLjM1NzIgMTQuODk1MkMyMC44Njk3IDE4LjI4MjcgMjAuNjI2IDE5Ljk3NjQgMTkuNDUxIDIwLjk4ODJDMTguMjc1OSAyMiAxNi41NTI2IDIyIDEzLjEwNjEgMjJIMTAuODkzOUM3LjQ0NzM3IDIyIDUuNzI0MDkgMjIgNC41NDkwMyAyMC45ODgyQzMuMzczOTYgMTkuOTc2NCAzLjEzMDI1IDE4LjI4MjcgMi42NDI4NCAxNC44OTUyTDIuMzY0MDcgMTIuOTU3OVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNiAxMS42ODI1QzkuMzEzNzEgOC4xMDU4MyAxNC42ODYzIDguMTA1ODMgMTggMTEuNjgyNU04LjAwMDAyIDEzLjg0MUMxMC4yMDkyIDExLjQ1NjYgMTMuNzkwOSAxMS40NTY2IDE2IDEzLjg0MU0xMCAxNkMxMS4xMDQ2IDE0LjgwNzggMTIuODk1NSAxNC44MDc4IDE0IDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class HomeWiFiAngleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `home-wi-fi-angle` icon in the lineDuotone style.
  const HomeWiFiAngleLineDuotoneIcon({
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
    name: 'home-wi-fi-angle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M6 11.6825C9.31371 8.10583 14.6863 8.10583 18 11.6825M8.00002 13.841C10.2092 11.4566 13.7909 11.4566 16 13.841M10 16C11.1046 14.8078 12.8955 14.8078 14 16" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.36407 12.9579C1.98463 10.3208 1.79491 9.00229 2.33537 7.87495C2.87583 6.7476 4.02619 6.06234 6.32691 4.69181L7.71175 3.86687C9.80104 2.62229 10.8457 2 12 2C13.1543 2 14.199 2.62229 16.2882 3.86687L17.6731 4.69181C19.9738 6.06234 21.1242 6.7476 21.6646 7.87495C22.2051 9.00229 22.0154 10.3208 21.6359 12.9579L21.3572 14.8952C20.8697 18.2827 20.626 19.9764 19.451 20.9882C18.2759 22 16.5526 22 13.1061 22H10.8939C7.44737 22 5.72409 22 4.54903 20.9882C3.37396 19.9764 3.13025 18.2827 2.64284 14.8952L2.36407 12.9579Z" stroke="currentColor" stroke-linecap="round"/>''',
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
