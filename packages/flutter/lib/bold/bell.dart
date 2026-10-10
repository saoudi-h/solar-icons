// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bell` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTguMzUxNzkgMjAuMjQxOEM5LjE5Mjg4IDIxLjMxMSAxMC41MTQyIDIyIDEyIDIyQzEzLjQ4NTggMjIgMTQuODA3MSAyMS4zMTEgMTUuNjQ4MiAyMC4yNDE4QzEzLjIyNjQgMjAuNTcgMTAuNzczNiAyMC41NyA4LjM1MTc5IDIwLjI0MThaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xOC43NDkxIDlWOS43MDQxQzE4Ljc0OTEgMTAuNTQ5MSAxOC45OTAzIDExLjM3NTIgMTkuNDQyMiAxMi4wNzgyTDIwLjU0OTYgMTMuODAxMkMyMS41NjEyIDE1LjM3NDkgMjAuNzg5IDE3LjUxMzkgMTkuMDI5NiAxOC4wMTE2QzE0LjQyNzMgMTkuMzEzNCA5LjU3Mjc0IDE5LjMxMzQgNC45NzAzNiAxOC4wMTE2QzMuMjExMDUgMTcuNTEzOSAyLjQzODgyIDE1LjM3NDkgMy40NTAzNiAxMy44MDEyTDQuNTU3OCAxMi4wNzgyQzUuMDA5NzIgMTEuMzc1MiA1LjI1MDg3IDEwLjU0OTEgNS4yNTA4NyA5LjcwNDFWOUM1LjI1MDg3IDUuMTM0MDEgOC4yNzI1NiAyIDEyIDJDMTUuNzI3NCAyIDE4Ljc0OTEgNS4xMzQwMSAxOC43NDkxIDlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class BellBoldIcon extends StatelessWidget {
  /// Creates the `bell` icon in the bold style.
  const BellBoldIcon({
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
    name: 'bell',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8.35179 20.2418C9.19288 21.311 10.5142 22 12 22C13.4858 22 14.8071 21.311 15.6482 20.2418C13.2264 20.57 10.7736 20.57 8.35179 20.2418Z" fill="currentColor"/>
<path d="M18.7491 9V9.7041C18.7491 10.5491 18.9903 11.3752 19.4422 12.0782L20.5496 13.8012C21.5612 15.3749 20.789 17.5139 19.0296 18.0116C14.4273 19.3134 9.57274 19.3134 4.97036 18.0116C3.21105 17.5139 2.43882 15.3749 3.45036 13.8012L4.5578 12.0782C5.00972 11.3752 5.25087 10.5491 5.25087 9.7041V9C5.25087 5.13401 8.27256 2 12 2C15.7274 2 18.7491 5.13401 18.7491 9Z" fill="currentColor"/>''',
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
