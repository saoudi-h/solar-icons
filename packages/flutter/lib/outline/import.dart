// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNC40Njk3IDEwLjQ2OTdDMTQuNzYyNiAxMC4xNzY4IDE1LjIzNzQgMTAuMTc2OCAxNS41MzAzIDEwLjQ2OTdDMTUuODIzMiAxMC43NjI2IDE1LjgyMzIgMTEuMjM3NCAxNS41MzAzIDExLjUzMDNMMTIuNTMwMyAxNC41MzAzQzEyLjIzNzQgMTQuODIzMiAxMS43NjI2IDE0LjgyMzIgMTEuNDY5NyAxNC41MzAzTDguNDY5NjcgMTEuNTMwM0M4LjE3Njc4IDExLjIzNzQgOC4xNzY3OCAxMC43NjI2IDguNDY5NjcgMTAuNDY5N0M4Ljc2MjU2IDEwLjE3NjggOS4yMzc0NCAxMC4xNzY4IDkuNTMwMzMgMTAuNDY5N0wxMS4yNSAxMi4xODkzVjRDMTEuMjUgMy41ODU3OSAxMS41ODU4IDMuMjUgMTIgMy4yNUMxMi40MTQyIDMuMjUgMTIuNzUgMy41ODU3OSAxMi43NSA0VjEyLjE4OTNMMTQuNDY5NyAxMC40Njk3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjAuNzUgMTJDMjAuNzUgMTEuNTg1OCAyMC40MTQyIDExLjI1IDIwIDExLjI1QzE5LjU4NTggMTEuMjUgMTkuMjUgMTEuNTg1OCAxOS4yNSAxMkMxOS4yNSAxNi4wMDQxIDE2LjAwNDEgMTkuMjUgMTIgMTkuMjVDNy45OTU5MyAxOS4yNSA0Ljc1IDE2LjAwNDEgNC43NSAxMkM0Ljc1IDExLjU4NTggNC40MTQyMSAxMS4yNSA0IDExLjI1QzMuNTg1NzkgMTEuMjUgMy4yNSAxMS41ODU4IDMuMjUgMTJDMy4yNSAxNi44MzI1IDcuMTY3NTEgMjAuNzUgMTIgMjAuNzVDMTYuODMyNSAyMC43NSAyMC43NSAxNi44MzI1IDIwLjc1IDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
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
