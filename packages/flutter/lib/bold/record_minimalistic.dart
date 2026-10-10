// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01Ljg4ODg5IDE2QzMuNzQxMTEgMTYgMiAxNC4yMDkxIDIgMTJDMiA5Ljc5MDg2IDMuNzQxMTEgOCA1Ljg4ODg5IDhDOC4wMzY2NiA4IDkuNzc3NzggOS43OTA4NiA5Ljc3Nzc4IDEyQzkuNzc3NzggMTIuODQ5OSA5LjUyMDEgMTMuNjM3OCA5LjA4MDczIDE0LjI4NTdIMTQuOTE5M0MxNC40Nzk5IDEzLjYzNzggMTQuMjIyMiAxMi44NDk5IDE0LjIyMjIgMTJDMTQuMjIyMiA5Ljc5MDg2IDE1Ljk2MzMgOCAxOC4xMTExIDhDMjAuMjU4OSA4IDIyIDkuNzkwODYgMjIgMTJDMjIgMTQuMjA5MSAyMC4yNTg5IDE2IDE4LjExMTEgMTZINS44ODg4OVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class RecordMinimalisticBoldIcon extends StatelessWidget {
  /// Creates the `record-minimalistic` icon in the bold style.
  const RecordMinimalisticBoldIcon({
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
    name: 'record-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.88889 16C3.74111 16 2 14.2091 2 12C2 9.79086 3.74111 8 5.88889 8C8.03666 8 9.77778 9.79086 9.77778 12C9.77778 12.8499 9.5201 13.6378 9.08073 14.2857H14.9193C14.4799 13.6378 14.2222 12.8499 14.2222 12C14.2222 9.79086 15.9633 8 18.1111 8C20.2589 8 22 9.79086 22 12C22 14.2091 20.2589 16 18.1111 16H5.88889Z" fill="currentColor"/>''',
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
