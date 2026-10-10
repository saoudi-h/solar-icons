// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `plane-3` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4LjYzNTcgMTUuNjcwMUMxNy40MjU1IDE5LjMwMDggMTYuODIwNCAyMS4xMTYxIDE1LjkzMyAyMS42MzE5QzE1LjA4ODkgMjIuMTIyNyAxNC4wNDYzIDIyLjEyMjcgMTMuMjAyMiAyMS42MzE5QzEyLjMxNDggMjEuMTE2MSAxMS43MDk3IDE5LjMwMDggMTAuNDk5NSAxNS42NzAxQzEwLjMwNTIgMTUuMDg3MiAxMC4yMDggMTQuNzk1NyAxMC4wNDQ5IDE0LjU1MjFDOS44ODY4NyAxNC4zMTYgOS42ODQwNCAxNC4xMTMxIDkuNDQ3OTMgMTMuOTU1MUM5LjIwNDMgMTMuNzkyIDguOTEyODIgMTMuNjk0OCA4LjMyOTg3IDEzLjUwMDVDNC42OTkyMyAxMi4yOTAzIDIuODgzOTIgMTEuNjg1MiAyLjM2ODA2IDEwLjc5NzhDMS44NzczMSA5Ljk1MzY5IDEuODc3MzEgOC45MTExMiAyLjM2ODA2IDguMDY2OThDMi44ODM5MiA3LjE3OTY0IDQuNjk5MjMgNi41NzQ1MyA4LjMyOTg3IDUuMzY0MzJNMjAuMDI1NyAxMS41TDIwLjM1MjEgMTAuNTIwOEMyMS44NTE2IDYuMDIyNDIgMjIuNjAxMyAzLjc3MzIyIDIxLjQxNCAyLjU4NTk1QzIwLjIyNjggMS4zOTg2OSAxNy45Nzc2IDIuMTQ4NDIgMTMuNDc5MiAzLjY0Nzg4TDEyLjQyMjggNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNy43ODk0IDYuMjEwODhMMTMuNTc4OSAxMC4zNzUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Plane3BrokenIcon extends StatelessWidget {
  /// Creates the `plane-3` icon in the broken style.
  const Plane3BrokenIcon({
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
    name: 'plane-3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M18.6357 15.6701C17.4255 19.3008 16.8204 21.1161 15.933 21.6319C15.0889 22.1227 14.0463 22.1227 13.2022 21.6319C12.3148 21.1161 11.7097 19.3008 10.4995 15.6701C10.3052 15.0872 10.208 14.7957 10.0449 14.5521C9.88687 14.316 9.68404 14.1131 9.44793 13.9551C9.2043 13.792 8.91282 13.6948 8.32987 13.5005C4.69923 12.2903 2.88392 11.6852 2.36806 10.7978C1.87731 9.95369 1.87731 8.91112 2.36806 8.06698C2.88392 7.17964 4.69923 6.57453 8.32987 5.36432M20.0257 11.5L20.3521 10.5208C21.8516 6.02242 22.6013 3.77322 21.414 2.58595C20.2268 1.39869 17.9776 2.14842 13.4792 3.64788L12.4228 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.7894 6.21088L13.5789 10.375" stroke="currentColor" stroke-linecap="round"/>''',
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
