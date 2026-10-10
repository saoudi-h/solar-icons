// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05IDE2QzkuODUwMzggMTYuNjMwMyAxMC44ODQ2IDE3IDEyIDE3QzEzLjExNTQgMTcgMTQuMTQ5NiAxNi42MzAzIDE1IDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDEyLjIwMzlWMTMuNzI1QzIyIDE3LjYyNTggMjIgMTkuNTc2MyAyMC44Mjg0IDIwLjc4ODFDMTkuNjU2OSAyMiAxNy43NzEyIDIyIDE0IDIySDEwQzYuMjI4NzYgMjIgNC4zNDMxNSAyMiAzLjE3MTU3IDIwLjc4ODFDMiAxOS41NzYzIDIgMTcuNjI1OCAyIDEzLjcyNVYxMi4yMDM5QzIgOS45MTU0OSAyIDguNzcxMjggMi41MTkyIDcuODIyNzRDMy4wMzg0IDYuODc0MjEgMy45ODY5NSA2LjI4NTUxIDUuODg0MDMgNS4xMDgxM0w3Ljg4NDAzIDMuODY2ODdDOS44ODkzOSAyLjYyMjI5IDEwLjg5MjEgMiAxMiAyQzEzLjEwNzkgMiAxNC4xMTA2IDIuNjIyMjkgMTYuMTE2IDMuODY2ODdMMTguMTE2IDUuMTA4MTJDMjAuMDEzMSA2LjI4NTUxIDIwLjk2MTYgNi44NzQyMSAyMS40ODA4IDcuODIyNzQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class HomeSmileBrokenIcon extends StatelessWidget {
  /// Creates the `home-smile` icon in the broken style.
  const HomeSmileBrokenIcon({
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
    name: 'home-smile',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 16C9.85038 16.6303 10.8846 17 12 17C13.1154 17 14.1496 16.6303 15 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12.2039V13.725C22 17.6258 22 19.5763 20.8284 20.7881C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.7881C2 19.5763 2 17.6258 2 13.725V12.2039C2 9.91549 2 8.77128 2.5192 7.82274C3.0384 6.87421 3.98695 6.28551 5.88403 5.10813L7.88403 3.86687C9.88939 2.62229 10.8921 2 12 2C13.1079 2 14.1106 2.62229 16.116 3.86687L18.116 5.10812C20.0131 6.28551 20.9616 6.87421 21.4808 7.82274" stroke="currentColor" stroke-linecap="round"/>''',
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
