// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00LjMxODAyIDQuMDY0NzZDMyA1LjQwMjc3IDMgNy41NTYyOCAzIDExLjg2MzNDMyAxNi4xNzAzIDMgMTguMzIzOCA0LjMxODAyIDE5LjY2MThDNS42MzYwNCAyMC45OTk4IDcuNzU3MzYgMjAuOTk5OCAxMiAyMC45OTk4QzE2LjI0MjYgMjAuOTk5OCAxOC4zNjQgMjAuOTk5OCAxOS42ODIgMTkuNjYxOEMyMC45ODYgMTguMzM4IDIwLjk5OTkgMTYuMjE2IDIxIDExLjk5OThNOC40IDIuNzc3MDhDOS4zOTQ4NyAyLjcyNjc0IDEwLjU3ODMgMi43MjY3NCAxMiAyLjcyNjc0QzE2LjI0MjYgMi43MjY3NCAxOC4zNjQgMi43MjY3NCAxOS42ODIgNC4wNjQ3NkMyMC41Mjc1IDQuOTIzMSAyMC44MzA2IDYuMTE3MDUgMjAuOTM5MyA3Ljk5OTg0TTEwLjE1MDQgMUw4LjQgMi43NzcwOEwxMC4xNTA0IDQuNTU0MDUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNOC41IDEyLjVMMTAuNSAxNC41TDE1LjUgOS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class RevoteBrokenIcon extends StatelessWidget {
  /// Creates the `revote` icon in the broken style.
  const RevoteBrokenIcon({
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
    name: 'revote',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4.31802 4.06476C3 5.40277 3 7.55628 3 11.8633C3 16.1703 3 18.3238 4.31802 19.6618C5.63604 20.9998 7.75736 20.9998 12 20.9998C16.2426 20.9998 18.364 20.9998 19.682 19.6618C20.986 18.338 20.9999 16.216 21 11.9998M8.4 2.77708C9.39487 2.72674 10.5783 2.72674 12 2.72674C16.2426 2.72674 18.364 2.72674 19.682 4.06476C20.5275 4.9231 20.8306 6.11705 20.9393 7.99984M10.1504 1L8.4 2.77708L10.1504 4.55405" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8.5 12.5L10.5 14.5L15.5 9.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
