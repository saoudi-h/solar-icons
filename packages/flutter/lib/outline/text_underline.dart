// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00Ljc1IDNDNC43NSAyLjU4NTc5IDQuNDE0MjEgMi4yNSA0IDIuMjVDMy41ODU3OSAyLjI1IDMuMjUgMi41ODU3OSAzLjI1IDNWOUMzLjI1IDEzLjgzMjUgNy4xNjc1MSAxNy43NSAxMiAxNy43NUMxNi44MzI1IDE3Ljc1IDIwLjc1IDEzLjgzMjUgMjAuNzUgOVYzQzIwLjc1IDIuNTg1NzkgMjAuNDE0MiAyLjI1IDIwIDIuMjVDMTkuNTg1OCAyLjI1IDE5LjI1IDIuNTg1NzkgMTkuMjUgM1Y5QzE5LjI1IDEzLjAwNDEgMTYuMDA0MSAxNi4yNSAxMiAxNi4yNUM3Ljk5NTk0IDE2LjI1IDQuNzUgMTMuMDA0MSA0Ljc1IDlWM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTQgMjAuMjVDMy41ODU3OSAyMC4yNSAzLjI1IDIwLjU4NTggMy4yNSAyMUMzLjI1IDIxLjQxNDIgMy41ODU3OSAyMS43NSA0IDIxLjc1SDIwQzIwLjQxNDIgMjEuNzUgMjAuNzUgMjEuNDE0MiAyMC43NSAyMUMyMC43NSAyMC41ODU4IDIwLjQxNDIgMjAuMjUgMjAgMjAuMjVINFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class TextUnderlineOutlineIcon extends StatelessWidget {
  /// Creates the `text-underline` icon in the outline style.
  const TextUnderlineOutlineIcon({
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
    name: 'text-underline',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M4.75 3C4.75 2.58579 4.41421 2.25 4 2.25C3.58579 2.25 3.25 2.58579 3.25 3V9C3.25 13.8325 7.16751 17.75 12 17.75C16.8325 17.75 20.75 13.8325 20.75 9V3C20.75 2.58579 20.4142 2.25 20 2.25C19.5858 2.25 19.25 2.58579 19.25 3V9C19.25 13.0041 16.0041 16.25 12 16.25C7.99594 16.25 4.75 13.0041 4.75 9V3Z" fill="currentColor"/>
<path d="M4 20.25C3.58579 20.25 3.25 20.5858 3.25 21C3.25 21.4142 3.58579 21.75 4 21.75H20C20.4142 21.75 20.75 21.4142 20.75 21C20.75 20.5858 20.4142 20.25 20 20.25H4Z" fill="currentColor"/>''',
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
