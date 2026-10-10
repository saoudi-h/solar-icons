// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-check` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTEiIGN5PSI2IiByPSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE3IDEwLjNDMTcuNTIwNyAxMC43Njg2IDE3LjgxMjYgMTEuMDMxNCAxOC4zMzMzIDExLjVMMjEgOC41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE4Ljk5NzUgMThDMTkgMTcuODM1OCAxOSAxNy42NjkgMTkgMTcuNUMxOSAxNS4wMTQ3IDE1LjQxODMgMTMgMTEgMTNDNi41ODE3MiAxMyAzIDE1LjAxNDcgMyAxNy41QzMgMTkuOTg1MyAzIDIyIDExIDIyQzEzLjIzMSAyMiAxNC44Mzk4IDIxLjg0MzMgMTYgMjEuNTYzNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class UserCheckBrokenIcon extends StatelessWidget {
  /// Creates the `user-check` icon in the broken style.
  const UserCheckBrokenIcon({
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
    name: 'user-check',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="11" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 10.3C17.5207 10.7686 17.8126 11.0314 18.3333 11.5L21 8.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.9975 18C19 17.8358 19 17.669 19 17.5C19 15.0147 15.4183 13 11 13C6.58172 13 3 15.0147 3 17.5C3 19.9853 3 22 11 22C13.231 22 14.8398 21.8433 16 21.5634" stroke="currentColor" stroke-linecap="round"/>''',
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
