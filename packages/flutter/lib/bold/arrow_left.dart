// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMCAxMS4yNUMyMC40MTQyIDExLjI1IDIwLjc1IDExLjU4NTggMjAuNzUgMTJDMjAuNzUgMTIuNDE0MiAyMC40MTQyIDEyLjc1IDIwIDEyLjc1SDEwLjc1TDEwLjc1IDE4QzEwLjc1IDE4LjMwMzQgMTAuNTY3MyAxOC41NzY4IDEwLjI4NyAxOC42OTI5QzEwLjAwNjggMTguODA5IDkuNjg0MTcgMTguNzQ0OSA5LjQ2OTY3IDE4LjUzMDRMMy40Njk2NyAxMi41MzA0QzMuMzI5MDIgMTIuMzg5NyAzLjI1IDEyLjE5ODkgMy4yNSAxMkMzLjI1IDExLjgwMTEgMy4zMjkwMiAxMS42MTAzIDMuNDY5NjcgMTEuNDY5N0w5LjQ2OTY3IDUuNDY5NjlDOS42ODQxNyA1LjI1NTE5IDEwLjAwNjggNS4xOTEwMyAxMC4yODcgNS4zMDcxMUMxMC41NjczIDUuNDIzMiAxMC43NSA1LjY5NjY4IDEwLjc1IDYuMDAwMDJMMTAuNzUgMTEuMjVIMjBaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ArrowLeftBoldIcon extends StatelessWidget {
  /// Creates the `arrow-left` icon in the bold style.
  const ArrowLeftBoldIcon({
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
    name: 'arrow-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M20 11.25C20.4142 11.25 20.75 11.5858 20.75 12C20.75 12.4142 20.4142 12.75 20 12.75H10.75L10.75 18C10.75 18.3034 10.5673 18.5768 10.287 18.6929C10.0068 18.809 9.68417 18.7449 9.46967 18.5304L3.46967 12.5304C3.32902 12.3897 3.25 12.1989 3.25 12C3.25 11.8011 3.32902 11.6103 3.46967 11.4697L9.46967 5.46969C9.68417 5.25519 10.0068 5.19103 10.287 5.30711C10.5673 5.4232 10.75 5.69668 10.75 6.00002L10.75 11.25H20Z" fill="currentColor"/>''',
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
