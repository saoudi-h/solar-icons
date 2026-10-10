// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiA0LjUwMDk4SDEyLjAwMDEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYgMjJIOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAxOC4wMDMxVjIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkgMTBDOSA4LjM0MzE1IDEwLjM0MzEgNyAxMiA3QzEzLjY1NjkgNyAxNSA4LjM0MzE1IDE1IDEwQzE1IDExLjY1NjkgMTMuNjU2OSAxMyAxMiAxM0MxMC4zNDMxIDEzIDkgMTEuNjU2OSA5IDEwWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMi4wNjQ2IDE3Ljk5OTdDMTYuNDgyNyAxOC4wMzU0IDIwLjAzNTQgMTQuNDgyNyAxOS45OTk3IDEwLjA2NDZDMTkuOTY0MSA1LjY0NjQyIDE2LjM1MzYgMi4wMzU5MiAxMS45MzU0IDIuMDAwMjdDNy41MTczMSAxLjk2NDYxIDMuOTY0NjEgNS41MTczMSA0LjAwMDI3IDkuOTM1NDVDNC4wMzU5MiAxNC4zNTM2IDcuNjQ2NDIgMTcuOTY0MSAxMi4wNjQ2IDE3Ljk5OTdaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class WebcamLinearIcon extends StatelessWidget {
  /// Creates the `webcam` icon in the linear style.
  const WebcamLinearIcon({
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
    name: 'webcam',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 4.50098H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16 22H8" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 18.0031V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 10C9 8.34315 10.3431 7 12 7C13.6569 7 15 8.34315 15 10C15 11.6569 13.6569 13 12 13C10.3431 13 9 11.6569 9 10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0646 17.9997C16.4827 18.0354 20.0354 14.4827 19.9997 10.0646C19.9641 5.64642 16.3536 2.03592 11.9354 2.00027C7.51731 1.96461 3.96461 5.51731 4.00027 9.93545C4.03592 14.3536 7.64642 17.9641 12.0646 17.9997Z" stroke="currentColor" stroke-linecap="round"/>''',
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
