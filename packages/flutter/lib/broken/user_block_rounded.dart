// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iNiIgcj0iNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMC4xMjExIDE1Ljg3ODdMMTUuODc4NiAyMC4xMjEzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBjeD0iMTgiIGN5PSIxOCIgcj0iMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMyAyMC45NTk1QzEyLjY3MzQgMjAuOTg2MiAxMi4zMzk1IDIxIDEyIDIxQzguMTM0MDEgMjEgNSAxOS4yMDkxIDUgMTdDNSAxNi42NTQ3IDUuMDc2NTcgMTYuMzE5NiA1LjIyMDUzIDE2TTE0LjUgMTMuMjYyNkMxMy43MjM2IDEzLjA5MyAxMi44ODA4IDEzIDEyIDEzQzEwLjkyNjQgMTMgOS45MDkyNiAxMy4xMzgxIDkgMTMuMzg0OSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class UserBlockRoundedBrokenIcon extends StatelessWidget {
  /// Creates the `user-block-rounded` icon in the broken style.
  const UserBlockRoundedBrokenIcon({
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
    name: 'user-block-rounded',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.1211 15.8787L15.8786 20.1213" stroke="currentColor" stroke-linecap="round"/>
<circle cx="18" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 20.9595C12.6734 20.9862 12.3395 21 12 21C8.13401 21 5 19.2091 5 17C5 16.6547 5.07657 16.3196 5.22053 16M14.5 13.2626C13.7236 13.093 12.8808 13 12 13C10.9264 13 9.90926 13.1381 9 13.3849" stroke="currentColor" stroke-linecap="round"/>''',
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
