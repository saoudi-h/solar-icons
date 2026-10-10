// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rows-4` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTMgMkMxNi43NzEyIDIgMTguNjU2OSAyIDE5LjgyODQgMy4xNzE1N0MyMSA0LjM0MzE1IDIxIDYuMjI4NzYgMjEgMTBMMjEgMTRDMjEgMTcuNzcxMiAyMSAxOS42NTY5IDE5LjgyODQgMjAuODI4NEMxOC42NTY5IDIyIDE2Ljc3MTIgMjIgMTMgMjJMMTEgMjJDNy4yMjg3NiAyMiA1LjM0MzE1IDIyIDQuMTcxNTcgMjAuODI4NEMzIDE5LjY1NjkgMyAxNy43NzEyIDMgMTRMMyAxMEMzIDYuMjI4NzYgMyA0LjM0MzE1IDQuMTcxNTcgMy4xNzE1N0M1LjM0MzE1IDIgNy4yMjg3NiAyIDExIDJMMTMgMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTMgMTIuNzVMMyAxMS4yNUwyMSAxMS4yNUwyMSAxMi43NUwzIDEyLjc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMy4wMTU2MiA3Ljc1QzMuMDI2MzUgNy4xOTY4MyAzLjA0NTA3IDYuNjk5MzYgMy4wODEwNSA2LjI1TDIwLjkxOTkgNi4yNUMyMC45NTU5IDYuNjk5MzUgMjAuOTc0NiA3LjE5Njg2IDIwLjk4NTQgNy43NUwzLjAxNTYyIDcuNzVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMC45ODU0IDE2LjI1QzIwLjk3NDYgMTYuODAzMSAyMC45NTU5IDE3LjMwMDcgMjAuOTE5OSAxNy43NUwzLjA4MTA1IDE3Ljc1QzMuMDQ1MDcgMTcuMzAwNiAzLjAyNjM1IDE2LjgwMzIgMy4wMTU2MiAxNi4yNUwyMC45ODU0IDE2LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class Rows4BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `rows-4` icon in the boldDuotone style.
  const Rows4BoldDuotoneIcon({
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
    name: 'rows-4',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M3 12.75L3 11.25L21 11.25L21 12.75L3 12.75Z" fill="currentColor"/>
<path d="M3.01562 7.75C3.02635 7.19683 3.04507 6.69936 3.08105 6.25L20.9199 6.25C20.9559 6.69935 20.9746 7.19686 20.9854 7.75L3.01562 7.75Z" fill="currentColor"/>
<path d="M20.9854 16.25C20.9746 16.8031 20.9559 17.3007 20.9199 17.75L3.08105 17.75C3.04507 17.3006 3.02635 16.8032 3.01562 16.25L20.9854 16.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" fill="currentColor"/>''',
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
