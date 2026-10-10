// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-right-down` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUuNDY5NjcgNi41MzAzM0M1LjE3Njc4IDYuMjM3NDQgNS4xNzY3OCA1Ljc2MjU2IDUuNDY5NjcgNS40Njk2N0M1Ljc2MjU2IDUuMTc2NzggNi4yMzc0NCA1LjE3Njc4IDYuNTMwMzMgNS40Njk2N0wxMy41IDEyLjQzOTNMMTcuNDY5NyA4LjQ2OTY3QzE3LjY4NDIgOC4yNTUxNyAxOC4wMDY4IDguMTkxIDE4LjI4NyA4LjMwNzA5QzE4LjU2NzMgOC40MjMxOCAxOC43NSA4LjY5NjY1IDE4Ljc1IDlWMThDMTguNzUgMTguNDE0MiAxOC40MTQyIDE4Ljc1IDE4IDE4Ljc1TDkgMTguNzVDOC42OTY2NSAxOC43NSA4LjQyMzE4IDE4LjU2NzMgOC4zMDcwOSAxOC4yODdDOC4xOTEwMSAxOC4wMDY4IDguMjU1MTcgMTcuNjg0MiA4LjQ2OTY3IDE3LjQ2OTdMMTIuNDM5MyAxMy41TDUuNDY5NjcgNi41MzAzM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowRightDownBoldIcon extends StatelessWidget {
  /// Creates the `arrow-right-down` icon in the bold style.
  const ArrowRightDownBoldIcon({
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
    name: 'arrow-right-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.46967 6.53033C5.17678 6.23744 5.17678 5.76256 5.46967 5.46967C5.76256 5.17678 6.23744 5.17678 6.53033 5.46967L13.5 12.4393L17.4697 8.46967C17.6842 8.25517 18.0068 8.191 18.287 8.30709C18.5673 8.42318 18.75 8.69665 18.75 9V18C18.75 18.4142 18.4142 18.75 18 18.75L9 18.75C8.69665 18.75 8.42318 18.5673 8.30709 18.287C8.19101 18.0068 8.25517 17.6842 8.46967 17.4697L12.4393 13.5L5.46967 6.53033Z" fill="currentColor"/>''',
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
