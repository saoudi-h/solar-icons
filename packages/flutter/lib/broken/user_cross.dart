// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEwIiBjeT0iNiIgcj0iNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMC40MTQxIDExLjQxNDJMMTguOTk5OSAxME0xOC45OTk5IDEwTDE3LjU4NTcgOC41ODU4TTE4Ljk5OTkgMTBMMjAuNDE0MSA4LjU4NTc4TTE4Ljk5OTkgMTBMMTcuNTg1NyAxMS40MTQyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE3Ljk5NzUgMThDMTggMTcuODM1OCAxOCAxNy42NjkgMTggMTcuNUMxOCAxNS4wMTQ3IDE0LjQxODMgMTMgMTAgMTNDNS41ODE3MiAxMyAyIDE1LjAxNDcgMiAxNy41QzIgMTkuOTg1MyAyIDIyIDEwIDIyQzEyLjIzMSAyMiAxMy44Mzk4IDIxLjg0MzMgMTUgMjEuNTYzNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class UserCrossBrokenIcon extends StatelessWidget {
  /// Creates the `user-cross` icon in the broken style.
  const UserCrossBrokenIcon({
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
    name: 'user-cross',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="10" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.4141 11.4142L18.9999 10M18.9999 10L17.5857 8.5858M18.9999 10L20.4141 8.58578M18.9999 10L17.5857 11.4142" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.9975 18C18 17.8358 18 17.669 18 17.5C18 15.0147 14.4183 13 10 13C5.58172 13 2 15.0147 2 17.5C2 19.9853 2 22 10 22C12.231 22 13.8398 21.8433 15 21.5634" stroke="currentColor" stroke-linecap="round"/>''',
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
