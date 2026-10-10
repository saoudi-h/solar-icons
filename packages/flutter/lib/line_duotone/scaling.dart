// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `scaling` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTEuMDAwMiAyQzYuOTQ1MTggMi4wMDczIDQuODIxNzQgMi4xMDY4NiAzLjQ2NDcxIDMuNDYzODlDMi4wMDAyNCA0LjkyODM1IDIuMDAwMjQgNy4yODUzOCAyLjAwMDI0IDExLjk5OTRDMi4wMDAyNCAxNi43MTM1IDIuMDAwMjQgMTkuMDcwNSAzLjQ2NDcxIDIwLjUzNUM0LjkyOTE4IDIxLjk5OTQgNy4yODYyIDIxLjk5OTQgMTIuMDAwMiAyMS45OTk0QzE2LjcxNDMgMjEuOTk5NCAxOS4wNzEzIDIxLjk5OTQgMjAuNTM1OCAyMC41MzVDMjEuODkyOCAxOS4xNzc5IDIxLjk5MjQgMTcuMDU0NSAyMS45OTk3IDEyLjk5OTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTMgMTFMMjIgMk0yMiA3LjM0Mzc1VjJIMTYuNjU2Mk0yMSAzTDEyIDEyTTEyIDhWMTJIMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class ScalingLineDuotoneIcon extends StatelessWidget {
  /// Creates the `scaling` icon in the lineDuotone style.
  const ScalingLineDuotoneIcon({
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
    name: 'scaling',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13 11L22 2M22 7.34375V2H16.6562M21 3L12 12M12 8V12H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.0002 2C6.94518 2.0073 4.82174 2.10686 3.46471 3.46389C2.00024 4.92835 2.00024 7.28538 2.00024 11.9994C2.00024 16.7135 2.00024 19.0705 3.46471 20.535C4.92918 21.9994 7.2862 21.9994 12.0002 21.9994C16.7143 21.9994 19.0713 21.9994 20.5358 20.535C21.8928 19.1779 21.9924 17.0545 21.9997 12.9994" stroke="currentColor" stroke-linecap="round"/>''',
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
