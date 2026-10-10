// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `slider-minimalistic-horizontal` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQuNSAzTDE5LjUgMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik00LjUgMjFMMTkuNSAyMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDZDNS4xNzE1NyA2IDMuNzU3MzYgNiAyLjg3ODY4IDYuODc4NjhDMiA3Ljc1NzM2IDIgOS4xNzE1NyAyIDEyQzIgMTQuODI4NCAyIDE2LjI0MjYgMi44Nzg2OCAxNy4xMjEzQzMuNzU3MzYgMTggNS4xNzE1NyAxOCA4IDE4TDE2IDE4QzE4LjgyODQgMTggMjAuMjQyNiAxOCAyMS4xMjEzIDE3LjEyMTNDMjIgMTYuMjQyNiAyMiAxNC44Mjg0IDIyIDEyQzIyIDkuMTcxNTcgMjIgNy43NTczNiAyMS4xMjEzIDYuODc4NjhDMjAuMjQyNiA2IDE4LjgyODQgNiAxNiA2TDEyIDYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class SliderMinimalisticHorizontalBrokenIcon extends StatelessWidget {
  /// Creates the `slider-minimalistic-horizontal` icon in the broken style.
  const SliderMinimalisticHorizontalBrokenIcon({
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
    name: 'slider-minimalistic-horizontal',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4.5 3L19.5 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.5 21L19.5 21" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 6C5.17157 6 3.75736 6 2.87868 6.87868C2 7.75736 2 9.17157 2 12C2 14.8284 2 16.2426 2.87868 17.1213C3.75736 18 5.17157 18 8 18L16 18C18.8284 18 20.2426 18 21.1213 17.1213C22 16.2426 22 14.8284 22 12C22 9.17157 22 7.75736 21.1213 6.87868C20.2426 6 18.8284 6 16 6L12 6" stroke="currentColor" stroke-linecap="round"/>''',
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
