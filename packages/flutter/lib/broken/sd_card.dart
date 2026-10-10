// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sd-card` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTJDMiA3LjI4NTk1IDIgNC45Mjg5MyAzLjQ2NDQ3IDMuNDY0NDdDNC45Mjg5MyAyIDcuMjg1OTUgMiAxMiAyQzEyLjM0MTUgMiAxMi41MTIyIDIgMTIuNjg1OCAyLjAxNTE1QzEzLjQ5NTEgMi4wODU4MSAxNC4yODc0IDIuNDE0IDE0LjkwOTcgMi45MzYzMUMxNS4wNDMxIDMuMDQ4MzUgMTUuMTY2OCAzLjE3MjA2IDE1LjQxNDIgMy40MTk0NEwyMC41ODA2IDguNTg1NzhDMjAuODI4IDguODMzMTcgMjAuOTUxNiA4Ljk1Njg3IDIxLjA2MzcgOS4wOTAzNEMyMS41ODYgOS43MTI1NyAyMS45MTQyIDEwLjUwNDkgMjEuOTg0OCAxMS4zMTQyQzIyIDExLjQ4NzggMjIgMTEuNjU4NSAyMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC41MzU1IDIwLjUzNTVDMTkuMDcxMSAyMiAxNi43MTQgMjIgMTIgMjJDNy4yODU5NSAyMiA0LjkyODkzIDIyIDMuNDY0NDcgMjAuNTM1NUMyLjQ5MDczIDE5LjU2MTggMi4xNjQ0NCAxOC4xOTM0IDIuMDU1MSAxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik03IDZWOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMCA2VjkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTMgNlY5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SdCardBrokenIcon extends StatelessWidget {
  /// Creates the `sd-card` icon in the broken style.
  const SdCardBrokenIcon({
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
    name: 'sd-card',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C12.3415 2 12.5122 2 12.6858 2.01515C13.4951 2.08581 14.2874 2.414 14.9097 2.93631C15.0431 3.04835 15.1668 3.17206 15.4142 3.41944L20.5806 8.58578C20.828 8.83317 20.9516 8.95687 21.0637 9.09034C21.586 9.71257 21.9142 10.5049 21.9848 11.3142C22 11.4878 22 11.6585 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2.49073 19.5618 2.16444 18.1934 2.0551 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 6V9" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 6V9" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 6V9" stroke="currentColor" stroke-linecap="round"/>''',
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
