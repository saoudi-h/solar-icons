// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEwIiBjeT0iNiIgcj0iNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNiA5LjY5NjczQzE2IDEwLjY4MTIgMTcuMTY0OSAxMS43MjEzIDE4LjA0MjkgMTIuMzY1NkMxOC40NjI2IDEyLjY3MzYgMTguNjcyNSAxMi44Mjc2IDE5IDEyLjgyNzZDMTkuMzI3NSAxMi44Mjc2IDE5LjUzNzQgMTIuNjczNiAxOS45NTcxIDEyLjM2NTZDMjAuODM1MiAxMS43MjE0IDIyIDEwLjY4MTIgMjIgOS42OTY3MkMyMiA4LjAyMzUgMjAuMzUgNy4zOTg3OSAxOSA4LjY5MTM1QzE3LjY1IDcuMzk4NzkgMTYgOC4wMjM1IDE2IDkuNjk2NzNaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE3Ljk5NzUgMThDMTggMTcuODM1OCAxOCAxNy42NjkgMTggMTcuNUMxOCAxNS4wMTQ3IDE0LjQxODMgMTMgMTAgMTNDNS41ODE3MiAxMyAyIDE1LjAxNDcgMiAxNy41QzIgMTkuOTg1MyAyIDIyIDEwIDIyQzEyLjIzMSAyMiAxMy44Mzk4IDIxLjg0MzMgMTUgMjEuNTYzNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class UserHeartBrokenIcon extends StatelessWidget {
  /// Creates the `user-heart` icon in the broken style.
  const UserHeartBrokenIcon({
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
    name: 'user-heart',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="10" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 9.69673C16 10.6812 17.1649 11.7213 18.0429 12.3656C18.4626 12.6736 18.6725 12.8276 19 12.8276C19.3275 12.8276 19.5374 12.6736 19.9571 12.3656C20.8352 11.7214 22 10.6812 22 9.69672C22 8.0235 20.35 7.39879 19 8.69135C17.65 7.39879 16 8.0235 16 9.69673Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
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
