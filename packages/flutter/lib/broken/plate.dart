// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `plate` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDEyQzIyIDE1Ljc3MTMgMjIgMTcuNjU2OSAyMC44Mjg0IDE4LjgyODVDMTkuNjU2OSAyMCAxNy43NzEyIDIwIDE0IDIwSDEwQzYuMjI4NzYgMjAgNC4zNDMxNSAyMCAzLjE3MTU3IDE4LjgyODVDMiAxNy42NTY5IDIgMTUuNzcxMyAyIDEyQzIgOC4yMjg4MSAyIDYuMzQzMTkgMy4xNzE1NyA1LjE3MTYyQzQuMjM0NjcgNC4xMDg1MyA1Ljg4NTcgNC4wMTAwOSA5IDQuMDAwOThNMTUgNC4wMDA5OEMxOC4xMTQzIDQuMDEwMDkgMTkuNzY1MyA0LjEwODUzIDIwLjgyODQgNS4xNzE2MkMyMS40ODE2IDUuODI0OCAyMS43NzA2IDYuNjk5OTQgMjEuODk4NSA4LjAwMDA2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDVMMTIgMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDEwLjVIMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCAxNEgxMy41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PlateBrokenIcon extends StatelessWidget {
  /// Creates the `plate` icon in the broken style.
  const PlateBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 12C22 15.7713 22 17.6569 20.8284 18.8285C19.6569 20 17.7712 20 14 20H10C6.22876 20 4.34315 20 3.17157 18.8285C2 17.6569 2 15.7713 2 12C2 8.22881 2 6.34319 3.17157 5.17162C4.23467 4.10853 5.8857 4.01009 9 4.00098M15 4.00098C18.1143 4.01009 19.7653 4.10853 20.8284 5.17162C21.4816 5.8248 21.7706 6.69994 21.8985 8.00006" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 5L12 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 10.5H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 14H13.5" stroke="currentColor" stroke-linecap="round"/>''',
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
