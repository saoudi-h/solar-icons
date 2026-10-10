// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTQgMTJDNCAxNi40MTgzIDcuNTgxNzIgMjAgMTIgMjBDMTYuNDE4MyAyMCAyMCAxNi40MTgzIDIwIDEyTDQgMTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTUuNTMwMyAxMC40Njk3QzE1LjIzNzQgMTAuMTc2OCAxNC43NjI2IDEwLjE3NjggMTQuNDY5NyAxMC40Njk3TDEyLjc1IDEyLjE4OTNMMTIuNzUgNEMxMi43NSAzLjU4NTc5IDEyLjQxNDIgMy4yNSAxMiAzLjI1QzExLjU4NTggMy4yNSAxMS4yNSAzLjU4NTc5IDExLjI1IDRMMTEuMjUgMTIuMTg5M0w5LjUzMDMzIDEwLjQ2OTdDOS4yMzc0NCAxMC4xNzY4IDguNzYyNTYgMTAuMTc2OCA4LjQ2OTY3IDEwLjQ2OTdDOC4xNzY3OCAxMC43NjI2IDguMTc2NzggMTEuMjM3NCA4LjQ2OTY3IDExLjUzMDNMMTEuNDY5NyAxNC41MzAzQzExLjc2MjYgMTQuODIzMiAxMi4yMzc0IDE0LjgyMzIgMTIuNTMwMyAxNC41MzAzTDE1LjUzMDMgMTEuNTMwM0MxNS44MjMyIDExLjIzNzQgMTUuODIzMiAxMC43NjI2IDE1LjUzMDMgMTAuNDY5N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ImportBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `import` icon in the boldDuotone style.
  const ImportBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M15.5303 10.4697C15.2374 10.1768 14.7626 10.1768 14.4697 10.4697L12.75 12.1893L12.75 4C12.75 3.58579 12.4142 3.25 12 3.25C11.5858 3.25 11.25 3.58579 11.25 4L11.25 12.1893L9.53033 10.4697C9.23744 10.1768 8.76256 10.1768 8.46967 10.4697C8.17678 10.7626 8.17678 11.2374 8.46967 11.5303L11.4697 14.5303C11.7626 14.8232 12.2374 14.8232 12.5303 14.5303L15.5303 11.5303C15.8232 11.2374 15.8232 10.7626 15.5303 10.4697Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 12C4 16.4183 7.58172 20 12 20C16.4183 20 20 16.4183 20 12L4 12Z" fill="currentColor"/>''',
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
