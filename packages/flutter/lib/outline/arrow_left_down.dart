// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTguNTMwMyA1LjQ2OTY3QzE4LjgyMzIgNS43NjI1NiAxOC44MjMyIDYuMjM3NDQgMTguNTMwMyA2LjUzMDMzTDcuODEwNjYgMTcuMjVMMTUgMTcuMjVDMTUuNDE0MiAxNy4yNSAxNS43NSAxNy41ODU4IDE1Ljc1IDE4QzE1Ljc1IDE4LjQxNDIgMTUuNDE0MiAxOC43NSAxNSAxOC43NUw2IDE4Ljc1QzUuNTg1NzkgMTguNzUgNS4yNSAxOC40MTQyIDUuMjUgMThMNS4yNSA5QzUuMjUgOC41ODU3OSA1LjU4NTc5IDguMjUgNiA4LjI1QzYuNDE0MjEgOC4yNSA2Ljc1IDguNTg1NzkgNi43NSA5TDYuNzUgMTYuMTg5M0wxNy40Njk3IDUuNDY5NjdDMTcuNzYyNiA1LjE3Njc4IDE4LjIzNzQgNS4xNzY3OCAxOC41MzAzIDUuNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ArrowLeftDownOutlineIcon extends StatelessWidget {
  /// Creates the `arrow-left-down` icon in the outline style.
  const ArrowLeftDownOutlineIcon({
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
    name: 'arrow-left-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M18.5303 5.46967C18.8232 5.76256 18.8232 6.23744 18.5303 6.53033L7.81066 17.25L15 17.25C15.4142 17.25 15.75 17.5858 15.75 18C15.75 18.4142 15.4142 18.75 15 18.75L6 18.75C5.58579 18.75 5.25 18.4142 5.25 18L5.25 9C5.25 8.58579 5.58579 8.25 6 8.25C6.41421 8.25 6.75 8.58579 6.75 9L6.75 16.1893L17.4697 5.46967C17.7626 5.17678 18.2374 5.17678 18.5303 5.46967Z" fill="currentColor"/>''',
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
