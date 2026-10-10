// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTcuNTIyOCA2LjQ3NzE1IDIyIDEyIDIyWk0xNC4wMzAzIDguNDY5NjdDMTQuMzIzMiA4Ljc2MjU2IDE0LjMyMzIgOS4yMzc0NCAxNC4wMzAzIDkuNTMwMzNMMTEuNTYwNyAxMkwxNC4wMzAzIDE0LjQ2OTdDMTQuMzIzMiAxNC43NjI2IDE0LjMyMzIgMTUuMjM3NCAxNC4wMzAzIDE1LjUzMDNDMTMuNzM3NCAxNS44MjMyIDEzLjI2MjYgMTUuODIzMiAxMi45Njk3IDE1LjUzMDNMOS45Njk2NyAxMi41MzAzQzkuNjc2NzggMTIuMjM3NCA5LjY3Njc4IDExLjc2MjYgOS45Njk2NyAxMS40Njk3TDEyLjk2OTcgOC40Njk2N0MxMy4yNjI2IDguMTc2NzggMTMuNzM3NCA4LjE3Njc4IDE0LjAzMDMgOC40Njk2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class RoundAltArrowLeftBoldIcon extends StatelessWidget {
  /// Creates the `round-alt-arrow-left` icon in the bold style.
  const RoundAltArrowLeftBoldIcon({
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
    name: 'round-alt-arrow-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22ZM14.0303 8.46967C14.3232 8.76256 14.3232 9.23744 14.0303 9.53033L11.5607 12L14.0303 14.4697C14.3232 14.7626 14.3232 15.2374 14.0303 15.5303C13.7374 15.8232 13.2626 15.8232 12.9697 15.5303L9.96967 12.5303C9.67678 12.2374 9.67678 11.7626 9.96967 11.4697L12.9697 8.46967C13.2626 8.17678 13.7374 8.17678 14.0303 8.46967Z" fill="currentColor"/>''',
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
