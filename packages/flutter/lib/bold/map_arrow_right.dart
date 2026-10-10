// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00LjQ5NzQ2IDIwLjgzNUwyMS4wMDcyIDEzLjQ3MjVDMjIuMzMwOSAxMi44ODIyIDIyLjMzMDkgMTEuMTE3OCAyMS4wMDcyIDEwLjUyNzVMNC40OTc0NiAzLjE2NDk2QzMuMDAxNjMgMi40OTc4OSAxLjQ1MDA2IDMuOTc5MTQgMi4xOTA5OSA1LjM2Njg5TDUuMzQzMDIgMTEuMjcwNkM1LjU4ODE3IDExLjcyOTggNS41ODgxOCAxMi4yNzAyIDUuMzQzMDIgMTIuNzI5NEwyLjE5MDk5IDE4LjYzMzFDMS40NTAwNyAyMC4wMjA5IDMuMDAxNjMgMjEuNTAyMSA0LjQ5NzQ2IDIwLjgzNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MapArrowRightBoldIcon extends StatelessWidget {
  /// Creates the `map-arrow-right` icon in the bold style.
  const MapArrowRightBoldIcon({
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
    name: 'map-arrow-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M4.49746 20.835L21.0072 13.4725C22.3309 12.8822 22.3309 11.1178 21.0072 10.5275L4.49746 3.16496C3.00163 2.49789 1.45006 3.97914 2.19099 5.36689L5.34302 11.2706C5.58817 11.7298 5.58818 12.2702 5.34302 12.7294L2.19099 18.6331C1.45007 20.0209 3.00163 21.5021 4.49746 20.835Z" fill="currentColor"/>''',
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
