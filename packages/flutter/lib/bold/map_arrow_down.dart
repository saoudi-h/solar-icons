// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zLjE2NDk2IDQuNDk3NDdMMTAuNTI3NSAyMS4wMDcyQzExLjExNzggMjIuMzMwOSAxMi44ODIyIDIyLjMzMDkgMTMuNDcyNSAyMS4wMDcyTDIwLjgzNSA0LjQ5NzQ3QzIxLjUwMjEgMy4wMDE2MyAyMC4wMjA5IDEuNDUwMDYgMTguNjMzMSAyLjE5MDk5TDEyLjcyOTQgNS4zNDMwM0MxMi4yNzAyIDUuNTg4MTggMTEuNzI5OCA1LjU4ODE4IDExLjI3MDYgNS4zNDMwM0w1LjM2Njg5IDIuMTkwOTlDMy45NzkxNCAxLjQ1MDA3IDIuNDk3ODkgMy4wMDE2MyAzLjE2NDk2IDQuNDk3NDdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MapArrowDownBoldIcon extends StatelessWidget {
  /// Creates the `map-arrow-down` icon in the bold style.
  const MapArrowDownBoldIcon({
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
    name: 'map-arrow-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3.16496 4.49747L10.5275 21.0072C11.1178 22.3309 12.8822 22.3309 13.4725 21.0072L20.835 4.49747C21.5021 3.00163 20.0209 1.45006 18.6331 2.19099L12.7294 5.34303C12.2702 5.58818 11.7298 5.58818 11.2706 5.34303L5.36689 2.19099C3.97914 1.45007 2.49789 3.00163 3.16496 4.49747Z" fill="currentColor"/>''',
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
