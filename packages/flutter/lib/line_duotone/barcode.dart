// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMi4zMTY5IDE4Ljk3ODVMMTIuMzE2OSA0Ljk3ODUyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTUuNTM4ODIgMTguOTc4NUw1LjUzODgyIDQuOTc4NTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUuMjIxOSAxOC45Nzg1TDE1LjIyMTkgNC45Nzg1MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxOC45NzhMMjIgNC45NzgwMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yLjYzMzc5IDE4Ljk3ODVMMi42MzM3OSA0Ljk3ODUyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHJlY3Qgb3BhY2l0eT0iMC41IiB4PSI4LjQ0Mzg1IiB5PSI0Ljk1NjU0IiB3aWR0aD0iMC45Njc4ODUiIGhlaWdodD0iMTQuMDQzNSIgcng9IjAuNDgzOTQyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHJlY3Qgb3BhY2l0eT0iMC41IiB4PSIxOC4xMjciIHk9IjQuOTM0NTciIHdpZHRoPSIwLjk2Nzg4NSIgaGVpZ2h0PSIxNC4wNDM1IiByeD0iMC40ODM5NDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BarcodeLineDuotoneIcon extends StatelessWidget {
  /// Creates the `barcode` icon in the lineDuotone style.
  const BarcodeLineDuotoneIcon({
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
    name: 'barcode',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12.3169 18.9785L12.3169 4.97852" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.53882 18.9785L5.53882 4.97852" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.2219 18.9785L15.2219 4.97852" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 18.978L22 4.97803" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.63379 18.9785L2.63379 4.97852" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<rect opacity="0.5" x="8.44385" y="4.95654" width="0.967885" height="14.0435" rx="0.483942" stroke="currentColor" stroke-linecap="round"/>

<rect opacity="0.5" x="18.127" y="4.93457" width="0.967885" height="14.0435" rx="0.483942" stroke="currentColor" stroke-linecap="round"/>''',
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
