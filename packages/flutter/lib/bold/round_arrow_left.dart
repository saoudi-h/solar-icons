// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMjJDNi40NzcxNSAyMiAyIDE3LjUyMjggMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyWk0xMS41MzAzIDguNDY5NjdDMTEuMjM3NCA4LjE3Njc4IDEwLjc2MjYgOC4xNzY3OCAxMC40Njk3IDguNDY5NjdMNy40Njk2NyAxMS40Njk3QzcuMTc2NzggMTEuNzYyNiA3LjE3Njc4IDEyLjIzNzQgNy40Njk2NyAxMi41MzAzTDEwLjQ2OTcgMTUuNTMwM0MxMC43NjI2IDE1LjgyMzIgMTEuMjM3NCAxNS44MjMyIDExLjUzMDMgMTUuNTMwM0MxMS44MjMyIDE1LjIzNzQgMTEuODIzMiAxNC43NjI2IDExLjUzMDMgMTQuNDY5N0w5LjgxMDY2IDEyLjc1SDE2QzE2LjQxNDIgMTIuNzUgMTYuNzUgMTIuNDE0MiAxNi43NSAxMkMxNi43NSAxMS41ODU4IDE2LjQxNDIgMTEuMjUgMTYgMTEuMjVIOS44MTA2NkwxMS41MzAzIDkuNTMwMzNDMTEuODIzMiA5LjIzNzQ0IDExLjgyMzIgOC43NjI1NiAxMS41MzAzIDguNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RoundArrowLeftBoldIcon extends StatelessWidget {
  /// Creates the `round-arrow-left` icon in the bold style.
  const RoundArrowLeftBoldIcon({
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
    name: 'round-arrow-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22ZM11.5303 8.46967C11.2374 8.17678 10.7626 8.17678 10.4697 8.46967L7.46967 11.4697C7.17678 11.7626 7.17678 12.2374 7.46967 12.5303L10.4697 15.5303C10.7626 15.8232 11.2374 15.8232 11.5303 15.5303C11.8232 15.2374 11.8232 14.7626 11.5303 14.4697L9.81066 12.75H16C16.4142 12.75 16.75 12.4142 16.75 12C16.75 11.5858 16.4142 11.25 16 11.25H9.81066L11.5303 9.53033C11.8232 9.23744 11.8232 8.76256 11.5303 8.46967Z" fill="currentColor"/>''',
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
