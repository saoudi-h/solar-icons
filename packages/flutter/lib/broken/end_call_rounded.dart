// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `end-call-rounded` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwLjkxNzEgMTAuNTAzMkMxOS41NTk4IDkuMDM4ODkgMTYuODA2OCA3IDEyIDdDMTAuODQwNCA3IDkuODAwMjUgNy4xMTg2NyA4Ljg3MDQzIDcuMzE5MzFNMjIgMTMuODUwNEMyMiAxNS45MTAyIDIwLjIxODQgMTcuNDE1MSAxOC4zOTI4IDE2Ljg5NzNMMTcuMDUzMSAxNi41MTczQzE1Ljg0NDEgMTYuMTc0NCAxNSAxNC45ODI2IDE1IDEzLjYxODVDMTUgMTMuNjE4MyAxNC45OTk4IDExLjk2MzkgMTIgMTEuOTYzOUM5LjAwMTE0IDExLjk2MzkgOSAxMy42MTczIDkgMTMuNjE4NUM4Ljk5OTk4IDE0Ljk4MjYgOC4xNTU5IDE2LjE3NDQgNi45NDY5IDE2LjUxNzNMNS42MDcyIDE2Ljg5NzNDMy43ODE1OCAxNy40MTUxIDIgMTUuOTEwMiAyIDEzLjg1MDRDMiAxMi42MTI3IDIuMjc2NTkgMTEuMzczIDMuMDgyODkgMTAuNTAzMkMzLjY2MTk1IDkuODc4NSA0LjQ5NTAyIDkuMTQ5MjMgNS42MzMxOSA4LjUxODMxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class EndCallRoundedBrokenIcon extends StatelessWidget {
  /// Creates the `end-call-rounded` icon in the broken style.
  const EndCallRoundedBrokenIcon({
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
    name: 'end-call-rounded',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20.9171 10.5032C19.5598 9.03889 16.8068 7 12 7C10.8404 7 9.80025 7.11867 8.87043 7.31931M22 13.8504C22 15.9102 20.2184 17.4151 18.3928 16.8973L17.0531 16.5173C15.8441 16.1744 15 14.9826 15 13.6185C15 13.6183 14.9998 11.9639 12 11.9639C9.00114 11.9639 9 13.6173 9 13.6185C8.99998 14.9826 8.1559 16.1744 6.9469 16.5173L5.6072 16.8973C3.78158 17.4151 2 15.9102 2 13.8504C2 12.6127 2.27659 11.373 3.08289 10.5032C3.66195 9.8785 4.49502 9.14923 5.63319 8.51831" stroke="currentColor" stroke-linecap="round"/>''',
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
