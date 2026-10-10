// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOC40NzY1IDQuNDY5NjdDMTguNzY5NCA0LjE3NjgzIDE5LjI0NDIgNC4xNzY4IDE5LjUzNzEgNC40Njk2N0MxOS44Mjk5IDQuNzYyNTUgMTkuODI5OSA1LjIzNzM0IDE5LjUzNzEgNS41MzAyMkwxMy4wNjM0IDEyLjAwMjlMMTkuNTMwMiAxOC40Njk3QzE5LjgyMyAxOC43NjI2IDE5LjgyMzEgMTkuMjM3NCAxOS41MzAyIDE5LjUzMDJDMTkuMjM3NCAxOS44MjMxIDE4Ljc2MjYgMTkuODIzIDE4LjQ2OTcgMTkuNTMwMkwxMi4wMDI5IDEzLjA2MzRMNS41MzcwNSAxOS41MzAyQzUuMjQ0MTcgMTkuODIzIDQuNzY5MzggMTkuODIzIDQuNDc2NTEgMTkuNTMwMkM0LjE4MzYzIDE5LjIzNzMgNC4xODM2NyAxOC43NjI2IDQuNDc2NTEgMTguNDY5N0wxMC45NDIzIDEyLjAwMjlMNC40Njk2NyA1LjUzMDIyQzQuMTc2NzggNS4yMzczMiA0LjE3Njc4IDQuNzYyNTYgNC40Njk2NyA0LjQ2OTY3QzQuNzYyNTYgNC4xNzY3OCA1LjIzNzMyIDQuMTc2NzggNS41MzAyMiA0LjQ2OTY3TDEyLjAwMjkgMTAuOTQyM0wxOC40NzY1IDQuNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class CloseBoldIcon extends StatelessWidget {
  /// Creates the `close` icon in the bold style.
  const CloseBoldIcon({
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
    name: 'close',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M18.4765 4.46967C18.7694 4.17683 19.2442 4.1768 19.5371 4.46967C19.8299 4.76255 19.8299 5.23734 19.5371 5.53022L13.0634 12.0029L19.5302 18.4697C19.823 18.7626 19.8231 19.2374 19.5302 19.5302C19.2374 19.8231 18.7626 19.823 18.4697 19.5302L12.0029 13.0634L5.53705 19.5302C5.24417 19.823 4.76938 19.823 4.47651 19.5302C4.18363 19.2373 4.18367 18.7626 4.47651 18.4697L10.9423 12.0029L4.46967 5.53022C4.17678 5.23732 4.17678 4.76256 4.46967 4.46967C4.76256 4.17678 5.23732 4.17678 5.53022 4.46967L12.0029 10.9423L18.4765 4.46967Z" fill="currentColor"/>''',
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
