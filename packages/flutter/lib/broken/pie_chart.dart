// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pie-chart` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDE1LjU1MjRDMTguODI2MyAxOS4yODkzIDE1LjMzNTEgMjIgMTEuMjEwOCAyMkM2LjEyMzgzIDIyIDIgMTcuODc2MiAyIDEyLjc4OTJDMiAxMS44MTY5IDIuMTUwNjQgMTAuODc5OCAyLjQyOTg1IDEwTTguNDQ3NTkgNEM3LjE1MTUyIDQuNDA3MDcgNS45Nzg5IDUuMDkyOTEgNSA1Ljk4NzI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxLjkxMzEgOS45NDcyN0MyMC44NTE1IDYuMTQ0MzggMTcuODU1NiAzLjE0ODQ1IDE0LjA1MjcgMi4wODY5QzEyLjQwOTEgMS42MjgxIDExIDMuMDU0MTkgMTEgNC43NjA2MlYxMS40NTUxQzExIDEyLjMwODMgMTEuNjkxNyAxMyAxMi41NDQ5IDEzSDE5LjIzOTRDMjAuOTQ1OCAxMyAyMi4zNzE5IDExLjU5MDkgMjEuOTEzMSA5Ljk0NzI3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class PieChartBrokenIcon extends StatelessWidget {
  /// Creates the `pie-chart` icon in the broken style.
  const PieChartBrokenIcon({
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
    name: 'pie-chart',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 15.5524C18.8263 19.2893 15.3351 22 11.2108 22C6.12383 22 2 17.8762 2 12.7892C2 11.8169 2.15064 10.8798 2.42985 10M8.44759 4C7.15152 4.40707 5.9789 5.09291 5 5.98724" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.9131 9.94727C20.8515 6.14438 17.8556 3.14845 14.0527 2.0869C12.4091 1.6281 11 3.05419 11 4.76062V11.4551C11 12.3083 11.6917 13 12.5449 13H19.2394C20.9458 13 22.3719 11.5909 21.9131 9.94727Z" stroke="currentColor" stroke-linecap="round"/>''',
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
