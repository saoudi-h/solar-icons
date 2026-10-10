// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `radar` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMTEuOTk5Nkw1LjAwMTk3IDYuMzM1NDZDNC41NzI4NSA1Ljk4ODEzIDMuOTM4NjkgNi4wNTE4MiAzLjYzNTk5IDYuNTEzNUMzLjA2Njc4IDcuMzgxNjMgMi42MjQxMyA4LjM1Mzg5IDIuMzQwNzggOS40MTEzNkMwLjkxMTM2NCAxNC43NDYgNC4wNzcxOSAyMC4yMjk0IDkuNDExODUgMjEuNjU4OEMxNC43NDY1IDIzLjA4ODIgMjAuMjI5OSAxOS45MjI0IDIxLjY1OTMgMTQuNTg3N0MyMy4wODg3IDkuMjUzMDggMTkuOTIyOSAzLjc2OTcxIDE0LjU4ODIgMi4zNDAyOUMxMS45NTU2IDEuNjM0ODkgOS4yODY4NCAyLjA0ODU3IDcuMDg2OSAzLjI4OTcyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDEyTDUuMDAxOTUgNi4zMzU5NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class RadarLineDuotoneIcon extends StatelessWidget {
  /// Creates the `radar` icon in the lineDuotone style.
  const RadarLineDuotoneIcon({
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
    name: 'radar',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 12L5.00195 6.33594" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 11.9996L5.00197 6.33546C4.57285 5.98813 3.93869 6.05182 3.63599 6.5135C3.06678 7.38163 2.62413 8.35389 2.34078 9.41136C0.911364 14.746 4.07719 20.2294 9.41185 21.6588C14.7465 23.0882 20.2299 19.9224 21.6593 14.5877C23.0887 9.25308 19.9229 3.76971 14.5882 2.34029C11.9556 1.63489 9.28684 2.04857 7.0869 3.28972" stroke="currentColor" stroke-linecap="round"/>''',
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
