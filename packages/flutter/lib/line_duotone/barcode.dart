// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `barcode` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjMxNjkgMTguOTc4NUwxMi4zMTY5IDQuOTc4NTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNS41Mzg4MiAxOC45Nzg1TDUuNTM4ODIgNC45Nzg1MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNS4yMjE5IDE4Ljk3ODVMMTUuMjIxOSA0Ljk3ODUyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDE4Ljk3OEwyMiA0Ljk3ODAzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIuNjMzNzkgMTguOTc4NUwyLjYzMzc5IDQuOTc4NTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cmVjdCBvcGFjaXR5PSIwLjUiIHg9IjguNDQzODUiIHk9IjQuOTU2NTQiIHdpZHRoPSIwLjk2Nzg4NSIgaGVpZ2h0PSIxNC4wNDM1IiByeD0iMC40ODM5NDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cmVjdCBvcGFjaXR5PSIwLjUiIHg9IjE4LjEyNyIgeT0iNC45MzQ1NyIgd2lkdGg9IjAuOTY3ODg1IiBoZWlnaHQ9IjE0LjA0MzUiIHJ4PSIwLjQ4Mzk0MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
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
