// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNSAyLjAyMDAyQzE3Ljc5MTMgMi4wODM4NCAxOS40MjE2IDIuMzUwNDcgMjAuNTM1NSAzLjQ2NDRDMjIgNC45Mjg4NyAyMiA3LjI4NTg5IDIyIDExLjk5OTlDMjIgMTYuNzE0IDIyIDE5LjA3MSAyMC41MzU1IDIwLjUzNTVDMTkuNDIxNiAyMS42NDk0IDE3Ljc5MTMgMjEuOTE2IDE1IDIxLjk3OTkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMy40NjQzNiAzLjQ2NDRDNC41NzgyOSAyLjM1MDQ3IDYuMjA4NjQgMi4wODM4NCA4Ljk5OTg5IDIuMDIwMDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSAyMS45OEM2LjIwODc1IDIxLjkxNjEgNC41Nzg0IDIxLjY0OTUgMy40NjQ0NyAyMC41MzU2QzIgMTkuMDcxMSAyIDE2LjcxNDEgMiAxMkMyIDEwLjQyMDQgMiA5LjEwNTQyIDIuMDU1MSA4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BracketsBrokenIcon extends StatelessWidget {
  /// Creates the `brackets` icon in the broken style.
  const BracketsBrokenIcon({
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
    name: 'brackets',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 2.02002C17.7913 2.08384 19.4216 2.35047 20.5355 3.4644C22 4.92887 22 7.28589 22 11.9999C22 16.714 22 19.071 20.5355 20.5355C19.4216 21.6494 17.7913 21.916 15 21.9799" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.46436 3.4644C4.57829 2.35047 6.20864 2.08384 8.99989 2.02002" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 21.98C6.20875 21.9161 4.5784 21.6495 3.46447 20.5356C2 19.0711 2 16.7141 2 12C2 10.4204 2 9.10542 2.0551 8" stroke="currentColor" stroke-linecap="round"/>''',
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
