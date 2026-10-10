// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bar-chair` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUuMDMxNSA2LjkzNzUxQzQuNzU3MzEgNC43Mjg1NyA2LjMwMTkyIDIuNjk3NjYgOC41NDIwNyAyLjMyMTY4TDguOTM5NjMgMi4yNTQ5NkMxMC45NjUxIDEuOTE1MDEgMTMuMDM0OSAxLjkxNTAxIDE1LjA2MDQgMi4yNTQ5NkwxNS40NTc5IDIuMzIxNjhDMTcuNjk4MSAyLjY5NzY2IDE5LjI0MjcgNC43Mjg1NyAxOC45Njg1IDYuOTM3NTFMMTguOTUwNSA3LjA4MjczQzE4Ljg4NTUgNy42MDYzIDE4LjQzMTUgOCAxNy44OTI4IDhINi4xMDcxOUM1LjU2ODQ3IDggNS4xMTQ1MiA3LjYwNjMgNS4wNDk1MyA3LjA4MjczTDUuMDMxNSA2LjkzNzUxWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDhMNiAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNSA4TDE4IDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTYuNSAxN0g3LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BarChairLineDuotoneIcon extends StatelessWidget {
  /// Creates the `bar-chair` icon in the lineDuotone style.
  const BarChairLineDuotoneIcon({
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
    name: 'bar-chair',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5.0315 6.93751C4.75731 4.72857 6.30192 2.69766 8.54207 2.32168L8.93963 2.25496C10.9651 1.91501 13.0349 1.91501 15.0604 2.25496L15.4579 2.32168C17.6981 2.69766 19.2427 4.72857 18.9685 6.93751L18.9505 7.08273C18.8855 7.6063 18.4315 8 17.8928 8H6.10719C5.56847 8 5.11452 7.6063 5.04953 7.08273L5.0315 6.93751Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 8L6 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 8L18 22" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.5 17H7.5" stroke="currentColor" stroke-linecap="round"/>''',
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
