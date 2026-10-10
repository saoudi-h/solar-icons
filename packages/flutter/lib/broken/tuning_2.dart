// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tuning-2` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuNSAxNEMxMS4xNTY5IDE0IDEyLjUgMTUuMzQzMSAxMi41IDE3QzEyLjUgMTguNjU2OCAxMS4xNTY5IDIwIDkuNSAyMEM3Ljg0MzE1IDIwIDYuNSAxOC42NTY4IDYuNSAxN0M2LjUgMTUuMzQzMSA3Ljg0MzE1IDE0IDkuNSAxNFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTQuNSAzLjk5OTk4QzEyLjg0MzEgMy45OTk5OCAxMS41IDUuMzQzMTIgMTEuNSA2Ljk5OTk4QzExLjUgOC42NTY4MyAxMi44NDMxIDkuOTk5OTggMTQuNSA5Ljk5OTk4QzE2LjE1NjkgOS45OTk5OCAxNy41IDguNjU2ODMgMTcuNSA2Ljk5OTk4QzE3LjUgNS4zNDMxMiAxNi4xNTY5IDMuOTk5OTggMTQuNSAzLjk5OTk4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMS4wMDAxIDcuMDAwMDFMNi4wMDAxIDdNMy4wMDAwMiA3LjAwMDAxTDIgNy4wMDAwMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMyAxN0wxOCAxN00yMS4wMDAxIDE3TDIyLjAwMDEgMTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiAxN0w2IDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDdMMTggNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class Tuning2BrokenIcon extends StatelessWidget {
  /// Creates the `tuning-2` icon in the broken style.
  const Tuning2BrokenIcon({
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
    name: 'tuning-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.5 14C11.1569 14 12.5 15.3431 12.5 17C12.5 18.6568 11.1569 20 9.5 20C7.84315 20 6.5 18.6568 6.5 17C6.5 15.3431 7.84315 14 9.5 14Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 3.99998C12.8431 3.99998 11.5 5.34312 11.5 6.99998C11.5 8.65683 12.8431 9.99998 14.5 9.99998C16.1569 9.99998 17.5 8.65683 17.5 6.99998C17.5 5.34312 16.1569 3.99998 14.5 3.99998Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.0001 7.00001L6.0001 7M3.00002 7.00001L2 7.00001" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 17L18 17M21.0001 17L22.0001 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 17L6 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 7L18 7" stroke="currentColor" stroke-linecap="round"/>''',
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
