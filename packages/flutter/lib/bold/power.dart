// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `power` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjc1IDIuNzVDMTIuNzUgMi4zMzU3OSAxMi40MTQyIDIgMTIgMkMxMS41ODU4IDIgMTEuMjUgMi4zMzU3OSAxMS4yNSAyLjc1VjYuNzVDMTEuMjUgNy4xNjQyMSAxMS41ODU4IDcuNSAxMiA3LjVDMTIuNDE0MiA3LjUgMTIuNzUgNy4xNjQyMSAxMi43NSA2Ljc1VjIuNzVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik04Ljc5MTkgNS4xNDY5MkM5LjE3MzQ1IDQuOTg1NzEgOS4zNTIwOCA0LjU0NTcxIDkuMTkwODcgNC4xNjQxNkM5LjAyOTY2IDMuNzgyNiA4LjU4OTY2IDMuNjAzOTggOC4yMDgxIDMuNzY1MTlDNC43MDgzMiA1LjI0Mzg2IDIuMjUgOC43MDkwNSAyLjI1IDEyLjc1MDFDMi4yNSAxOC4xMzQ5IDYuNjE1MjIgMjIuNTAwMSAxMiAyMi41MDAxQzE3LjM4NDggMjIuNTAwMSAyMS43NSAxOC4xMzQ5IDIxLjc1IDEyLjc1MDFDMjEuNzUgOC43MDkwNSAxOS4yOTE3IDUuMjQzODYgMTUuNzkxOSAzLjc2NTE5QzE1LjQxMDMgMy42MDM5OCAxNC45NzAzIDMuNzgyNiAxNC44MDkxIDQuMTY0MTZDMTQuNjQ3OSA0LjU0NTcxIDE0LjgyNjUgNC45ODU3MSAxNS4yMDgxIDUuMTQ2OTJDMTguMTcyMiA2LjM5OTI3IDIwLjI1IDkuMzMyOTMgMjAuMjUgMTIuNzUwMUMyMC4yNSAxNy4zMDY1IDE2LjU1NjMgMjEuMDAwMSAxMiAyMS4wMDAxQzcuNDQzNjUgMjEuMDAwMSAzLjc1IDE3LjMwNjUgMy43NSAxMi43NTAxQzMuNzUgOS4zMzI5MyA1LjgyNzc5IDYuMzk5MjcgOC43OTE5IDUuMTQ2OTJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class PowerBoldIcon extends StatelessWidget {
  /// Creates the `power` icon in the bold style.
  const PowerBoldIcon({
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
    name: 'power',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.75 2.75C12.75 2.33579 12.4142 2 12 2C11.5858 2 11.25 2.33579 11.25 2.75V6.75C11.25 7.16421 11.5858 7.5 12 7.5C12.4142 7.5 12.75 7.16421 12.75 6.75V2.75Z" fill="currentColor"/>
<path d="M8.7919 5.14692C9.17345 4.98571 9.35208 4.54571 9.19087 4.16416C9.02966 3.7826 8.58966 3.60398 8.2081 3.76519C4.70832 5.24386 2.25 8.70905 2.25 12.7501C2.25 18.1349 6.61522 22.5001 12 22.5001C17.3848 22.5001 21.75 18.1349 21.75 12.7501C21.75 8.70905 19.2917 5.24386 15.7919 3.76519C15.4103 3.60398 14.9703 3.7826 14.8091 4.16416C14.6479 4.54571 14.8265 4.98571 15.2081 5.14692C18.1722 6.39927 20.25 9.33293 20.25 12.7501C20.25 17.3065 16.5563 21.0001 12 21.0001C7.44365 21.0001 3.75 17.3065 3.75 12.7501C3.75 9.33293 5.82779 6.39927 8.7919 5.14692Z" fill="currentColor"/>''',
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
