// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04LjM1MTc5IDIwLjI0MThDOS4xOTI4OCAyMS4zMTEgMTAuNTE0MiAyMiAxMiAyMkMxMy40ODU4IDIyIDE0LjgwNzEgMjEuMzExIDE1LjY0ODIgMjAuMjQxOEMxMy4yMjY0IDIwLjU3IDEwLjc3MzYgMjAuNTcgOC4zNTE3OSAyMC4yNDE4WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTguNzQ5MSA5VjkuNzA0MUMxOC43NDkxIDEwLjU0OTEgMTguOTkwMyAxMS4zNzUyIDE5LjQ0MjIgMTIuMDc4MkwyMC41NDk2IDEzLjgwMTJDMjEuNTYxMiAxNS4zNzQ5IDIwLjc4OSAxNy41MTM5IDE5LjAyOTYgMTguMDExNkMxNC40MjczIDE5LjMxMzQgOS41NzI3NCAxOS4zMTM0IDQuOTcwMzYgMTguMDExNkMzLjIxMTA1IDE3LjUxMzkgMi40Mzg4MiAxNS4zNzQ5IDMuNDUwMzYgMTMuODAxMkw0LjU1NzggMTIuMDc4MkM1LjAwOTcyIDExLjM3NTIgNS4yNTA4NyAxMC41NDkxIDUuMjUwODcgOS43MDQxVjlDNS4yNTA4NyA1LjEzNDAxIDguMjcyNTYgMiAxMiAyQzE1LjcyNzQgMiAxOC43NDkxIDUuMTM0MDEgMTguNzQ5MSA5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class BellBoldIcon extends StatelessWidget {
  /// Creates the `bell` icon in the bold style.
  const BellBoldIcon({
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
    name: 'bell',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8.35179 20.2418C9.19288 21.311 10.5142 22 12 22C13.4858 22 14.8071 21.311 15.6482 20.2418C13.2264 20.57 10.7736 20.57 8.35179 20.2418Z" fill="currentColor"/>
<path d="M18.7491 9V9.7041C18.7491 10.5491 18.9903 11.3752 19.4422 12.0782L20.5496 13.8012C21.5612 15.3749 20.789 17.5139 19.0296 18.0116C14.4273 19.3134 9.57274 19.3134 4.97036 18.0116C3.21105 17.5139 2.43882 15.3749 3.45036 13.8012L4.5578 12.0782C5.00972 11.3752 5.25087 10.5491 5.25087 9.7041V9C5.25087 5.13401 8.27256 2 12 2C15.7274 2 18.7491 5.13401 18.7491 9Z" fill="currentColor"/>''',
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
