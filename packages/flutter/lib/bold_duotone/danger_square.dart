// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `danger-square` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMkM3LjI4NTk1IDIgNC45Mjg5MyAyIDMuNDY0NDcgMy40NjQ0N0MyIDQuOTI4OTMgMiA3LjI4NTk1IDIgMTJDMiAxNi43MTQgMiAxOS4wNzExIDMuNDY0NDcgMjAuNTM1NUM0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTIgMjJDMTYuNzE0IDIyIDE5LjA3MTEgMjIgMjAuNTM1NSAyMC41MzU1QzIyIDE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyQzIyIDcuMjg1OTUgMjIgNC45Mjg5MyAyMC41MzU1IDMuNDY0NDdDMTkuMDcxMSAyIDE2LjcxNCAyIDEyIDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiA2LjI1QzEyLjQxNDIgNi4yNSAxMi43NSA2LjU4NTc5IDEyLjc1IDdWMTNDMTIuNzUgMTMuNDE0MiAxMi40MTQyIDEzLjc1IDEyIDEzLjc1QzExLjU4NTggMTMuNzUgMTEuMjUgMTMuNDE0MiAxMS4yNSAxM1Y3QzExLjI1IDYuNTg1NzkgMTEuNTg1OCA2LjI1IDEyIDYuMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiAxN0MxMi41NTIzIDE3IDEzIDE2LjU1MjMgMTMgMTZDMTMgMTUuNDQ3NyAxMi41NTIzIDE1IDEyIDE1QzExLjQ0NzcgMTUgMTEgMTUuNDQ3NyAxMSAxNkMxMSAxNi41NTIzIDExLjQ0NzcgMTcgMTIgMTdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class DangerSquareBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `danger-square` icon in the boldDuotone style.
  const DangerSquareBoldDuotoneIcon({
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
    name: 'danger-square',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 6.25C12.4142 6.25 12.75 6.58579 12.75 7V13C12.75 13.4142 12.4142 13.75 12 13.75C11.5858 13.75 11.25 13.4142 11.25 13V7C11.25 6.58579 11.5858 6.25 12 6.25Z" fill="currentColor"/>
<path d="M12 17C12.5523 17 13 16.5523 13 16C13 15.4477 12.5523 15 12 15C11.4477 15 11 15.4477 11 16C11 16.5523 11.4477 17 12 17Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2Z" fill="currentColor"/>''',
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
