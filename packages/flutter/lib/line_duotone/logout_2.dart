// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `logout-2` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNOS4wMDE5NSA3QzkuMDE0MDYgNC44MjQ5NyA5LjExMDUxIDMuNjQ3MDYgOS44Nzg4OSAyLjg3ODY4QzEwLjc1NzYgMiAxMi4xNzE4IDIgMTUuMDAwMiAyTDE2LjAwMDIgMkMxOC44Mjg2IDIgMjAuMjQyOSAyIDIxLjEyMTUgMi44Nzg2OEMyMi4wMDAyIDMuNzU3MzYgMjIuMDAwMiA1LjE3MTU3IDIyLjAwMDIgOEwyMi4wMDAyIDE2QzIyLjAwMDIgMTguODI4NCAyMi4wMDAyIDIwLjI0MjYgMjEuMTIxNSAyMS4xMjEzQzIwLjI0MjkgMjIgMTguODI4NiAyMiAxNi4wMDAyIDIySDE1LjAwMDJDMTIuMTcxOCAyMiAxMC43NTc2IDIyIDkuODc4ODkgMjEuMTIxM0M5LjExMDUxIDIwLjM1MjkgOS4wMTQwNiAxOS4xNzUgOS4wMDE5NSAxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNSAxMkwyIDEyTTUuNSAxNUwyIDEyTDUuNSA5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class Logout2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `logout-2` icon in the lineDuotone style.
  const Logout2LineDuotoneIcon({
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
    name: 'logout-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15 12L2 12M5.5 15L2 12L5.5 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.00195 7C9.01406 4.82497 9.11051 3.64706 9.87889 2.87868C10.7576 2 12.1718 2 15.0002 2L16.0002 2C18.8286 2 20.2429 2 21.1215 2.87868C22.0002 3.75736 22.0002 5.17157 22.0002 8L22.0002 16C22.0002 18.8284 22.0002 20.2426 21.1215 21.1213C20.2429 22 18.8286 22 16.0002 22H15.0002C12.1718 22 10.7576 22 9.87889 21.1213C9.11051 20.3529 9.01406 19.175 9.00195 17" stroke="currentColor" stroke-linecap="round"/>''',
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
