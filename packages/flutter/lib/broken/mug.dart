// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `mug` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMgN0MzIDUuMTE0MzggMyA0LjE3MTU3IDMuNTg1NzkgMy41ODU3OUM0LjE3MTU3IDMgNS4xMTQzOCAzIDcgM0gxM0MxNC44ODU2IDMgMTUuODI4NCAzIDE2LjQxNDIgMy41ODU3OUMxNyA0LjE3MTU3IDE3IDUuMTE0MzggMTcgN1YxMkMxNyAxNC44Mjg0IDE3IDE2LjI0MjYgMTYuMTIxMyAxNy4xMjEzQzE1LjI0MjYgMTggMTMuODI4NCAxOCAxMSAxOEg5QzYuMTcxNTcgMTggNC43NTczNiAxOCAzLjg3ODY4IDE3LjEyMTNDMyAxNi4yNDI2IDMgMTQuODI4NCAzIDEyVjExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE2Ljk5OTkgMTNIMTcuOTk5OUMyMC4yMDkxIDEzIDIxLjk5OTkgMTEuMjA5MSAyMS45OTk5IDlDMjEuOTk5OSA2Ljc5MDg2IDIwLjIwOTEgNSAxNy45OTk5IDVIMTYuOTQ5MyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi45OTgzIDEzSDEzLjk5OTlNMy4wMDE3MSAxM0g5Ljk5OTk0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDIxTDIgMjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class MugBrokenIcon extends StatelessWidget {
  /// Creates the `mug` icon in the broken style.
  const MugBrokenIcon({
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
    name: 'mug',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3 7C3 5.11438 3 4.17157 3.58579 3.58579C4.17157 3 5.11438 3 7 3H13C14.8856 3 15.8284 3 16.4142 3.58579C17 4.17157 17 5.11438 17 7V12C17 14.8284 17 16.2426 16.1213 17.1213C15.2426 18 13.8284 18 11 18H9C6.17157 18 4.75736 18 3.87868 17.1213C3 16.2426 3 14.8284 3 12V11" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.9999 13H17.9999C20.2091 13 21.9999 11.2091 21.9999 9C21.9999 6.79086 20.2091 5 17.9999 5H16.9493" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.9983 13H13.9999M3.00171 13H9.99994" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 21L2 21" stroke="currentColor" stroke-linecap="round"/>''',
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
