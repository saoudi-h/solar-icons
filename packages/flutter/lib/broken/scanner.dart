// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `scanner` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwIDIyQzkuNjUwODEgMjIgOS4zMTc3OSAyMiA5IDIxLjk5OTFNMiAxNUMyIDE4Ljc3MTIgMiAxOS42NTY5IDMuMTcxNTcgMjAuODI4NEMzLjgyNDc1IDIxLjQ4MTYgNC42OTk4OSAyMS43NzA2IDYgMjEuODk4NSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxNUMyMiAxOC43NzEyIDIyIDE5LjY1NjkgMjAuODI4NCAyMC44Mjg0QzE5LjY1NjkgMjIgMTcuNzcxMiAyMiAxNCAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNCAyQzE0LjM0OTIgMiAxNC42ODIyIDIgMTUgMi4wMDA5M00yMiA5QzIyIDUuMjI4NzYgMjIgNC4zNDMxNSAyMC44Mjg0IDMuMTcxNTdDMjAuMTc1MiAyLjUxODM5IDE5LjMwMDEgMi4yMjkzNyAxOCAyLjEwMTQ5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwIDJDNi4yMjg3NiAyIDQuMzQzMTUgMiAzLjE3MTU3IDMuMTcxNTdDMiA0LjM0MzE1IDIgNS4yMjg3NiAyIDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiAxMkg4TTIyIDEySDEyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class ScannerBrokenIcon extends StatelessWidget {
  /// Creates the `scanner` icon in the broken style.
  const ScannerBrokenIcon({
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
    name: 'scanner',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 22C9.65081 22 9.31779 22 9 21.9991M2 15C2 18.7712 2 19.6569 3.17157 20.8284C3.82475 21.4816 4.69989 21.7706 6 21.8985" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 15C22 18.7712 22 19.6569 20.8284 20.8284C19.6569 22 17.7712 22 14 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 2C14.3492 2 14.6822 2 15 2.00093M22 9C22 5.22876 22 4.34315 20.8284 3.17157C20.1752 2.51839 19.3001 2.22937 18 2.10149" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 2C6.22876 2 4.34315 2 3.17157 3.17157C2 4.34315 2 5.22876 2 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12H8M22 12H12" stroke="currentColor" stroke-linecap="round"/>''',
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
