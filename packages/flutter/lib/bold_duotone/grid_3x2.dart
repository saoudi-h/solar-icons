// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIgMTFDMiA3LjIyODc2IDIgNS4zNDMxNSAzLjE3MTU3IDQuMTcxNTdDNC4zNDMxNSAzIDYuMjI4NzYgMyAxMCAzSDE0QzE3Ljc3MTIgMyAxOS42NTY5IDMgMjAuODI4NCA0LjE3MTU3QzIyIDUuMzQzMTUgMjIgNy4yMjg3NiAyMiAxMVYxM0MyMiAxNi43NzEyIDIyIDE4LjY1NjkgMjAuODI4NCAxOS44Mjg0QzE5LjY1NjkgMjEgMTcuNzcxMiAyMSAxNCAyMUgxMEM2LjIyODc2IDIxIDQuMzQzMTUgMjEgMy4xNzE1NyAxOS44Mjg0QzIgMTguNjU2OSAyIDE2Ljc3MTIgMiAxM1YxMVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE0LjU4MyAzQzE1LjEyMzMgMy4wMDA1IDE1LjYyMiAzLjAwNTMyIDE2LjA4MyAzLjAxMjdWMTEuMjVIMjJWMTIuNzVIMTYuMDgzVjIwLjk4NjNDMTUuNjIyIDIwLjk5MzcgMTUuMTIzMyAyMC45OTg1IDE0LjU4MyAyMC45OTlWMTIuNzVIOS40MTYwMlYyMC45OTlDOC44NzU2OCAyMC45OTg1IDguMzc3MDcgMjAuOTkzNyA3LjkxNjAyIDIwLjk4NjNWMTIuNzVIMlYxMS4yNUg3LjkxNjAyVjMuMDEyN0M4LjM3NzA2IDMuMDA1MzEgOC44NzU2OSAzLjAwMDUgOS40MTYwMiAzVjExLjI1SDE0LjU4M1YzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class Grid3x2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `grid-3x2` icon in the boldDuotone style.
  const Grid3x2BoldDuotoneIcon({
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
    name: 'grid-3x2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.583 3C15.1233 3.0005 15.622 3.00532 16.083 3.0127V11.25H22V12.75H16.083V20.9863C15.622 20.9937 15.1233 20.9985 14.583 20.999V12.75H9.41602V20.999C8.87568 20.9985 8.37707 20.9937 7.91602 20.9863V12.75H2V11.25H7.91602V3.0127C8.37706 3.00531 8.87569 3.0005 9.41602 3V11.25H14.583V3Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" fill="currentColor"/>''',
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
