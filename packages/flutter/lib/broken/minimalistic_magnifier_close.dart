// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `minimalistic-magnifier-close` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDIwTDIyIDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTYuNzUgMy4yNzA5M0M4LjE0NzMyIDIuNDYyNjIgOS43Njk2NCAyIDExLjUgMkMxNi43NDY3IDIgMjEgNi4yNTMyOSAyMSAxMS41QzIxIDE2Ljc0NjcgMTYuNzQ2NyAyMSAxMS41IDIxQzYuMjUzMjkgMjEgMiAxNi43NDY3IDIgMTEuNUMyIDkuNzY5NjQgMi40NjI2MiA4LjE0NzMyIDMuMjcwOTMgNi43NSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05LjczMjIzIDkuNzMyNjFMMTEuNSAxMS41MDA0TTExLjUgMTEuNTAwNEwxMy4yNjc4IDEzLjI2ODFNMTEuNSAxMS41MDA0TDkuNzMyMjMgMTMuMjY4MU0xMS41IDExLjUwMDRMMTMuMjY3OCA5LjczMjYxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MinimalisticMagnifierCloseBrokenIcon extends StatelessWidget {
  /// Creates the `minimalistic-magnifier-close` icon in the broken style.
  const MinimalisticMagnifierCloseBrokenIcon({
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
    name: 'minimalistic-magnifier-close',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 20L22 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.75 3.27093C8.14732 2.46262 9.76964 2 11.5 2C16.7467 2 21 6.25329 21 11.5C21 16.7467 16.7467 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 9.76964 2.46262 8.14732 3.27093 6.75" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.73223 9.73261L11.5 11.5004M11.5 11.5004L13.2678 13.2681M11.5 11.5004L9.73223 13.2681M11.5 11.5004L13.2678 9.73261" stroke="currentColor" stroke-linecap="round"/>''',
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
