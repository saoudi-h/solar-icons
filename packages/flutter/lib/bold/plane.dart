// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `plane` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4LjYzNTcgMTUuNjcwMUwyMC4zNTIxIDEwLjUyMDhDMjEuODUxNiA2LjAyMjQyIDIyLjYwMTMgMy43NzMyMiAyMS40MTQgMi41ODU5NUMyMC4yMjY4IDEuMzk4NjkgMTcuOTc3NiAyLjE0ODQyIDEzLjQ3OTIgMy42NDc4OEw4LjMyOTg3IDUuMzY0MzJDNC42OTkyMyA2LjU3NDUzIDIuODgzOTIgNy4xNzk2NCAyLjM2ODA2IDguMDY2OThDMS44NzczMSA4LjkxMTEyIDEuODc3MzEgOS45NTM2OSAyLjM2ODA2IDEwLjc5NzhDMi44ODM5MiAxMS42ODUyIDQuNjk5MjMgMTIuMjkwMyA4LjMyOTg3IDEzLjUwMDVDOC43Nzk4MSAxMy42NTA1IDkuMjg2MDEgMTMuNTQzNCA5LjYyMjk0IDEzLjIwOTZMMTUuMTI4NiA3Ljc1NDk1QzE1LjQzODMgNy40NDgwOCAxNS45MzgyIDcuNDUwNDEgMTYuMjQ1IDcuNzYwMTVDMTYuNTUxOSA4LjA2OTg5IDE2LjU0OTYgOC41Njk3NSAxNi4yMzk4IDguODc2NjJMMTAuODIzMSAxNC4yNDMyQzEwLjQ1MTggMTQuNjExMSAxMC4zMzQyIDE1LjE3NDIgMTAuNDk5NSAxNS42NzAxQzExLjcwOTcgMTkuMzAwNyAxMi4zMTQ4IDIxLjExNjEgMTMuMjAyMiAyMS42MzE5QzE0LjA0NjMgMjIuMTIyNyAxNS4wODg5IDIyLjEyMjcgMTUuOTMzIDIxLjYzMTlDMTYuODIwNCAyMS4xMTYxIDE3LjQyNTUgMTkuMzAwOCAxOC42MzU3IDE1LjY3MDFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class PlaneBoldIcon extends StatelessWidget {
  /// Creates the `plane` icon in the bold style.
  const PlaneBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M18.6357 15.6701L20.3521 10.5208C21.8516 6.02242 22.6013 3.77322 21.414 2.58595C20.2268 1.39869 17.9776 2.14842 13.4792 3.64788L8.32987 5.36432C4.69923 6.57453 2.88392 7.17964 2.36806 8.06698C1.87731 8.91112 1.87731 9.95369 2.36806 10.7978C2.88392 11.6852 4.69923 12.2903 8.32987 13.5005C8.77981 13.6505 9.28601 13.5434 9.62294 13.2096L15.1286 7.75495C15.4383 7.44808 15.9382 7.45041 16.245 7.76015C16.5519 8.06989 16.5496 8.56975 16.2398 8.87662L10.8231 14.2432C10.4518 14.6111 10.3342 15.1742 10.4995 15.6701C11.7097 19.3007 12.3148 21.1161 13.2022 21.6319C14.0463 22.1227 15.0889 22.1227 15.933 21.6319C16.8204 21.1161 17.4255 19.3008 18.6357 15.6701Z" fill="currentColor"/>''',
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
