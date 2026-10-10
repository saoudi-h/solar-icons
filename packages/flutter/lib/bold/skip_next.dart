// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `skip-next` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2LjY1OTggMTQuNjQ3NEMxOC40NDY3IDEzLjQ5MzUgMTguNDQ2NyAxMC41MDY1IDE2LjY1OTggOS4zNTI1OEw1Ljg3MDgzIDIuMzg1NDhDNC4xMzQxOSAxLjI2NDAyIDIgMi43MjM2OCAyIDUuMDMyOVYxOC45NjcxQzIgMjEuMjc2MyA0LjEzNDE5IDIyLjczNiA1Ljg3MDgzIDIxLjYxNDVMMTYuNjU5OCAxNC42NDc0WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjIuNzUgNUMyMi43NSA0LjU4NTc5IDIyLjQxNDIgNC4yNSAyMiA0LjI1QzIxLjU4NTggNC4yNSAyMS4yNSA0LjU4NTc5IDIxLjI1IDVWMTlDMjEuMjUgMTkuNDE0MiAyMS41ODU4IDE5Ljc1IDIyIDE5Ljc1QzIyLjQxNDIgMTkuNzUgMjIuNzUgMTkuNDE0MiAyMi43NSAxOVY1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class SkipNextBoldIcon extends StatelessWidget {
  /// Creates the `skip-next` icon in the bold style.
  const SkipNextBoldIcon({
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
    name: 'skip-next',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.6598 14.6474C18.4467 13.4935 18.4467 10.5065 16.6598 9.35258L5.87083 2.38548C4.13419 1.26402 2 2.72368 2 5.0329V18.9671C2 21.2763 4.13419 22.736 5.87083 21.6145L16.6598 14.6474Z" fill="currentColor"/>
<path d="M22.75 5C22.75 4.58579 22.4142 4.25 22 4.25C21.5858 4.25 21.25 4.58579 21.25 5V19C21.25 19.4142 21.5858 19.75 22 19.75C22.4142 19.75 22.75 19.4142 22.75 19V5Z" fill="currentColor"/>''',
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
