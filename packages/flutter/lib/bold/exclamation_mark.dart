// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `exclamation-mark` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDIxLjI1QzEyLjQxNDIgMjEuMjUgMTIuNzUgMjEuNTg1OCAxMi43NSAyMkMxMi43NSAyMi40MTQyIDEyLjQxNDIgMjIuNzUgMTIgMjIuNzVDMTEuNTg1OCAyMi43NSAxMS4yNSAyMi40MTQyIDExLjI1IDIyQzExLjI1IDIxLjU4NTggMTEuNTg1OCAyMS4yNSAxMiAyMS4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDEuMjVDMTIuNDE0MiAxLjI1IDEyLjc1IDEuNTg1NzkgMTIuNzUgMlYxNS4zMzNDMTIuNzUgMTUuNzQ3MiAxMi40MTQyIDE2LjA4MyAxMiAxNi4wODNDMTEuNTg1OCAxNi4wODMgMTEuMjUgMTUuNzQ3MiAxMS4yNSAxNS4zMzNWMkMxMS4yNSAxLjU4NTc5IDExLjU4NTggMS4yNSAxMiAxLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ExclamationMarkBoldIcon extends StatelessWidget {
  /// Creates the `exclamation-mark` icon in the bold style.
  const ExclamationMarkBoldIcon({
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
    name: 'exclamation-mark',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 21.25C12.4142 21.25 12.75 21.5858 12.75 22C12.75 22.4142 12.4142 22.75 12 22.75C11.5858 22.75 11.25 22.4142 11.25 22C11.25 21.5858 11.5858 21.25 12 21.25Z" fill="currentColor"/>
<path d="M12 1.25C12.4142 1.25 12.75 1.58579 12.75 2V15.333C12.75 15.7472 12.4142 16.083 12 16.083C11.5858 16.083 11.25 15.7472 11.25 15.333V2C11.25 1.58579 11.5858 1.25 12 1.25Z" fill="currentColor"/>''',
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
