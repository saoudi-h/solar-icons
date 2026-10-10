// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `password-minimalistic-input` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMy4xNzE1NyAxOC44Mjg0QzQuMzQzMTUgMjAgNi4yMjg3NiAyMCAxMCAyMEgxMkwxNSAxOS45OTkxQzE4LjExNDMgMTkuOTkgMTkuNzY1MyAxOS44OTE1IDIwLjgyODQgMTguODI4NEMyMiAxNy42NTY5IDIyIDE1Ljc3MTIgMjIgMTJDMjIgOC4yMjg3NiAyMiA2LjM0MzE1IDIwLjgyODQgNS4xNzE1N0MxOS43NjUzIDQuMTA4NDggMTguMTE0MyA0LjAxMDA0IDE1IDQuMDAwOTNMMTIgNEgxMEM2LjIyODc2IDQgNC4zNDMxNSA0IDMuMTcxNTcgNS4xNzE1N0MyIDYuMzQzMTUgMiA4LjIyODc2IDIgMTJDMiAxNS43NzEyIDIgMTcuNjU2OSAzLjE3MTU3IDE4LjgyODRaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDJWMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOC4wMDAxIDEyTDguMDAwMDIgMTEuOTk5OSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMi4wMDAxIDEyTDEyIDExLjk5OTkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PasswordMinimalisticInputLineDuotoneIcon extends StatelessWidget {
  /// Creates the `password-minimalistic-input` icon in the lineDuotone style.
  const PasswordMinimalisticInputLineDuotoneIcon({
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
    name: 'password-minimalistic-input',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M15 2V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.0001 12L8.00002 11.9999" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0001 12L12 11.9999" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.17157 18.8284C4.34315 20 6.22876 20 10 20H12L15 19.9991C18.1143 19.99 19.7653 19.8915 20.8284 18.8284C22 17.6569 22 15.7712 22 12C22 8.22876 22 6.34315 20.8284 5.17157C19.7653 4.10848 18.1143 4.01004 15 4.00093L12 4H10C6.22876 4 4.34315 4 3.17157 5.17157C2 6.34315 2 8.22876 2 12C2 15.7712 2 17.6569 3.17157 18.8284Z" stroke="currentColor" stroke-linecap="round"/>''',
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
