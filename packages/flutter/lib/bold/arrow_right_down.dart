// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01LjQ2OTY3IDYuNTMwMzNDNS4xNzY3OCA2LjIzNzQ0IDUuMTc2NzggNS43NjI1NiA1LjQ2OTY3IDUuNDY5NjdDNS43NjI1NiA1LjE3Njc4IDYuMjM3NDQgNS4xNzY3OCA2LjUzMDMzIDUuNDY5NjdMMTMuNSAxMi40MzkzTDE3LjQ2OTcgOC40Njk2N0MxNy42ODQyIDguMjU1MTcgMTguMDA2OCA4LjE5MSAxOC4yODcgOC4zMDcwOUMxOC41NjczIDguNDIzMTggMTguNzUgOC42OTY2NSAxOC43NSA5VjE4QzE4Ljc1IDE4LjQxNDIgMTguNDE0MiAxOC43NSAxOCAxOC43NUw5IDE4Ljc1QzguNjk2NjUgMTguNzUgOC40MjMxOCAxOC41NjczIDguMzA3MDkgMTguMjg3QzguMTkxMDEgMTguMDA2OCA4LjI1NTE3IDE3LjY4NDIgOC40Njk2NyAxNy40Njk3TDEyLjQzOTMgMTMuNUw1LjQ2OTY3IDYuNTMwMzNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ArrowRightDownBoldIcon extends StatelessWidget {
  /// Creates the `arrow-right-down` icon in the bold style.
  const ArrowRightDownBoldIcon({
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
    name: 'arrow-right-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.46967 6.53033C5.17678 6.23744 5.17678 5.76256 5.46967 5.46967C5.76256 5.17678 6.23744 5.17678 6.53033 5.46967L13.5 12.4393L17.4697 8.46967C17.6842 8.25517 18.0068 8.191 18.287 8.30709C18.5673 8.42318 18.75 8.69665 18.75 9V18C18.75 18.4142 18.4142 18.75 18 18.75L9 18.75C8.69665 18.75 8.42318 18.5673 8.30709 18.287C8.19101 18.0068 8.25517 17.6842 8.46967 17.4697L12.4393 13.5L5.46967 6.53033Z" fill="currentColor"/>''',
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
