// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `undo-right-square` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTJDMiA3LjI4NTk1IDIgNC45Mjg5MyAzLjQ2NDQ3IDMuNDY0NDdDNC45Mjg5MyAyIDcuMjg1OTUgMiAxMiAyQzE2LjcxNCAyIDE5LjA3MTEgMiAyMC41MzU1IDMuNDY0NDdDMjIgNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyQzIyIDE2LjcxNCAyMiAxOS4wNzExIDIwLjUzNTUgMjAuNTM1NUMxOS4wNzExIDIyIDE2LjcxNCAyMiAxMiAyMkM3LjI4NTk1IDIyIDQuOTI4OTMgMjIgMy40NjQ0NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNy41IDkuNTAwMjZIOS45NjE1NUM4LjU5MzY5IDkuNTAwMjYgNy45MDk3NiA5LjUwMDI2IDcuNDE0MSA5LjgyMDczQzcuMTc2NDYgOS45NzQzOCA2Ljk3NDEyIDEwLjE3NjcgNi44MjA0OCAxMC40MTQ0QzYuNSAxMC45MSA2LjUgMTEuNTkzOSA2LjUgMTIuOTYxOEM2LjUgMTQuMzI5NyA2LjUgMTUuMDEzNiA2LjgyMDQ3IDE1LjUwOTJDNi45NzQxMiAxNS43NDY5IDcuMTc2NDUgMTUuOTQ5MiA3LjQxNDEgMTYuMTAyOUM3LjkwOTc2IDE2LjQyMzMgOC41OTM2OSAxNi40MjMzIDkuOTYxNTQgMTYuNDIzM0gxNC41TTE1LjI1IDExLjU3NzJMMTcuNSA5LjUwMDI2TDE1LjI1IDcuNDIzMzQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class UndoRightSquareLinearIcon extends StatelessWidget {
  /// Creates the `undo-right-square` icon in the linear style.
  const UndoRightSquareLinearIcon({
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
    name: 'undo-right-square',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.5 9.50026H9.96155C8.59369 9.50026 7.90976 9.50026 7.4141 9.82073C7.17646 9.97438 6.97412 10.1767 6.82048 10.4144C6.5 10.91 6.5 11.5939 6.5 12.9618C6.5 14.3297 6.5 15.0136 6.82047 15.5092C6.97412 15.7469 7.17645 15.9492 7.4141 16.1029C7.90976 16.4233 8.59369 16.4233 9.96154 16.4233H14.5M15.25 11.5772L17.5 9.50026L15.25 7.42334" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
