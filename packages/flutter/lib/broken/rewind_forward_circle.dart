// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-forward-circle` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEzIDguMDcxNDFMMTYuMjIxNSAxMC4zNzI1QzE3LjMzODIgMTEuMTcwMiAxNy4zMzgyIDEyLjgyOTggMTYuMjIxNSAxMy42Mjc0TDEzIDE1LjkyODZNNy41IDE1LjA1NjhWOC45NDMxN0M3LjUgOC4xMjk4IDguNDE5MzcgNy42NTY2NyA5LjA4MTI0IDguMTI5NDRMMTMuMzYwOCAxMS4xODYyQzEzLjkxOTEgMTEuNTg1MSAxMy45MTkxIDEyLjQxNDkgMTMuMzYwOCAxMi44MTM3TDkuMDgxMjQgMTUuODcwNUM4LjQxOTM3IDE2LjM0MzMgNy41IDE1Ljg3MDIgNy41IDE1LjA1NjhaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcgMy4zMzc4MkM4LjQ3MDg3IDIuNDg2OTcgMTAuMTc4NiAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJDMiAxMC4xNzg2IDIuNDg2OTcgOC40NzA4NyAzLjMzNzgyIDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class RewindForwardCircleBrokenIcon extends StatelessWidget {
  /// Creates the `rewind-forward-circle` icon in the broken style.
  const RewindForwardCircleBrokenIcon({
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
    name: 'rewind-forward-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13 8.07141L16.2215 10.3725C17.3382 11.1702 17.3382 12.8298 16.2215 13.6274L13 15.9286M7.5 15.0568V8.94317C7.5 8.1298 8.41937 7.65667 9.08124 8.12944L13.3608 11.1862C13.9191 11.5851 13.9191 12.4149 13.3608 12.8137L9.08124 15.8705C8.41937 16.3433 7.5 15.8702 7.5 15.0568Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
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
