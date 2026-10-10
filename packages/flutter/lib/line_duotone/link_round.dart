// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `link-round` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTQgOUgxMkM4LjY4NjI5IDkgNiAxMS42ODYzIDYgMTVDNiAxOC4zMTM3IDguNjg2MjkgMjEgMTIgMjFIMTZDMTkuMzEzNyAyMSAyMiAxOC4zMTM3IDIyIDE1QzIyIDEzLjQ2MzMgMjEuNDIyMyAxMi4wNjE1IDIwLjQ3MjIgMTEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAgMTVIMTJDMTUuMzEzNyAxNSAxOCAxMi4zMTM3IDE4IDlDMTggNS42ODYyOSAxNS4zMTM3IDMgMTIgM0g4QzQuNjg2MjkgMyAyIDUuNjg2MjkgMiA5QzIgMTAuNTM2NyAyLjU3NzcxIDExLjkzODUgMy41Mjc3OSAxMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class LinkRoundLineDuotoneIcon extends StatelessWidget {
  /// Creates the `link-round` icon in the lineDuotone style.
  const LinkRoundLineDuotoneIcon({
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
    name: 'link-round',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M10 15H12C15.3137 15 18 12.3137 18 9C18 5.68629 15.3137 3 12 3H8C4.68629 3 2 5.68629 2 9C2 10.5367 2.57771 11.9385 3.52779 13" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14 9H12C8.68629 9 6 11.6863 6 15C6 18.3137 8.68629 21 12 21H16C19.3137 21 22 18.3137 22 15C22 13.4633 21.4223 12.0615 20.4722 11" stroke="currentColor" stroke-linecap="round"/>''',
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
