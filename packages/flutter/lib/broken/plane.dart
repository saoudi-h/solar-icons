// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `plane` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwLjEzNTMgMTMuODAyN0wxNS42ODQyIDguMzE0OTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTguNjM1NyAxNS42NzAxQzE3LjQyNTUgMTkuMzAwOCAxNi44MjA0IDIxLjExNjEgMTUuOTMzIDIxLjYzMTlDMTUuMDg4OSAyMi4xMjI3IDE0LjA0NjMgMjIuMTIyNyAxMy4yMDIyIDIxLjYzMTlDMTIuMzE0OCAyMS4xMTYxIDExLjcwOTcgMTkuMzAwOCAxMC40OTk1IDE1LjY3MDFDMTAuMzA1MiAxNS4wODcyIDEwLjIwOCAxNC43OTU3IDEwLjA0NDkgMTQuNTUyMUM5Ljg4Njg3IDE0LjMxNiA5LjY4NDA0IDE0LjExMzEgOS40NDc5MyAxMy45NTUxQzkuMjA0MyAxMy43OTIgOC45MTI4MiAxMy42OTQ4IDguMzI5ODcgMTMuNTAwNUM0LjY5OTIzIDEyLjI5MDMgMi44ODM5MiAxMS42ODUyIDIuMzY4MDYgMTAuNzk3OEMxLjg3NzMxIDkuOTUzNjkgMS44NzczMSA4LjkxMTEyIDIuMzY4MDYgOC4wNjY5OEMyLjg4MzkyIDcuMTc5NjQgNC42OTkyMyA2LjU3NDUzIDguMzI5ODcgNS4zNjQzMk0yMC4wMjU3IDExLjVMMjAuMzUyMSAxMC41MjA4QzIxLjg1MTYgNi4wMjI0MiAyMi42MDEzIDMuNzczMjIgMjEuNDE0IDIuNTg1OTVDMjAuMjI2OCAxLjM5ODY5IDE3Ljk3NzYgMi4xNDg0MiAxMy40NzkyIDMuNjQ3ODhMMTIuNDIyOCA0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PlaneBrokenIcon extends StatelessWidget {
  /// Creates the `plane` icon in the broken style.
  const PlaneBrokenIcon({
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
    name: 'plane',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10.1353 13.8027L15.6842 8.31497" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.6357 15.6701C17.4255 19.3008 16.8204 21.1161 15.933 21.6319C15.0889 22.1227 14.0463 22.1227 13.2022 21.6319C12.3148 21.1161 11.7097 19.3008 10.4995 15.6701C10.3052 15.0872 10.208 14.7957 10.0449 14.5521C9.88687 14.316 9.68404 14.1131 9.44793 13.9551C9.2043 13.792 8.91282 13.6948 8.32987 13.5005C4.69923 12.2903 2.88392 11.6852 2.36806 10.7978C1.87731 9.95369 1.87731 8.91112 2.36806 8.06698C2.88392 7.17964 4.69923 6.57453 8.32987 5.36432M20.0257 11.5L20.3521 10.5208C21.8516 6.02242 22.6013 3.77322 21.414 2.58595C20.2268 1.39869 17.9776 2.14842 13.4792 3.64788L12.4228 4" stroke="currentColor" stroke-linecap="round"/>''',
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
