// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cart-5` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuNTU1MTQgMTQuMjU3MkMyLjgzNjY4IDEwLjkwNDMgMi40Nzc0NSA5LjIyNzkzIDMuMzc4IDguMTEzOTdDNC4yNzg1NSA3IDUuOTkzMDIgNyA5LjQyMTk2IDdIMTQuNTc4MUMxOC4wMDcxIDcgMTkuNzIxNSA3IDIwLjYyMjEgOC4xMTM5N0MyMS41MjI2IDkuMjI3OTMgMjEuMTYzNCAxMC45MDQzIDIwLjQ0NDkgMTQuMjU3MkwyMC4wMTY0IDE2LjI1NzJDMTkuNTI5NCAxOC41Mjk3IDE5LjI4NTkgMTkuNjY2IDE4LjQ2MDggMjAuMzMzQzE3LjYzNTcgMjEgMTYuNDczNyAyMSAxNC4xNDk1IDIxSDkuODUwNTNDNy41MjYzOSAyMSA2LjM2NDMyIDIxIDUuNTM5MjUgMjAuMzMzQzQuNzE0MTggMTkuNjY2IDQuNDcwNjkgMTguNTI5NyAzLjk4MzcyIDE2LjI1NzJMMy41NTUxNCAxNC4yNTcyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDEySDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTEwIDE1SDE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE4IDlMMTUgMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik02IDlMOSAzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class Cart5LinearIcon extends StatelessWidget {
  /// Creates the `cart-5` icon in the linear style.
  const Cart5LinearIcon({
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
    name: 'cart-5',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.55514 14.2572C2.83668 10.9043 2.47745 9.22793 3.378 8.11397C4.27855 7 5.99302 7 9.42196 7H14.5781C18.0071 7 19.7215 7 20.6221 8.11397C21.5226 9.22793 21.1634 10.9043 20.4449 14.2572L20.0164 16.2572C19.5294 18.5297 19.2859 19.666 18.4608 20.333C17.6357 21 16.4737 21 14.1495 21H9.85053C7.52639 21 6.36432 21 5.53925 20.333C4.71418 19.666 4.47069 18.5297 3.98372 16.2572L3.55514 14.2572Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 12H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10 15H14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 9L15 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 9L9 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
