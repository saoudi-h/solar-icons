// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevron-last` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2LjUgNC4yNUMxNi45MTQyIDQuMjUwMDIgMTcuMjUgNC41ODU4IDE3LjI1IDVWMTlDMTcuMjUgMTkuNDE0MiAxNi45MTQyIDE5Ljc1IDE2LjUgMTkuNzVDMTYuMDg1OCAxOS43NSAxNS43NSAxOS40MTQyIDE1Ljc1IDE5VjVDMTUuNzUgNC41ODU3OSAxNi4wODU4IDQuMjUwMDEgMTYuNSA0LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNNy4wMTE2OCA0LjQzMDY2QzcuMzI2MTIgNC4xNjExNiA3Ljc5OTcyIDQuMTk3MzggOC4wNjkzIDQuNTExNzJMMTQuMDY5MyAxMS41MTE3QzE0LjMxIDExLjc5MjYgMTQuMzEgMTIuMjA3NCAxNC4wNjkzIDEyLjQ4ODNMOC4wNjkzIDE5LjQ4ODNDNy43OTk3MiAxOS44MDI2IDcuMzI2MTIgMTkuODM4OCA3LjAxMTY4IDE5LjU2OTNDNi42OTczNCAxOS4yOTk3IDYuNjYxMTEgMTguODI2MiA2LjkzMDYzIDE4LjUxMTdMMTIuNTExNyAxMkw2LjkzMDYzIDUuNDg4MjhDNi42NjExMSA1LjE3Mzg0IDYuNjk3MzQgNC43MDAyNSA3LjAxMTY4IDQuNDMwNjZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ChevronLastBoldIcon extends StatelessWidget {
  /// Creates the `chevron-last` icon in the bold style.
  const ChevronLastBoldIcon({
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
    name: 'chevron-last',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.5 4.25C16.9142 4.25002 17.25 4.5858 17.25 5V19C17.25 19.4142 16.9142 19.75 16.5 19.75C16.0858 19.75 15.75 19.4142 15.75 19V5C15.75 4.58579 16.0858 4.25001 16.5 4.25Z" fill="currentColor"/>
<path d="M7.01168 4.43066C7.32612 4.16116 7.79972 4.19738 8.0693 4.51172L14.0693 11.5117C14.31 11.7926 14.31 12.2074 14.0693 12.4883L8.0693 19.4883C7.79972 19.8026 7.32612 19.8388 7.01168 19.5693C6.69734 19.2997 6.66111 18.8262 6.93063 18.5117L12.5117 12L6.93063 5.48828C6.66111 5.17384 6.69734 4.70025 7.01168 4.43066Z" fill="currentColor"/>''',
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
