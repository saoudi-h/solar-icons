// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `shield-minimalistic` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMgMTAuNDE2N0MzIDcuMjE5MDcgMyA1LjYyMDI4IDMuMzc3NTIgNS4wODI0MUMzLjc1NTAzIDQuNTQ0NTQgNS4yNTgzMiA0LjAyOTk2IDguMjY0OTEgMy4wMDA3OUw4LjgzNzcyIDIuODA0NzJDMTAuNDA1IDIuMjY4MjQgMTEuMTg4NiAyIDEyIDJDMTIuODExNCAyIDEzLjU5NSAyLjI2ODI0IDE1LjE2MjMgMi44MDQ3MkwxNS43MzUxIDMuMDAwNzlDMTguNzQxNyA0LjAyOTk2IDIwLjI0NSA0LjU0NDU0IDIwLjYyMjUgNS4wODI0MUMyMSA1LjYyMDI4IDIxIDcuMjE5MDcgMjEgMTAuNDE2N0MyMSAxMC44OTk2IDIxIDExLjQyMzQgMjEgMTEuOTkxNEMyMSAxNy42Mjk0IDE2Ljc2MSAyMC4zNjU1IDE0LjEwMTQgMjEuNTI3M0MxMy4zOCAyMS44NDI0IDEzLjAxOTMgMjIgMTIgMjJDMTAuOTgwNyAyMiAxMC42MiAyMS44NDI0IDkuODk4NTYgMjEuNTI3M0M3LjIzODk2IDIwLjM2NTUgMyAxNy42Mjk0IDMgMTEuOTkxNEMzIDExLjQyMzQgMyAxMC44OTk2IDMgMTAuNDE2N1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class ShieldMinimalisticLinearIcon extends StatelessWidget {
  /// Creates the `shield-minimalistic` icon in the linear style.
  const ShieldMinimalisticLinearIcon({
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
    name: 'shield-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3 10.4167C3 7.21907 3 5.62028 3.37752 5.08241C3.75503 4.54454 5.25832 4.02996 8.26491 3.00079L8.83772 2.80472C10.405 2.26824 11.1886 2 12 2C12.8114 2 13.595 2.26824 15.1623 2.80472L15.7351 3.00079C18.7417 4.02996 20.245 4.54454 20.6225 5.08241C21 5.62028 21 7.21907 21 10.4167C21 10.8996 21 11.4234 21 11.9914C21 17.6294 16.761 20.3655 14.1014 21.5273C13.38 21.8424 13.0193 22 12 22C10.9807 22 10.62 21.8424 9.89856 21.5273C7.23896 20.3655 3 17.6294 3 11.9914C3 11.4234 3 10.8996 3 10.4167Z" stroke="currentColor" stroke-linecap="round"/>''',
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
