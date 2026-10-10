// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjkiIGN5PSI2IiByPSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGVsbGlwc2UgY3g9IjkiIGN5PSIxNyIgcng9IjciIHJ5PSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDkuNjk5NzNDMTUgMTEuMTEyMSAxNi4yMDU4IDExLjg2NDggMTcuMDg4NSAxMi41Mzg1QzE3LjQgMTIuNzc2MiAxNy43IDEzIDE4IDEzQzE4LjMgMTMgMTguNiAxMi43NzYyIDE4LjkxMTUgMTIuNTM4NUMxOS43OTQyIDExLjg2NDggMjEgMTEuMTEyMSAyMSA5LjY5OTczQzIxIDguMjg3MzIgMTkuMzUgNy4yODU2NyAxOCA4LjY0MzU0QzE2LjY1IDcuMjg1NjcgMTUgOC4yODczMiAxNSA5LjY5OTczWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class UserHeartRoundedLinearIcon extends StatelessWidget {
  /// Creates the `user-heart-rounded` icon in the linear style.
  const UserHeartRoundedLinearIcon({
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
    name: 'user-heart-rounded',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="9" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="17" rx="7" ry="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 9.69973C15 11.1121 16.2058 11.8648 17.0885 12.5385C17.4 12.7762 17.7 13 18 13C18.3 13 18.6 12.7762 18.9115 12.5385C19.7942 11.8648 21 11.1121 21 9.69973C21 8.28732 19.35 7.28567 18 8.64354C16.65 7.28567 15 8.28732 15 9.69973Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
