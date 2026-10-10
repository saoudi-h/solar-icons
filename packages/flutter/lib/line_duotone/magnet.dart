// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMSAxOC41VjIwLjVDMjEgMjEuMzI4NCAyMC4zMjg0IDIyIDE5LjUgMjJIMTdIMTNDNy40NzcxNSAyMiAzIDE3LjUyMjggMyAxMkMzIDYuNDc3MTUgNy40NzcxNSAyIDEzIDJIMTdIMTkuNUMyMC4zMjg0IDIgMjEgMi42NzE1NyAyMSAzLjVWNS41QzIxIDYuMzI4NDMgMjAuMzI4NCA3IDE5LjUgN0gxN0gxM0MxMC4yMzg2IDcgOCA5LjIzODU4IDggMTJDOCAxNC43NjE0IDEwLjIzODYgMTcgMTMgMTdIMTdIMTkuNUMyMC4zMjg0IDE3IDIxIDE3LjY3MTYgMjEgMTguNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xNyAyVjdNMTcgMTdWMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class MagnetLineDuotoneIcon extends StatelessWidget {
  /// Creates the `magnet` icon in the lineDuotone style.
  const MagnetLineDuotoneIcon({
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
    name: 'magnet',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21 18.5V20.5C21 21.3284 20.3284 22 19.5 22H17H13C7.47715 22 3 17.5228 3 12C3 6.47715 7.47715 2 13 2H17H19.5C20.3284 2 21 2.67157 21 3.5V5.5C21 6.32843 20.3284 7 19.5 7H17H13C10.2386 7 8 9.23858 8 12C8 14.7614 10.2386 17 13 17H17H19.5C20.3284 17 21 17.6716 21 18.5Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17 2V7M17 17V22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
