// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEwLjIyMSAyMEgxMi44NThDMTUuMDg1NCAyMCAxNi4xOTkyIDIwIDE3LjEyODkgMTkuNDk4NkMxOC4wNTg2IDE4Ljk5NzEgMTguNjQ4OCAxOC4wNzgxIDE5LjgyOTQgMTYuMjRMMjAuNTEwMiAxNS4xOEwyMC41MTAyIDE1LjE4QzIxLjUwMzQgMTMuNjMzNiAyMiAxMi44NjA0IDIyIDEyQzIyIDExLjEzOTYgMjEuNTAzNCAxMC4zNjY0IDIwLjUxMDIgOC44MjAwMUwxOS44Mjk0IDcuNzYwMDFDMTguNjQ4OCA1LjkyMTkxIDE4LjA1ODYgNS4wMDI4NiAxNy4xMjg5IDQuNTAxNDNDMTYuMTk5MiA0IDE1LjA4NTQgNCAxMi44NTggNEgxMC4yMjFDNi4zNDU2MSA0IDQuNDA3ODkgNCAzLjIwMzk0IDUuMTcxNTdDMiA2LjM0MzE1IDIgOC4yMjg3NiAyIDEyQzIgMTUuNzcxMiAyIDE3LjY1NjkgMy4yMDM5NCAxOC44Mjg0QzQuNDA3ODkgMjAgNi4zNDU2IDIwIDEwLjIyMSAyMFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTcgNy4wNTQ2OUM3LjQxNDIxIDcuMDU0NjkgNy43NSA3LjM3MDcyIDcuNzUgNy43NjA1N1YxNi4yMzU4QzcuNzUgMTYuNjI1NiA3LjQxNDIxIDE2Ljk0MTYgNyAxNi45NDE2QzYuNTg1NzkgMTYuOTQxNiA2LjI1IDE2LjYyNTYgNi4yNSAxNi4yMzU4VjcuNzYwNTdDNi4yNSA3LjM3MDcyIDYuNTg1NzkgNy4wNTQ2OSA3IDcuMDU0NjlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class TagHorizontalBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `tag-horizontal` icon in the boldDuotone style.
  const TagHorizontalBoldDuotoneIcon({
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
    name: 'tag-horizontal',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7 7.05469C7.41421 7.05469 7.75 7.37072 7.75 7.76057V16.2358C7.75 16.6256 7.41421 16.9416 7 16.9416C6.58579 16.9416 6.25 16.6256 6.25 16.2358V7.76057C6.25 7.37072 6.58579 7.05469 7 7.05469Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.221 20H12.858C15.0854 20 16.1992 20 17.1289 19.4986C18.0586 18.9971 18.6488 18.0781 19.8294 16.24L20.5102 15.18L20.5102 15.18C21.5034 13.6336 22 12.8604 22 12C22 11.1396 21.5034 10.3664 20.5102 8.82001L19.8294 7.76001C18.6488 5.92191 18.0586 5.00286 17.1289 4.50143C16.1992 4 15.0854 4 12.858 4H10.221C6.34561 4 4.40789 4 3.20394 5.17157C2 6.34315 2 8.22876 2 12C2 15.7712 2 17.6569 3.20394 18.8284C4.40789 20 6.3456 20 10.221 20Z" fill="currentColor"/>''',
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
