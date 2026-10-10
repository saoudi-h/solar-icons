// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sofa-2` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTkuOTk5OSAxMEMxOS45OTk5IDkuMDcwNjkgMTkuOTk5OSA4LjYwNjAzIDE5LjkyMyA4LjIxOTY0QzE5LjYwNzQgNi42MzI4OCAxOC4zNjcgNS4zOTI0OSAxNi43ODAyIDUuMDc2ODZDMTYuMzkzOCA1IDE1LjkyOTIgNSAxNC45OTk5IDVIMTEuOTk5OU0xMS45OTk5IDVIOC45OTk4OEM4LjA3MDU3IDUgNy42MDU5MSA1IDcuMjE5NTIgNS4wNzY4NkM1LjYzMjc2IDUuMzkyNDkgNC4zOTIzNiA2LjYzMjg4IDQuMDc2NzQgOC4yMTk2NEM0IDguNjA1NDMgNCA5LjA2OTIzIDQgOS45OTU2MlYxME0xMS45OTk5IDVMMTIgMTRNMjAgMTlWMThNNCAxOVYxOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik01LjU1NTU2IDE4SDE4LjQ0NDRDMjAuNDA4MSAxOCAyMiAxNi40MDgxIDIyIDE0LjQ0NDRWMTJDMjIgMTAuODk1NCAyMS4xMDQ2IDEwIDIwIDEwQzE4Ljg5NTQgMTAgMTggMTAuODk1NCAxOCAxMlYxMy4yQzE4IDEzLjY0MTggMTcuNjQxOCAxNCAxNy4yIDE0SDEySDYuOEM2LjM1ODE3IDE0IDYgMTMuNjQxOCA2IDEzLjJWMTJDNiAxMC44OTU0IDUuMTA0NTcgMTAgNCAxMEMyLjg5NTQzIDEwIDIgMTAuODk1NCAyIDEyVjE0LjQ0NDRDMiAxNi40MDgxIDMuNTkxODggMTggNS41NTU1NiAxOFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class Sofa2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `sofa-2` icon in the lineDuotone style.
  const Sofa2LineDuotoneIcon({
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
    name: 'sofa-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5.55556 18H18.4444C20.4081 18 22 16.4081 22 14.4444V12C22 10.8954 21.1046 10 20 10C18.8954 10 18 10.8954 18 12V13.2C18 13.6418 17.6418 14 17.2 14H12H6.8C6.35817 14 6 13.6418 6 13.2V12C6 10.8954 5.10457 10 4 10C2.89543 10 2 10.8954 2 12V14.4444C2 16.4081 3.59188 18 5.55556 18Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19.9999 10C19.9999 9.07069 19.9999 8.60603 19.923 8.21964C19.6074 6.63288 18.367 5.39249 16.7802 5.07686C16.3938 5 15.9292 5 14.9999 5H11.9999M11.9999 5H8.99988C8.07057 5 7.60591 5 7.21952 5.07686C5.63276 5.39249 4.39236 6.63288 4.07674 8.21964C4 8.60543 4 9.06923 4 9.99562V10M11.9999 5L12 14M20 19V18M4 19V18" stroke="currentColor" stroke-linecap="round"/>''',
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
