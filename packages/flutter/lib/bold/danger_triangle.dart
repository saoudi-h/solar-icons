// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `danger-triangle` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik01LjMxMTcxIDEwLjc2MTVDOC4yMzAwNyA1LjU4NzE2IDkuNjg5MjUgMyAxMiAzQzE0LjMxMDcgMyAxNS43Njk5IDUuNTg3MTYgMTguNjg4MyAxMC43NjE1TDE5LjA1MTkgMTEuNDA2M0MyMS40NzcxIDE1LjcwNjEgMjIuNjg5NyAxNy44NTYgMjEuNTkzNyAxOS40MjhDMjAuNDk3OCAyMSAxNy43ODY0IDIxIDEyLjM2MzcgMjFIMTEuNjM2M0M2LjIxMzU2IDIxIDMuNTAyMTcgMjEgMi40MDYyNiAxOS40MjhDMS4zMTAzNCAxNy44NTYgMi41MjI5MSAxNS43MDYxIDQuOTQ4MDUgMTEuNDA2M0w1LjMxMTcxIDEwLjc2MTVaTTEyIDcuMjVDMTIuNDE0MiA3LjI1IDEyLjc1IDcuNTg1NzkgMTIuNzUgOFYxM0MxMi43NSAxMy40MTQyIDEyLjQxNDIgMTMuNzUgMTIgMTMuNzVDMTEuNTg1OCAxMy43NSAxMS4yNSAxMy40MTQyIDExLjI1IDEzVjhDMTEuMjUgNy41ODU3OSAxMS41ODU4IDcuMjUgMTIgNy4yNVpNMTIgMTdDMTIuNTUyMyAxNyAxMyAxNi41NTIzIDEzIDE2QzEzIDE1LjQ0NzcgMTIuNTUyMyAxNSAxMiAxNUMxMS40NDc3IDE1IDExIDE1LjQ0NzcgMTEgMTZDMTEgMTYuNTUyMyAxMS40NDc3IDE3IDEyIDE3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class DangerTriangleBoldIcon extends StatelessWidget {
  /// Creates the `danger-triangle` icon in the bold style.
  const DangerTriangleBoldIcon({
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
    name: 'danger-triangle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M5.31171 10.7615C8.23007 5.58716 9.68925 3 12 3C14.3107 3 15.7699 5.58716 18.6883 10.7615L19.0519 11.4063C21.4771 15.7061 22.6897 17.856 21.5937 19.428C20.4978 21 17.7864 21 12.3637 21H11.6363C6.21356 21 3.50217 21 2.40626 19.428C1.31034 17.856 2.52291 15.7061 4.94805 11.4063L5.31171 10.7615ZM12 7.25C12.4142 7.25 12.75 7.58579 12.75 8V13C12.75 13.4142 12.4142 13.75 12 13.75C11.5858 13.75 11.25 13.4142 11.25 13V8C11.25 7.58579 11.5858 7.25 12 7.25ZM12 17C12.5523 17 13 16.5523 13 16C13 15.4477 12.5523 15 12 15C11.4477 15 11 15.4477 11 16C11 16.5523 11.4477 17 12 17Z" fill="currentColor"/>''',
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
