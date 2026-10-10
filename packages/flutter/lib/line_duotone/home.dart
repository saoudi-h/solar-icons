// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `home` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxMi4yMDM5QzIgOS45MTU0OSAyIDguNzcxMjggMi41MTkyIDcuODIyNzRDMy4wMzg0IDYuODc0MjEgMy45ODY5NSA2LjI4NTUxIDUuODg0MDMgNS4xMDgxM0w3Ljg4NDAzIDMuODY2ODdDOS44ODkzOSAyLjYyMjI5IDEwLjg5MjEgMiAxMiAyQzEzLjEwNzkgMiAxNC4xMTA2IDIuNjIyMjkgMTYuMTE2IDMuODY2ODdMMTguMTE2IDUuMTA4MTJDMjAuMDEzMSA2LjI4NTUxIDIwLjk2MTYgNi44NzQyMSAyMS40ODA4IDcuODIyNzRDMjIgOC43NzEyOCAyMiA5LjkxNTQ5IDIyIDEyLjIwMzlWMTMuNzI1QzIyIDE3LjYyNTggMjIgMTkuNTc2MyAyMC44Mjg0IDIwLjc4ODFDMTkuNjU2OSAyMiAxNy43NzEyIDIyIDE0IDIySDEwQzYuMjI4NzYgMjIgNC4zNDMxNSAyMiAzLjE3MTU3IDIwLjc4ODFDMiAxOS41NzYzIDIgMTcuNjI1OCAyIDEzLjcyNVYxMi4yMDM5WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNSAxOEg5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class HomeLineDuotoneIcon extends StatelessWidget {
  /// Creates the `home` icon in the lineDuotone style.
  const HomeLineDuotoneIcon({
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
    name: 'home',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15 18H9" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12.2039C2 9.91549 2 8.77128 2.5192 7.82274C3.0384 6.87421 3.98695 6.28551 5.88403 5.10813L7.88403 3.86687C9.88939 2.62229 10.8921 2 12 2C13.1079 2 14.1106 2.62229 16.116 3.86687L18.116 5.10812C20.0131 6.28551 20.9616 6.87421 21.4808 7.82274C22 8.77128 22 9.91549 22 12.2039V13.725C22 17.6258 22 19.5763 20.8284 20.7881C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.7881C2 19.5763 2 17.6258 2 13.725V12.2039Z" stroke="currentColor" stroke-linecap="round"/>''',
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
