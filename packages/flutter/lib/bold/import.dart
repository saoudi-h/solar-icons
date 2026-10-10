// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `import` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNS41MzAzIDEwLjQ2OTdDMTUuMjM3NCAxMC4xNzY4IDE0Ljc2MjYgMTAuMTc2OCAxNC40Njk3IDEwLjQ2OTdMMTIuNzUgMTIuMTg5M1Y0QzEyLjc1IDMuNTg1NzkgMTIuNDE0MiAzLjI1IDEyIDMuMjVDMTEuNTg1OCAzLjI1IDExLjI1IDMuNTg1NzkgMTEuMjUgNEwxMS4yNSAxMi4xODkzTDkuNTMwMzMgMTAuNDY5N0M5LjIzNzQ0IDEwLjE3NjggOC43NjI1NiAxMC4xNzY4IDguNDY5NjcgMTAuNDY5N0M4LjE3Njc4IDEwLjc2MjYgOC4xNzY3OCAxMS4yMzc0IDguNDY5NjcgMTEuNTMwM0wxMS40Njk3IDE0LjUzMDNDMTEuNzYyNiAxNC44MjMyIDEyLjIzNzQgMTQuODIzMiAxMi41MzAzIDE0LjUzMDNMMTUuNTMwMyAxMS41MzAzQzE1LjgyMzIgMTEuMjM3NCAxNS44MjMyIDEwLjc2MjYgMTUuNTMwMyAxMC40Njk3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTcuNzQ3NiAxMkMxNy4yOTk2IDEyIDE2LjkwNzcgMTIuMjc0MiAxNi41OTEgMTIuNTkxTDEzLjU5MSAxNS41OTFDMTIuNzEyMyAxNi40Njk3IDExLjI4NzcgMTYuNDY5NyAxMC40MDkgMTUuNTkxTDcuNDA5MDEgMTIuNTkxQzcuMDkyMjYgMTIuMjc0MiA2LjcwMDQxIDEyIDYuMjUyNDUgMTJINEM0IDE2LjQxODMgNy41ODE3MiAyMCAxMiAyMEMxNi40MTgzIDIwIDIwIDE2LjQxODMgMjAgMTJIMTcuNzQ3NloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ImportBoldIcon extends StatelessWidget {
  /// Creates the `import` icon in the bold style.
  const ImportBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M15.5303 10.4697C15.2374 10.1768 14.7626 10.1768 14.4697 10.4697L12.75 12.1893V4C12.75 3.58579 12.4142 3.25 12 3.25C11.5858 3.25 11.25 3.58579 11.25 4L11.25 12.1893L9.53033 10.4697C9.23744 10.1768 8.76256 10.1768 8.46967 10.4697C8.17678 10.7626 8.17678 11.2374 8.46967 11.5303L11.4697 14.5303C11.7626 14.8232 12.2374 14.8232 12.5303 14.5303L15.5303 11.5303C15.8232 11.2374 15.8232 10.7626 15.5303 10.4697Z" fill="currentColor"/>
<path d="M17.7476 12C17.2996 12 16.9077 12.2742 16.591 12.591L13.591 15.591C12.7123 16.4697 11.2877 16.4697 10.409 15.591L7.40901 12.591C7.09226 12.2742 6.70041 12 6.25245 12H4C4 16.4183 7.58172 20 12 20C16.4183 20 20 16.4183 20 12H17.7476Z" fill="currentColor"/>''',
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
