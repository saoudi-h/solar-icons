// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sleeping` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgNlYxOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxNlYxOE0xMiAxNlYxMS4zNTcxQzEyIDEwLjU1OTIgMTIgMTAuMTYwMiAxMi4xMTIyIDkuODM5NDRDMTIuMzEzMyA5LjI2NDk1IDEyLjc2NDkgOC44MTMyNiAxMy4zMzk0IDguNjEyMjNDMTMuNjYwMiA4LjUgMTQuMDU5MiA4LjUgMTQuODU3MSA4LjVDMTYuODUyMSA4LjUgMTcuODQ5NSA4LjUgMTguNjUxNCA4Ljc4MDU4QzIwLjA4NzYgOS4yODMxNCAyMS4yMTY5IDEwLjQxMjQgMjEuNzE5NCAxMS44NDg2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIgMTZIMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNOS41IDExQzkuNSA5LjYxOTI5IDguMzgwNzEgOC41IDcgOC41QzUuNjE5MjkgOC41IDQuNSA5LjYxOTI5IDQuNSAxMUM0LjUgMTIuMzgwNyA1LjYxOTI5IDEzLjUgNyAxMy41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SleepingBrokenIcon extends StatelessWidget {
  /// Creates the `sleeping` icon in the broken style.
  const SleepingBrokenIcon({
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
    name: 'sleeping',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 6V18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 16V18M12 16V11.3571C12 10.5592 12 10.1602 12.1122 9.83944C12.3133 9.26495 12.7649 8.81326 13.3394 8.61223C13.6602 8.5 14.0592 8.5 14.8571 8.5C16.8521 8.5 17.8495 8.5 18.6514 8.78058C20.0876 9.28314 21.2169 10.4124 21.7194 11.8486" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 16H22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.5 11C9.5 9.61929 8.38071 8.5 7 8.5C5.61929 8.5 4.5 9.61929 4.5 11C4.5 12.3807 5.61929 13.5 7 13.5" stroke="currentColor" stroke-linecap="round"/>''',
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
