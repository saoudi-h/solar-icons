// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `forward-right` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTguMDAwMSAxMC4xMzA4QzkuNjEzNDQgOC45NzY3MSAxMS40NTQ3IDguNTcwNzUgMTMgOC41NzA3NVY2LjIyNjE2QzEzIDUuMjY4MTcgMTMgNC43ODkxNyAxMy4yOTUyIDQuNjU2NjJDMTMuNTkwMyA0LjUyNDA3IDEzLjk0ODQgNC44NDIzIDE0LjY2NDQgNS40Nzg3NUwxOC42MzY3IDkuMDA5NjhDMjAuMjA1MyAxMC40MDQgMjAuOTg5NiAxMS4xMDEyIDIwLjk4OTYgMTEuOTk5M0MyMC45ODk2IDEyLjg5NzUgMjAuMjA1MyAxMy41OTQ2IDE4LjYzNjcgMTQuOTg5TDE0LjY2NDQgMTguNTE5OUMxMy45NDg0IDE5LjE1NjMgMTMuNTkwMyAxOS40NzQ2IDEzLjI5NTIgMTkuMzQyQzEzIDE5LjIwOTUgMTMgMTguNzMwNSAxMyAxNy43NzI1VjE1LjQyNzlDOS40IDE1LjQyNzkgNS41IDE3LjE0MjIgNCAxOS45OTkzQzQgMTcuNTY3NiA0LjM3NzI2IDE1LjYyMSA1LjAwMDEgMTQuMDczNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class ForwardRightBrokenIcon extends StatelessWidget {
  /// Creates the `forward-right` icon in the broken style.
  const ForwardRightBrokenIcon({
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
    name: 'forward-right',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8.0001 10.1308C9.61344 8.97671 11.4547 8.57075 13 8.57075V6.22616C13 5.26817 13 4.78917 13.2952 4.65662C13.5903 4.52407 13.9484 4.8423 14.6644 5.47875L18.6367 9.00968C20.2053 10.404 20.9896 11.1012 20.9896 11.9993C20.9896 12.8975 20.2053 13.5946 18.6367 14.989L14.6644 18.5199C13.9484 19.1563 13.5903 19.4746 13.2952 19.342C13 19.2095 13 18.7305 13 17.7725V15.4279C9.4 15.4279 5.5 17.1422 4 19.9993C4 17.5676 4.37726 15.621 5.0001 14.0735" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
