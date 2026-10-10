// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `record-minimalistic` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDEyQzIyIDE0LjIwOTEgMjAuMjA5MSAxNiAxOCAxNkMxNS43OTA5IDE2IDE0IDE0LjIwOTEgMTQgMTJDMTQgOS43OTA4NiAxNS43OTA5IDggMTggOEMyMC4yMDkxIDggMjIgOS43OTA4NiAyMiAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEwIDEyQzEwIDE0LjIwOTEgOC4yMDkxNCAxNiA2IDE2QzMuNzkwODYgMTYgMiAxNC4yMDkxIDIgMTJDMiA5Ljc5MDg2IDMuNzkwODYgOCA2IDhDOC4yMDkxNCA4IDEwIDkuNzkwODYgMTAgMTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTYgMTZIMThDMTYuOTg1NiAxNiAxNi4wNTkzIDE1LjYyMjQgMTUuMzU0MiAxNUg4LjY0NTgyQzcuOTQwNjkgMTUuNjIyNCA3LjAxNDQ1IDE2IDYgMTZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RecordMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `record-minimalistic` icon in the boldDuotone style.
  const RecordMinimalisticBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M22 12C22 14.2091 20.2091 16 18 16C15.7909 16 14 14.2091 14 12C14 9.79086 15.7909 8 18 8C20.2091 8 22 9.79086 22 12Z" fill="currentColor"/>
<path d="M10 12C10 14.2091 8.20914 16 6 16C3.79086 16 2 14.2091 2 12C2 9.79086 3.79086 8 6 8C8.20914 8 10 9.79086 10 12Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M6 16H18C16.9856 16 16.0593 15.6224 15.3542 15H8.64582C7.94069 15.6224 7.01445 16 6 16Z" fill="currentColor"/>''',
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
