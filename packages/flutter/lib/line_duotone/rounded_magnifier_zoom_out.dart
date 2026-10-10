// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTEiIGN5PSIxMSIgcj0iOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDExSDExSDEzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxLjgxMiAyMC45NzQ4QzIxLjc0OTMgMjEuMDY5NSAyMS42MzYgMjEuMTgyOCAyMS40MDk0IDIxLjQwOTRDMjEuMTgyOCAyMS42MzYgMjEuMDY5NSAyMS43NDkzIDIwLjk3NDggMjEuODEyQzIwLjQyMDIgMjIuMTc5MyAxOS42Njk5IDIxLjk5IDE5LjM1NTkgMjEuNDAzNkMxOS4zMDIzIDIxLjMwMzUgMTkuMjU2MyAyMS4xNSAxOS4xNjQzIDIwLjg0M0MxOS4wNjM4IDIwLjUwNzYgMTkuMDEzNiAyMC4zMzk4IDE5LjAwMzggMjAuMjIxOEMxOC45NDY2IDE5LjUyNjggMTkuNTI2OCAxOC45NDY2IDIwLjIyMTggMTkuMDAzOEMyMC4zMzk4IDE5LjAxMzYgMjAuNTA3NSAxOS4wNjM4IDIwLjg0MyAxOS4xNjQzQzIxLjE1IDE5LjI1NjMgMjEuMzAzNSAxOS4zMDIzIDIxLjQwMzYgMTkuMzU1OUMyMS45OSAxOS42Njk5IDIyLjE3OTMgMjAuNDIwMiAyMS44MTIgMjAuOTc0OFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class RoundedMagnifierZoomOutLineDuotoneIcon extends StatelessWidget {
  /// Creates the `rounded-magnifier-zoom-out` icon in the lineDuotone style.
  const RoundedMagnifierZoomOutLineDuotoneIcon({
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
    name: 'rounded-magnifier-zoom-out',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 11H11H13" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.812 20.9748C21.7493 21.0695 21.636 21.1828 21.4094 21.4094C21.1828 21.636 21.0695 21.7493 20.9748 21.812C20.4202 22.1793 19.6699 21.99 19.3559 21.4036C19.3023 21.3035 19.2563 21.15 19.1643 20.843C19.0638 20.5076 19.0136 20.3398 19.0038 20.2218C18.9466 19.5268 19.5268 18.9466 20.2218 19.0038C20.3398 19.0136 20.5075 19.0638 20.843 19.1643C21.15 19.2563 21.3035 19.3023 21.4036 19.3559C21.99 19.6699 22.1793 20.4202 21.812 20.9748Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11" cy="11" r="9" stroke="currentColor" stroke-linecap="round"/>''',
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
