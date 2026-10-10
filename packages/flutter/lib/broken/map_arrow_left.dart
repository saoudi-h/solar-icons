// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMCA3LjQwMjYxTDIuOTkyODEgMTAuNTI3NUMxLjY2OTA2IDExLjExNzggMS42NjkwNiAxMi44ODIyIDIuOTkyODEgMTMuNDcyNUwxOS41MDI1IDIwLjgzNUMyMC45OTg0IDIxLjUwMjEgMjIuNTQ5OSAyMC4wMjA5IDIxLjgwOSAxOC42MzMxTDE4LjY1NyAxMi43Mjk0QzE4LjQxMTggMTIuMjcwMiAxOC40MTE4IDExLjcyOTggMTguNjU3IDExLjI3MDZMMjEuODA5IDUuMzY2ODlDMjIuNTQ5OSAzLjk3OTE0IDIwLjk5ODQgMi40OTc4OSAxOS41MDI1IDMuMTY0OTZMMTQuNzUxMyA1LjI4Mzc5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MapArrowLeftBrokenIcon extends StatelessWidget {
  /// Creates the `map-arrow-left` icon in the broken style.
  const MapArrowLeftBrokenIcon({
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
    name: 'map-arrow-left',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 7.40261L2.99281 10.5275C1.66906 11.1178 1.66906 12.8822 2.99281 13.4725L19.5025 20.835C20.9984 21.5021 22.5499 20.0209 21.809 18.6331L18.657 12.7294C18.4118 12.2702 18.4118 11.7298 18.657 11.2706L21.809 5.36689C22.5499 3.97914 20.9984 2.49789 19.5025 3.16496L14.7513 5.28379" stroke="currentColor" stroke-linecap="round"/>''',
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
