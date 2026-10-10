// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `info-circle` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDE3Ljc1QzEyLjQxNDIgMTcuNzUgMTIuNzUgMTcuNDE0MiAxMi43NSAxN1YxMUMxMi43NSAxMC41ODU4IDEyLjQxNDIgMTAuMjUgMTIgMTAuMjVDMTEuNTg1OCAxMC4yNSAxMS4yNSAxMC41ODU4IDExLjI1IDExVjE3QzExLjI1IDE3LjQxNDIgMTEuNTg1OCAxNy43NSAxMiAxNy43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDdDMTIuNTUyMyA3IDEzIDcuNDQ3NzIgMTMgOEMxMyA4LjU1MjI4IDEyLjU1MjMgOSAxMiA5QzExLjQ0NzcgOSAxMSA4LjU1MjI4IDExIDhDMTEgNy40NDc3MiAxMS40NDc3IDcgMTIgN1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xLjI1IDEyQzEuMjUgNi4wNjI5NCA2LjA2Mjk0IDEuMjUgMTIgMS4yNUMxNy45MzcxIDEuMjUgMjIuNzUgNi4wNjI5NCAyMi43NSAxMkMyMi43NSAxNy45MzcxIDE3LjkzNzEgMjIuNzUgMTIgMjIuNzVDNi4wNjI5NCAyMi43NSAxLjI1IDE3LjkzNzEgMS4yNSAxMlpNMTIgMi43NUM2Ljg5MTM3IDIuNzUgMi43NSA2Ljg5MTM3IDIuNzUgMTJDMi43NSAxNy4xMDg2IDYuODkxMzcgMjEuMjUgMTIgMjEuMjVDMTcuMTA4NiAyMS4yNSAyMS4yNSAxNy4xMDg2IDIxLjI1IDEyQzIxLjI1IDYuODkxMzcgMTcuMTA4NiAyLjc1IDEyIDIuNzVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class InfoCircleOutlineIcon extends StatelessWidget {
  /// Creates the `info-circle` icon in the outline style.
  const InfoCircleOutlineIcon({
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
    name: 'info-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12 17.75C12.4142 17.75 12.75 17.4142 12.75 17V11C12.75 10.5858 12.4142 10.25 12 10.25C11.5858 10.25 11.25 10.5858 11.25 11V17C11.25 17.4142 11.5858 17.75 12 17.75Z" fill="currentColor"/>
<path d="M12 7C12.5523 7 13 7.44772 13 8C13 8.55228 12.5523 9 12 9C11.4477 9 11 8.55228 11 8C11 7.44772 11.4477 7 12 7Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75Z" fill="currentColor"/>''',
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
