// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01IDEySDEyQzE0Ljc2MTQgMTIgMTcgOS43NjE0MiAxNyA3QzE3IDQuMjM4NTggMTQuNzYxNCAyIDEyIDJINy42MDg3QzYuMTY3OTUgMiA1IDMuMTY3OTUgNSA0LjYwODdWMTJaTTUgMTJIMTRDMTYuNzYxNCAxMiAxOSAxNC4yMzg2IDE5IDE3QzE5IDE5Ljc2MTQgMTYuNzYxNCAyMiAxNCAyMkg3LjA1ODgyQzUuOTIxNzcgMjIgNSAyMS4xMzcxIDUgMjBNNSAxMlYxNS45NzA2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class TextBoldBrokenIcon extends StatelessWidget {
  /// Creates the `text-bold` icon in the broken style.
  const TextBoldBrokenIcon({
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
    name: 'text-bold',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5 12H12C14.7614 12 17 9.76142 17 7C17 4.23858 14.7614 2 12 2H7.6087C6.16795 2 5 3.16795 5 4.6087V12ZM5 12H14C16.7614 12 19 14.2386 19 17C19 19.7614 16.7614 22 14 22H7.05882C5.92177 22 5 21.1371 5 20M5 12V15.9706" stroke="currentColor" stroke-linecap="round"/>''',
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
