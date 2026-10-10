// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiA0TDEwIDRDNi4yMjg3NiA0IDQuMzQzMTUgNCAzLjE3MTU3IDUuMTcxNTdDMiA2LjM0MzE1IDIgOC4yMjg3NiAyIDEyQzIgMTUuNzcxMiAyIDE3LjY1NjkgMy4xNzE1NyAxOC44Mjg0QzQuMTE0NjYgMTkuNzcxNSA1LjUyMDQzIDE5Ljk1NTQgOCAxOS45OTEzTTE2IDQuMDA4NjlDMTguNDc5NiA0LjA0NDU2IDE5Ljg4NTMgNC4yMjg0OSAyMC44Mjg0IDUuMTcxNTdDMjIgNi4zNDMxNSAyMiA4LjIyODc2IDIyIDEyQzIyIDE1Ljc3MTIgMjIgMTcuNjU2OSAyMC44Mjg0IDE4LjgyODRDMTkuNjU2OSAyMCAxNy43NzEyIDIwIDE0IDIwSDEyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDE3SDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class TabletBrokenIcon extends StatelessWidget {
  /// Creates the `tablet` icon in the broken style.
  const TabletBrokenIcon({
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
    name: 'tablet',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 4L10 4C6.22876 4 4.34315 4 3.17157 5.17157C2 6.34315 2 8.22876 2 12C2 15.7712 2 17.6569 3.17157 18.8284C4.11466 19.7715 5.52043 19.9554 8 19.9913M16 4.00869C18.4796 4.04456 19.8853 4.22849 20.8284 5.17157C22 6.34315 22 8.22876 22 12C22 15.7712 22 17.6569 20.8284 18.8284C19.6569 20 17.7712 20 14 20H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 17H9" stroke="currentColor" stroke-linecap="round"/>''',
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
