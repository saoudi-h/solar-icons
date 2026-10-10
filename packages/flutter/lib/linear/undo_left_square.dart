// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `undo-left-square` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuNSA5LjUwMDI2SDE0LjAzODVDMTUuNDA2MyA5LjUwMDI2IDE2LjA5MDIgOS41MDAyNiAxNi41ODU5IDkuODIwNzNDMTYuODIzNSA5Ljk3NDM4IDE3LjAyNTkgMTAuMTc2NyAxNy4xNzk1IDEwLjQxNDRDMTcuNSAxMC45MSAxNy41IDExLjU5MzkgMTcuNSAxMi45NjE4QzE3LjUgMTQuMzI5NyAxNy41IDE1LjAxMzYgMTcuMTc5NSAxNS41MDkyQzE3LjAyNTkgMTUuNzQ2OSAxNi44MjM1IDE1Ljk0OTIgMTYuNTg1OSAxNi4xMDI5QzE2LjA5MDIgMTYuNDIzMyAxNS40MDYzIDE2LjQyMzMgMTQuMDM4NSAxNi40MjMzSDkuNU04Ljc1IDExLjU3NzJMNi41IDkuNTAwMjZMOC43NSA3LjQyMzM0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIgMTJDMiA3LjI4NTk1IDIgNC45Mjg5MyAzLjQ2NDQ3IDMuNDY0NDdDNC45Mjg5MyAyIDcuMjg1OTUgMiAxMiAyQzE2LjcxNCAyIDE5LjA3MTEgMiAyMC41MzU1IDMuNDY0NDdDMjIgNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyQzIyIDE2LjcxNCAyMiAxOS4wNzExIDIwLjUzNTUgMjAuNTM1NUMxOS4wNzExIDIyIDE2LjcxNCAyMiAxMiAyMkM3LjI4NTk1IDIyIDQuOTI4OTMgMjIgMy40NjQ0NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class UndoLeftSquareLinearIcon extends StatelessWidget {
  /// Creates the `undo-left-square` icon in the linear style.
  const UndoLeftSquareLinearIcon({
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
    name: 'undo-left-square',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6.5 9.50026H14.0385C15.4063 9.50026 16.0902 9.50026 16.5859 9.82073C16.8235 9.97438 17.0259 10.1767 17.1795 10.4144C17.5 10.91 17.5 11.5939 17.5 12.9618C17.5 14.3297 17.5 15.0136 17.1795 15.5092C17.0259 15.7469 16.8235 15.9492 16.5859 16.1029C16.0902 16.4233 15.4063 16.4233 14.0385 16.4233H9.5M8.75 11.5772L6.5 9.50026L8.75 7.42334" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
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
