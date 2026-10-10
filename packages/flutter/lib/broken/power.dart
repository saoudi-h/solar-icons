// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `power` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDJWNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04LjUgMy43MDYwNUM1LjI2ODA2IDUuMDcxNTcgMyA4LjI3MDk5IDMgMTIuMDAwMUMzIDE0LjMwNTIgMy44NjY1NiAxNi40MDc5IDUuMjkxNjkgMTguMDAwMk0xNS41IDMuNzA2MDVDMTguNzMxOSA1LjA3MTU3IDIxIDguMjcwOTkgMjEgMTIuMDAwMUMyMSAxNi45NzA3IDE2Ljk3MDYgMjEuMDAwMSAxMiAyMS4wMDAxQzEwLjk0ODEgMjEuMDAwMSA5LjkzODM0IDIwLjgxOTcgOSAyMC40ODgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PowerBrokenIcon extends StatelessWidget {
  /// Creates the `power` icon in the broken style.
  const PowerBrokenIcon({
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
    name: 'power',
    style: SolarIconStyle.broken,
    body: r'''<path d="M12 2V6" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 3.70605C5.26806 5.07157 3 8.27099 3 12.0001C3 14.3052 3.86656 16.4079 5.29169 18.0002M15.5 3.70605C18.7319 5.07157 21 8.27099 21 12.0001C21 16.9707 16.9706 21.0001 12 21.0001C10.9481 21.0001 9.93834 20.8197 9 20.488" stroke="currentColor" stroke-linecap="round"/>''',
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
