// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMCA0QzYuMjI4NzYgNCA0LjM0MzE1IDQgMy4xNzE1NyA1LjE3MTU3QzIgNi4zNDMxNSAyIDguMjI4NzYgMiAxMkMyIDE1Ljc3MTIgMiAxNy42NTY5IDMuMTcxNTcgMTguODI4NEM0LjM0MzE1IDIwIDYuMjI4NzYgMjAgMTAgMjBIMTEuNU0xNCA0QzE3Ljc3MTIgNCAxOS42NTY5IDQgMjAuODI4NCA1LjE3MTU3QzIxLjg5MTUgNi4yMzQ2NyAyMS45OSA3Ljg4NTcgMjEuOTk5MSAxMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNS41IDE0VjIwTTEzLjUgMThMMTUuNSAyMEwxNy41IDE4TTIwIDIwVjE0TTE4IDE2TDIwIDE0TDIyIDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTEwIDE2SDYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiAxMEw3IDEwTTIyIDEwTDExIDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class CardTransferBrokenIcon extends StatelessWidget {
  /// Creates the `card-transfer` icon in the broken style.
  const CardTransferBrokenIcon({
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
    name: 'card-transfer',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 4C6.22876 4 4.34315 4 3.17157 5.17157C2 6.34315 2 8.22876 2 12C2 15.7712 2 17.6569 3.17157 18.8284C4.34315 20 6.22876 20 10 20H11.5M14 4C17.7712 4 19.6569 4 20.8284 5.17157C21.8915 6.23467 21.99 7.8857 21.9991 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 14V20M13.5 18L15.5 20L17.5 18M20 20V14M18 16L20 14L22 16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10 16H6" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 10L7 10M22 10L11 10" stroke="currentColor" stroke-linecap="round"/>''',
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
