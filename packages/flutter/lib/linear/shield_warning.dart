// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zIDEwLjQxNjdDMyA3LjIxOTA3IDMgNS42MjAyOCAzLjM3NzUyIDUuMDgyNDFDMy43NTUwMyA0LjU0NDU0IDUuMjU4MzIgNC4wMjk5NiA4LjI2NDkxIDMuMDAwNzlMOC44Mzc3MiAyLjgwNDcyQzEwLjQwNSAyLjI2ODI0IDExLjE4ODYgMiAxMiAyQzEyLjgxMTQgMiAxMy41OTUgMi4yNjgyNCAxNS4xNjIzIDIuODA0NzJMMTUuNzM1MSAzLjAwMDc5QzE4Ljc0MTcgNC4wMjk5NiAyMC4yNDUgNC41NDQ1NCAyMC42MjI1IDUuMDgyNDFDMjEgNS42MjAyOCAyMSA3LjIxOTA3IDIxIDEwLjQxNjdDMjEgMTAuODk5NiAyMSAxMS40MjM0IDIxIDExLjk5MTRDMjEgMTcuNjI5NCAxNi43NjEgMjAuMzY1NSAxNC4xMDE0IDIxLjUyNzNDMTMuMzggMjEuODQyNCAxMy4wMTkzIDIyIDEyIDIyQzEwLjk4MDcgMjIgMTAuNjIgMjEuODQyNCA5Ljg5ODU2IDIxLjUyNzNDNy4yMzg5NiAyMC4zNjU1IDMgMTcuNjI5NCAzIDExLjk5MTRDMyAxMS40MjM0IDMgMTAuODk5NiAzIDEwLjQxNjdaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDhWMTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTVIMTIuMDAwMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class ShieldWarningLinearIcon extends StatelessWidget {
  /// Creates the `shield-warning` icon in the linear style.
  const ShieldWarningLinearIcon({
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
    name: 'shield-warning',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3 10.4167C3 7.21907 3 5.62028 3.37752 5.08241C3.75503 4.54454 5.25832 4.02996 8.26491 3.00079L8.83772 2.80472C10.405 2.26824 11.1886 2 12 2C12.8114 2 13.595 2.26824 15.1623 2.80472L15.7351 3.00079C18.7417 4.02996 20.245 4.54454 20.6225 5.08241C21 5.62028 21 7.21907 21 10.4167C21 10.8996 21 11.4234 21 11.9914C21 17.6294 16.761 20.3655 14.1014 21.5273C13.38 21.8424 13.0193 22 12 22C10.9807 22 10.62 21.8424 9.89856 21.5273C7.23896 20.3655 3 17.6294 3 11.9914C3 11.4234 3 10.8996 3 10.4167Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 8V12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 15H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
