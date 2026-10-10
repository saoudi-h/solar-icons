// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMi4wMTc2IDE4LjcxNDRDMTIuNDMxOCAxOC43MTQ0IDEyLjc2NzYgMTkuMDUwMSAxMi43Njc2IDE5LjQ2NDRDMTIuNzY3NiAxOS44Nzg2IDEyLjQzMTggMjAuMjE0NCAxMi4wMTc2IDIwLjIxNDRDMTEuNjAzNCAyMC4yMTQ0IDExLjI2NzYgMTkuODc4NiAxMS4yNjc2IDE5LjQ2NDRDMTEuMjY3NiAxOS4wNTAxIDExLjYwMzQgMTguNzE0NCAxMi4wMTc2IDE4LjcxNDRaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class WiFiNoneOutlineIcon extends StatelessWidget {
  /// Creates the `wi-fi-none` icon in the outline style.
  const WiFiNoneOutlineIcon({
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
    name: 'wi-fi-none',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.0176 18.7144C12.4318 18.7144 12.7676 19.0501 12.7676 19.4644C12.7676 19.8786 12.4318 20.2144 12.0176 20.2144C11.6034 20.2144 11.2676 19.8786 11.2676 19.4644C11.2676 19.0501 11.6034 18.7144 12.0176 18.7144Z" fill="currentColor"/>''',
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
