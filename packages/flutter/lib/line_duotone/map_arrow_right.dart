// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01LjUyNjg5IDEyQzUuNTI2ODkgMTEuNzUwMSA1LjQ2NTYgMTEuNTAwMiA1LjM0MzAyIDExLjI3MDZMMi4xOTA5OSA1LjM2Njg5QzEuNDUwMDYgMy45NzkxNCAzLjAwMTYzIDIuNDk3ODkgNC40OTc0NiAzLjE2NDk2TDIxLjAwNzIgMTAuNTI3NUMyMS42NjkxIDEwLjgyMjYgMjIgMTEuNDExMyAyMiAxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTUuNTI2ODkgMTJDNS41MjY4OSAxMi4yNDk5IDUuNDY1NiAxMi40OTk4IDUuMzQzMDIgMTIuNzI5NEwyLjE5MDk5IDE4LjYzMzFDMS40NTAwNiAyMC4wMjA5IDMuMDAxNjMgMjEuNTAyMSA0LjQ5NzQ2IDIwLjgzNUwyMS4wMDcyIDEzLjQ3MjVDMjEuNjY5MSAxMy4xNzc0IDIyIDEyLjU4ODcgMjIgMTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class MapArrowRightLineDuotoneIcon extends StatelessWidget {
  /// Creates the `map-arrow-right` icon in the lineDuotone style.
  const MapArrowRightLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5.52689 12C5.52689 11.7501 5.4656 11.5002 5.34302 11.2706L2.19099 5.36689C1.45006 3.97914 3.00163 2.49789 4.49746 3.16496L21.0072 10.5275C21.6691 10.8226 22 11.4113 22 12" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.52689 12C5.52689 12.2499 5.4656 12.4998 5.34302 12.7294L2.19099 18.6331C1.45006 20.0209 3.00163 21.5021 4.49746 20.835L21.0072 13.4725C21.6691 13.1774 22 12.5887 22 12" stroke="currentColor" stroke-linecap="round"/>''',
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
