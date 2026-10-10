// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJDMiA2LjQ3NzE1IDYuNDc3MTUgMiAxMiAyQzE3LjUyMjggMiAyMiA2LjQ3NzE1IDIyIDEyQzIyIDE3LjUyMjggMTcuNTIyOCAyMiAxMiAyMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEwLjQ2OTcgOC40Njk2N0MxMC43NjI2IDguMTc2NzggMTEuMjM3NCA4LjE3Njc4IDExLjUzMDMgOC40Njk2N0MxMS44MjMyIDguNzYyNTYgMTEuODIzMiA5LjIzNzQ0IDExLjUzMDMgOS41MzAzM0w5LjgxMDY2IDExLjI1SDE2QzE2LjQxNDIgMTEuMjUgMTYuNzUgMTEuNTg1OCAxNi43NSAxMkMxNi43NSAxMi40MTQyIDE2LjQxNDIgMTIuNzUgMTYgMTIuNzVIOS44MTA2NkwxMS41MzAzIDE0LjQ2OTdDMTEuODIzMiAxNC43NjI2IDExLjgyMzIgMTUuMjM3NCAxMS41MzAzIDE1LjUzMDNDMTEuMjM3NCAxNS44MjMyIDEwLjc2MjYgMTUuODIzMiAxMC40Njk3IDE1LjUzMDNMNy40Njk2NyAxMi41MzAzQzcuMTc2NzggMTIuMjM3NCA3LjE3Njc4IDExLjc2MjYgNy40Njk2NyAxMS40Njk3TDEwLjQ2OTcgOC40Njk2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class RoundArrowLeftBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-arrow-left` icon in the boldDuotone style.
  const RoundArrowLeftBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.4697 8.46967C10.7626 8.17678 11.2374 8.17678 11.5303 8.46967C11.8232 8.76256 11.8232 9.23744 11.5303 9.53033L9.81066 11.25H16C16.4142 11.25 16.75 11.5858 16.75 12C16.75 12.4142 16.4142 12.75 16 12.75H9.81066L11.5303 14.4697C11.8232 14.7626 11.8232 15.2374 11.5303 15.5303C11.2374 15.8232 10.7626 15.8232 10.4697 15.5303L7.46967 12.5303C7.17678 12.2374 7.17678 11.7626 7.46967 11.4697L10.4697 8.46967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22Z" fill="currentColor"/>''',
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
