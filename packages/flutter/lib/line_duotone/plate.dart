// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `plate` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTUgNC4wMDA5OEMxOC4xMTQzIDQuMDEwMDkgMTkuNzY1MyA0LjEwODUzIDIwLjgyODQgNS4xNzE2MkMyMiA2LjM0MzE5IDIyIDguMjI4ODEgMjIgMTJDMjIgMTUuNzcxMyAyMiAxNy42NTY5IDIwLjgyODQgMTguODI4NUMxOS42NTY5IDIwIDE3Ljc3MTIgMjAgMTQgMjBIMTBDNi4yMjg3NiAyMCA0LjM0MzE1IDIwIDMuMTcxNTcgMTguODI4NUMyIDE3LjY1NjkgMiAxNS43NzEzIDIgMTJDMiA4LjIyODgxIDIgNi4zNDMxOSAzLjE3MTU3IDUuMTcxNjJDNC4yMzQ2NyA0LjEwODUzIDUuODg1NyA0LjAxMDA5IDkgNC4wMDA5OCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiA1TDEyIDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCAxMC41SDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggMTRIMTMuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class PlateLineDuotoneIcon extends StatelessWidget {
  /// Creates the `plate` icon in the lineDuotone style.
  const PlateLineDuotoneIcon({
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
    name: 'plate',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 5L12 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 10.5H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 14H13.5" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15 4.00098C18.1143 4.01009 19.7653 4.10853 20.8284 5.17162C22 6.34319 22 8.22881 22 12C22 15.7713 22 17.6569 20.8284 18.8285C19.6569 20 17.7712 20 14 20H10C6.22876 20 4.34315 20 3.17157 18.8285C2 17.6569 2 15.7713 2 12C2 8.22881 2 6.34319 3.17157 5.17162C4.23467 4.10853 5.8857 4.01009 9 4.00098" stroke="currentColor" stroke-linecap="round"/>''',
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
