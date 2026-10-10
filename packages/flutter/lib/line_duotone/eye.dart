// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `eye` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMy4yNzQ4OSAxNS4yOTU3QzIuNDI0OTYgMTQuMTkxNSAyIDEzLjYzOTQgMiAxMkMyIDEwLjM2MDYgMi40MjQ5NiA5LjgwODUzIDMuMjc0ODkgOC43MDQzM0M0Ljk3MTk2IDYuNDk5NTYgNy44MTgxMSA0IDEyIDRDMTYuMTgxOSA0IDE5LjAyOCA2LjQ5OTU2IDIwLjcyNTEgOC43MDQzM0MyMS41NzUgOS44MDg1MyAyMiAxMC4zNjA2IDIyIDEyQzIyIDEzLjYzOTQgMjEuNTc1IDE0LjE5MTUgMjAuNzI1MSAxNS4yOTU3QzE5LjAyOCAxNy41MDA0IDE2LjE4MTkgMjAgMTIgMjBDNy44MTgxMSAyMCA0Ljk3MTk2IDE3LjUwMDQgMy4yNzQ4OSAxNS4yOTU3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNSAxMkMxNSAxMy42NTY5IDEzLjY1NjkgMTUgMTIgMTVDMTAuMzQzMSAxNSA5IDEzLjY1NjkgOSAxMkM5IDEwLjM0MzEgMTAuMzQzMSA5IDEyIDlDMTMuNjU2OSA5IDE1IDEwLjM0MzEgMTUgMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class EyeLineDuotoneIcon extends StatelessWidget {
  /// Creates the `eye` icon in the lineDuotone style.
  const EyeLineDuotoneIcon({
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
    name: 'eye',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15 12C15 13.6569 13.6569 15 12 15C10.3431 15 9 13.6569 9 12C9 10.3431 10.3431 9 12 9C13.6569 9 15 10.3431 15 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.27489 15.2957C2.42496 14.1915 2 13.6394 2 12C2 10.3606 2.42496 9.80853 3.27489 8.70433C4.97196 6.49956 7.81811 4 12 4C16.1819 4 19.028 6.49956 20.7251 8.70433C21.575 9.80853 22 10.3606 22 12C22 13.6394 21.575 14.1915 20.7251 15.2957C19.028 17.5004 16.1819 20 12 20C7.81811 20 4.97196 17.5004 3.27489 15.2957Z" stroke="currentColor" stroke-linecap="round"/>''',
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
