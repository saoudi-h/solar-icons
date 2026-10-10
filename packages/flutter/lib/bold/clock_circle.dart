// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMkMyMiAxNy41MjI4IDE3LjUyMjggMjIgMTIgMjJDNi40NzcxNSAyMiAyIDE3LjUyMjggMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJaTTEyIDcuMjVDMTEuNTg1OCA3LjI1IDExLjI1IDcuNTg1NzkgMTEuMjUgOFYxMkMxMS4yNSAxMi4xOTg5IDExLjMyOTEgMTIuMzg5NiAxMS40Njk3IDEyLjUzMDNMMTMuOTY5NyAxNS4wMzAzQzE0LjI2MjYgMTUuMzIzMiAxNC43Mzc0IDE1LjMyMzIgMTUuMDMwMyAxNS4wMzAzQzE1LjMyMzIgMTQuNzM3NCAxNS4zMjMyIDE0LjI2MjYgMTUuMDMwMyAxMy45Njk3TDEyLjc1IDExLjY4OTVWOEMxMi43NSA3LjU4NTc5IDEyLjQxNDIgNy4yNSAxMiA3LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ClockCircleBoldIcon extends StatelessWidget {
  /// Creates the `clock-circle` icon in the bold style.
  const ClockCircleBoldIcon({
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
    name: 'clock-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2ZM12 7.25C11.5858 7.25 11.25 7.58579 11.25 8V12C11.25 12.1989 11.3291 12.3896 11.4697 12.5303L13.9697 15.0303C14.2626 15.3232 14.7374 15.3232 15.0303 15.0303C15.3232 14.7374 15.3232 14.2626 15.0303 13.9697L12.75 11.6895V8C12.75 7.58579 12.4142 7.25 12 7.25Z" fill="currentColor"/>''',
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
