// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `text-italic-circle` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyQzYuNDc3MTUgMiAyIDYuNDc3MTUgMiAxMkMyIDE3LjUyMjggNi40NzcxNSAyMiAxMiAyMkMxNy41MjI4IDIyIDIyIDE3LjUyMjggMjIgMTJDMjIgNi40NzcxNSAxNy41MjI4IDIgMTIgMlpNMTAuNjY2NyA2LjI1SDEzLjMxNjJDMTMuMzI3MyA2LjI0OTc1IDEzLjMzODQgNi4yNDk3NSAxMy4zNDk1IDYuMjVIMTZDMTYuNDE0MiA2LjI1IDE2Ljc1IDYuNTg1NzkgMTYuNzUgN0MxNi43NSA3LjQxNDIxIDE2LjQxNDIgNy43NSAxNiA3Ljc1SDEzLjkwOTVMMTEuNjQyOSAxNi4yNUgxMy4zMzMzQzEzLjc0NzUgMTYuMjUgMTQuMDgzMyAxNi41ODU4IDE0LjA4MzMgMTdDMTQuMDgzMyAxNy40MTQyIDEzLjc0NzUgMTcuNzUgMTMuMzMzMyAxNy43NUgxMC42ODM4QzEwLjY3MjcgMTcuNzUwMiAxMC42NjE2IDE3Ljc1MDIgMTAuNjUwNSAxNy43NUg4QzcuNTg1NzkgMTcuNzUgNy4yNSAxNy40MTQyIDcuMjUgMTdDNy4yNSAxNi41ODU4IDcuNTg1NzkgMTYuMjUgOCAxNi4yNUgxMC4wOTA1TDEyLjM1NzEgNy43NUgxMC42NjY3QzEwLjI1MjUgNy43NSA5LjkxNjY3IDcuNDE0MjEgOS45MTY2NyA3QzkuOTE2NjcgNi41ODU3OSAxMC4yNTI1IDYuMjUgMTAuNjY2NyA2LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class TextItalicCircleBoldIcon extends StatelessWidget {
  /// Creates the `text-italic-circle` icon in the bold style.
  const TextItalicCircleBoldIcon({
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
    name: 'text-italic-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2ZM10.6667 6.25H13.3162C13.3273 6.24975 13.3384 6.24975 13.3495 6.25H16C16.4142 6.25 16.75 6.58579 16.75 7C16.75 7.41421 16.4142 7.75 16 7.75H13.9095L11.6429 16.25H13.3333C13.7475 16.25 14.0833 16.5858 14.0833 17C14.0833 17.4142 13.7475 17.75 13.3333 17.75H10.6838C10.6727 17.7502 10.6616 17.7502 10.6505 17.75H8C7.58579 17.75 7.25 17.4142 7.25 17C7.25 16.5858 7.58579 16.25 8 16.25H10.0905L12.3571 7.75H10.6667C10.2525 7.75 9.91667 7.41421 9.91667 7C9.91667 6.58579 10.2525 6.25 10.6667 6.25Z" fill="currentColor"/>''',
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
