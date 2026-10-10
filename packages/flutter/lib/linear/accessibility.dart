// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0IDdDMTQgOC4xMDQ1NyAxMy4xMDQ2IDkgMTIgOUMxMC44OTU0IDkgMTAgOC4xMDQ1NyAxMCA3QzEwIDUuODk1NDMgMTAuODk1NCA1IDEyIDVDMTMuMTA0NiA1IDE0IDUuODk1NDMgMTQgN1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTggMTBDMTggMTAgMTQuNDYyNyAxMS41IDEyIDExLjVDOS41MzcyNyAxMS41IDYgMTAgNiAxMCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAxMlYxMy40NTIyTTEyIDEzLjQ1MjJDMTIgMTQuMDI3NSAxMi4xNjU0IDE0LjU5MDYgMTIuNDc2NSAxNS4wNzQ1TDE1IDE5TTEyIDEzLjQ1MjJDMTIgMTQuMDI3NSAxMS44MzQ2IDE0LjU5MDYgMTEuNTIzNSAxNS4wNzQ1TDkgMTkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class AccessibilityLinearIcon extends StatelessWidget {
  /// Creates the `accessibility` icon in the linear style.
  const AccessibilityLinearIcon({
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
    name: 'accessibility',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 7C14 8.10457 13.1046 9 12 9C10.8954 9 10 8.10457 10 7C10 5.89543 10.8954 5 12 5C13.1046 5 14 5.89543 14 7Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 10C18 10 14.4627 11.5 12 11.5C9.53727 11.5 6 10 6 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 12V13.4522M12 13.4522C12 14.0275 12.1654 14.5906 12.4765 15.0745L15 19M12 13.4522C12 14.0275 11.8346 14.5906 11.5235 15.0745L9 19" stroke="currentColor" stroke-linecap="round"/>''',
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
