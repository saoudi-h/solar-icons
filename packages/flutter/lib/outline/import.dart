// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `import` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0LjQ2OTcgMTAuNDY5N0MxNC43NjI2IDEwLjE3NjggMTUuMjM3NCAxMC4xNzY4IDE1LjUzMDMgMTAuNDY5N0MxNS44MjMyIDEwLjc2MjYgMTUuODIzMiAxMS4yMzc0IDE1LjUzMDMgMTEuNTMwM0wxMi41MzAzIDE0LjUzMDNDMTIuMjM3NCAxNC44MjMyIDExLjc2MjYgMTQuODIzMiAxMS40Njk3IDE0LjUzMDNMOC40Njk2NyAxMS41MzAzQzguMTc2NzggMTEuMjM3NCA4LjE3Njc4IDEwLjc2MjYgOC40Njk2NyAxMC40Njk3QzguNzYyNTYgMTAuMTc2OCA5LjIzNzQ0IDEwLjE3NjggOS41MzAzMyAxMC40Njk3TDExLjI1IDEyLjE4OTNWNEMxMS4yNSAzLjU4NTc5IDExLjU4NTggMy4yNSAxMiAzLjI1QzEyLjQxNDIgMy4yNSAxMi43NSAzLjU4NTc5IDEyLjc1IDRWMTIuMTg5M0wxNC40Njk3IDEwLjQ2OTdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMC43NSAxMkMyMC43NSAxMS41ODU4IDIwLjQxNDIgMTEuMjUgMjAgMTEuMjVDMTkuNTg1OCAxMS4yNSAxOS4yNSAxMS41ODU4IDE5LjI1IDEyQzE5LjI1IDE2LjAwNDEgMTYuMDA0MSAxOS4yNSAxMiAxOS4yNUM3Ljk5NTkzIDE5LjI1IDQuNzUgMTYuMDA0MSA0Ljc1IDEyQzQuNzUgMTEuNTg1OCA0LjQxNDIxIDExLjI1IDQgMTEuMjVDMy41ODU3OSAxMS4yNSAzLjI1IDExLjU4NTggMy4yNSAxMkMzLjI1IDE2LjgzMjUgNy4xNjc1MSAyMC43NSAxMiAyMC43NUMxNi44MzI1IDIwLjc1IDIwLjc1IDE2LjgzMjUgMjAuNzUgMTJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ImportOutlineIcon extends StatelessWidget {
  /// Creates the `import` icon in the outline style.
  const ImportOutlineIcon({
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
    name: 'import',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M14.4697 10.4697C14.7626 10.1768 15.2374 10.1768 15.5303 10.4697C15.8232 10.7626 15.8232 11.2374 15.5303 11.5303L12.5303 14.5303C12.2374 14.8232 11.7626 14.8232 11.4697 14.5303L8.46967 11.5303C8.17678 11.2374 8.17678 10.7626 8.46967 10.4697C8.76256 10.1768 9.23744 10.1768 9.53033 10.4697L11.25 12.1893V4C11.25 3.58579 11.5858 3.25 12 3.25C12.4142 3.25 12.75 3.58579 12.75 4V12.1893L14.4697 10.4697Z" fill="currentColor"/>
<path d="M20.75 12C20.75 11.5858 20.4142 11.25 20 11.25C19.5858 11.25 19.25 11.5858 19.25 12C19.25 16.0041 16.0041 19.25 12 19.25C7.99593 19.25 4.75 16.0041 4.75 12C4.75 11.5858 4.41421 11.25 4 11.25C3.58579 11.25 3.25 11.5858 3.25 12C3.25 16.8325 7.16751 20.75 12 20.75C16.8325 20.75 20.75 16.8325 20.75 12Z" fill="currentColor"/>''',
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
