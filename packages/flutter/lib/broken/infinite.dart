// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `infinite` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwLjAwMDUgOEM5LjE2NDc0IDcuMzcyMDkgOC4xMjU4MiA3IDcgN0M0LjIzODU4IDcgMiA5LjIzODU4IDIgMTJDMiAxMy42MzU2IDIuNzg1MzQgMTUuMDg3OCAzLjk5OTUxIDE2TTE0IDE2QzE0LjgzNTcgMTYuNjI3OCAxNS44NzQzIDE3IDE3IDE3QzE5Ljc2MTQgMTcgMjIgMTQuNzYxNCAyMiAxMkMyMiAxMC4zNjQ0IDIxLjIxNDcgOC45MTIyMyAyMC4wMDA1IDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNyAxN0M5Ljc2MTQyIDE3IDEwLjUgMTUgMTIgMTJDMTMuNSA5IDE0LjIzODYgNyAxNyA3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class InfiniteBrokenIcon extends StatelessWidget {
  /// Creates the `infinite` icon in the broken style.
  const InfiniteBrokenIcon({
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
    name: 'infinite',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10.0005 8C9.16474 7.37209 8.12582 7 7 7C4.23858 7 2 9.23858 2 12C2 13.6356 2.78534 15.0878 3.99951 16M14 16C14.8357 16.6278 15.8743 17 17 17C19.7614 17 22 14.7614 22 12C22 10.3644 21.2147 8.91223 20.0005 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 17C9.76142 17 10.5 15 12 12C13.5 9 14.2386 7 17 7" stroke="currentColor" stroke-linecap="round"/>''',
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
