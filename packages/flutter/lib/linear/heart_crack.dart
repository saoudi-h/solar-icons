// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiA1LjUwMDYzQzcuNTAwMTYgMC44MjU0NjQgMiA0LjI3NDE2IDIgOS4xMzcxQzIgMTQgNi4wMTk0MyAxNi41OTE0IDguOTYxNzMgMTguOTEwOUMxMCAxOS43Mjk0IDExIDIwLjUgMTIgMjAuNU0xMiA1LjUwMDYzQzE2LjQ5OTggMC44MjU0NjQgMjIgNC4yNzQxNiAyMiA5LjEzNzFDMjIgMTQgMTcuOTgwNiAxNi41OTE0IDE1LjAzODMgMTguOTEwOUMxNCAxOS43Mjk0IDEzIDIwLjUgMTIgMjAuNU0xMiA1LjUwMDYzTDEwLjUgOC41TDE0IDExTDExIDE0LjVMMTMgMTYuNUwxMiAyMC41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class HeartCrackLinearIcon extends StatelessWidget {
  /// Creates the `heart-crack` icon in the linear style.
  const HeartCrackLinearIcon({
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
    name: 'heart-crack',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 5.50063C7.50016 0.825464 2 4.27416 2 9.1371C2 14 6.01943 16.5914 8.96173 18.9109C10 19.7294 11 20.5 12 20.5M12 5.50063C16.4998 0.825464 22 4.27416 22 9.1371C22 14 17.9806 16.5914 15.0383 18.9109C14 19.7294 13 20.5 12 20.5M12 5.50063L10.5 8.5L14 11L11 14.5L13 16.5L12 20.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
