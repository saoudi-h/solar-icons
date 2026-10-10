// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTEuNSAyQzE2Ljc0NjcgMiAyMSA2LjI1MzI5IDIxIDExLjVDMjEgMTMuODU0MSAyMC4xNDE3IDE2LjAwNjQgMTguNzIzNiAxNy42NjZDMTguNzMxNSAxNy42NzMyIDE4Ljc0MDQgMTcuNjc5OSAxOC43NDggMTcuNjg3NUwyMi41MzAzIDIxLjQ2OTdDMjIuODIyOCAyMS43NjI2IDIyLjgyMjggMjIuMjM4NCAyMi41MzAzIDIyLjUzMTJDMjIuMjM3NSAyMi44MjM2IDIxLjc2MjUgMjIuODIzNyAyMS40Njk3IDIyLjUzMTJMMTcuNjg3NSAxOC43NDhDMTcuNjc5NyAxOC43NDAzIDE3LjY3MjQgMTguNzMxNyAxNy42NjUgMTguNzIzNkMxNi4wMDU1IDIwLjE0MTQgMTMuODUzOCAyMSAxMS41IDIxQzYuMjUzMjkgMjEgMiAxNi43NDY3IDIgMTEuNUMyIDYuMjUzMjkgNi4yNTMyOSAyIDExLjUgMlpNMTMuNzk3OSA5LjIwMjE1QzEzLjUwNSA4LjkwOTI2IDEzLjAzMDIgOC45MDkyNiAxMi43MzczIDkuMjAyMTVMOS4yMDIxNSAxMi43MzczQzguOTA5MjYgMTMuMDMwMiA4LjkwOTI2IDEzLjUwNSA5LjIwMjE1IDEzLjc5NzlDOS40OTUwNCAxNC4wOTA3IDkuOTY5OCAxNC4wOTA3IDEwLjI2MjcgMTMuNzk3OUwxMy43OTc5IDEwLjI2MjdDMTQuMDkwNyA5Ljk2OTggMTQuMDkwNyA5LjQ5NTA0IDEzLjc5NzkgOS4yMDIxNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MagnifierSlashBoldIcon extends StatelessWidget {
  /// Creates the `magnifier-slash` icon in the bold style.
  const MagnifierSlashBoldIcon({
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
    name: 'magnifier-slash',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 2C16.7467 2 21 6.25329 21 11.5C21 13.8541 20.1417 16.0064 18.7236 17.666C18.7315 17.6732 18.7404 17.6799 18.748 17.6875L22.5303 21.4697C22.8228 21.7626 22.8228 22.2384 22.5303 22.5312C22.2375 22.8236 21.7625 22.8237 21.4697 22.5312L17.6875 18.748C17.6797 18.7403 17.6724 18.7317 17.665 18.7236C16.0055 20.1414 13.8538 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 6.25329 6.25329 2 11.5 2ZM13.7979 9.20215C13.505 8.90926 13.0302 8.90926 12.7373 9.20215L9.20215 12.7373C8.90926 13.0302 8.90926 13.505 9.20215 13.7979C9.49504 14.0907 9.9698 14.0907 10.2627 13.7979L13.7979 10.2627C14.0907 9.9698 14.0907 9.49504 13.7979 9.20215Z" fill="currentColor"/>''',
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
