// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMy4wMDAyIDE1LjIzMTZMMTkuMDk2OSAxOS42OTE2QzIwLjM5OTQgMjAuNTg4OCAyMiAxOS40MjExIDIyIDE3LjU3MzdMMjIgMTVNMTMuMDAwMiA4Ljc2ODQ0TDE5LjA5NjkgNC4zMDgzOEMyMC4zOTk0IDMuNDExMjIgMjIgNC41Nzg5NCAyMiA2LjQyNjMxTDIyIDExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTYuNjMwMDggNy43MDgzMkwxMC4zMzg4IDUuMjY5ODNDMTEuNTMyNyA0LjQ4NDgyIDEzIDUuNTA2NTggMTMgNy4xMjMwM1YxNi44NzdDMTMgMTguNDkzNCAxMS41MzI3IDE5LjUxNTIgMTAuMzM4OCAxOC43MzAyTDIuOTIxMzUgMTMuODUzMkMxLjY5Mjg4IDEzLjA0NTUgMS42OTI4OCAxMC45NTQ1IDIuOTIxMzYgMTAuMTQ2OEwzLjg0ODU0IDkuNTM3MTkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class RewindBackBrokenIcon extends StatelessWidget {
  /// Creates the `rewind-back` icon in the broken style.
  const RewindBackBrokenIcon({
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
    name: 'rewind-back',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13.0002 15.2316L19.0969 19.6916C20.3994 20.5888 22 19.4211 22 17.5737L22 15M13.0002 8.76844L19.0969 4.30838C20.3994 3.41122 22 4.57894 22 6.42631L22 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.63008 7.70832L10.3388 5.26983C11.5327 4.48482 13 5.50658 13 7.12303V16.877C13 18.4934 11.5327 19.5152 10.3388 18.7302L2.92135 13.8532C1.69288 13.0455 1.69288 10.9545 2.92136 10.1468L3.84854 9.53719" stroke="currentColor" stroke-linecap="round"/>''',
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
