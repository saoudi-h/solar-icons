// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-back` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIxLjk5OTggMTcuNTczN0wyMS45OTk4IDYuNDI2MzJDMjEuOTk5OCA0LjU3ODk1IDIwLjM5OTEgMy40MTEyMiAxOS4wOTY2IDQuMzA4MzhMMTMgOC43Njg0NEwxMyA3LjEyMzAzQzEzIDUuNTA2NTggMTEuNTMyNyA0LjQ4NDgyIDEwLjMzODggNS4yNjk4M0wyLjkyMTM2IDEwLjE0NjhDMS42OTI4OCAxMC45NTQ1IDEuNjkyODggMTMuMDQ1NSAyLjkyMTM1IDEzLjg1MzJMMTAuMzM4OCAxOC43MzAyQzExLjUzMjcgMTkuNTE1MiAxMyAxOC40OTM0IDEzIDE2Ljg3N1YxNS4yMzE2TDE5LjA5NjYgMTkuNjkxNkMyMC4zOTkxIDIwLjU4ODggMjEuOTk5OCAxOS40MjExIDIxLjk5OTggMTcuNTczN1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class RewindBackBoldIcon extends StatelessWidget {
  /// Creates the `rewind-back` icon in the bold style.
  const RewindBackBoldIcon({
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
    name: 'rewind-back',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21.9998 17.5737L21.9998 6.42632C21.9998 4.57895 20.3991 3.41122 19.0966 4.30838L13 8.76844L13 7.12303C13 5.50658 11.5327 4.48482 10.3388 5.26983L2.92136 10.1468C1.69288 10.9545 1.69288 13.0455 2.92135 13.8532L10.3388 18.7302C11.5327 19.5152 13 18.4934 13 16.877V15.2316L19.0966 19.6916C20.3991 20.5888 21.9998 19.4211 21.9998 17.5737Z" fill="currentColor"/>''',
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
