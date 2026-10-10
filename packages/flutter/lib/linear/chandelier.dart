// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05IDRIMTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgNFYxNi41QzEyIDE4LjQzMyAxMy41NjcgMjAgMTUuNSAyMEMxNy40MzMgMjAgMTkgMTguNDMzIDE5IDE2LjVWMTYuNDQ0NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNiAxMS4yQzE2IDEwLjUzNzMgMTYuNTM3MyAxMCAxNy4yIDEwSDIwLjhDMjEuNDYyNyAxMCAyMiAxMC41MzczIDIyIDExLjJWMTNDMjIgMTQuNjU2OSAyMC42NTY5IDE2IDE5IDE2QzE3LjM0MzEgMTYgMTYgMTQuNjU2OSAxNiAxM1YxMS4yWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiA0VjE2LjVDMTIgMTguNDMzIDEwLjQzMyAyMCA4LjUgMjBDNi41NjcgMjAgNSAxOC40MzMgNSAxNi41VjE2LjQ0NDQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCAxMC44NTcxQzggMTAuMzgzOCA3LjYxNjI0IDEwIDcuMTQyODYgMTBIMi44NTcxNEMyLjM4Mzc2IDEwIDIgMTAuMzgzOCAyIDEwLjg1NzFWMTNDMiAxNC42NTY5IDMuMzQzMTUgMTYgNSAxNkM2LjY1Njg1IDE2IDggMTQuNjU2OSA4IDEzVjEwLjg1NzFaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class ChandelierLinearIcon extends StatelessWidget {
  /// Creates the `chandelier` icon in the linear style.
  const ChandelierLinearIcon({
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
    name: 'chandelier',
    style: SolarIconStyle.linear,
    body: r'''<path d="M9 4H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 4V16.5C12 18.433 13.567 20 15.5 20C17.433 20 19 18.433 19 16.5V16.4444" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 11.2C16 10.5373 16.5373 10 17.2 10H20.8C21.4627 10 22 10.5373 22 11.2V13C22 14.6569 20.6569 16 19 16C17.3431 16 16 14.6569 16 13V11.2Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 4V16.5C12 18.433 10.433 20 8.5 20C6.567 20 5 18.433 5 16.5V16.4444" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 10.8571C8 10.3838 7.61624 10 7.14286 10H2.85714C2.38376 10 2 10.3838 2 10.8571V13C2 14.6569 3.34315 16 5 16C6.65685 16 8 14.6569 8 13V10.8571Z" stroke="currentColor" stroke-linecap="round"/>''',
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
