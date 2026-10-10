// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik02IDcuMDcwMjZDNy4xNzY2OSA2LjM4OTU4IDguNTQyODUgNiAxMCA2QzE0LjQxODMgNiAxOCA5LjU4MTcyIDE4IDE0QzE4IDE4LjQxODMgMTQuNDE4MyAyMiAxMCAyMkM1LjU4MTcyIDIyIDIgMTguNDE4MyAyIDE0QzIgMTIuNTQyOSAyLjM4OTU4IDExLjE3NjcgMy4wNzAyNiAxMCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNS42MzU3IDguMzM0MjdMMjEuOTk5OCAyTTE2Ljk5OTggMkgyMS45OTk4VjciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class MenBrokenIcon extends StatelessWidget {
  /// Creates the `men` icon in the broken style.
  const MenBrokenIcon({
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
    name: 'men',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M6 7.07026C7.17669 6.38958 8.54285 6 10 6C14.4183 6 18 9.58172 18 14C18 18.4183 14.4183 22 10 22C5.58172 22 2 18.4183 2 14C2 12.5429 2.38958 11.1767 3.07026 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.6357 8.33427L21.9998 2M16.9998 2H21.9998V7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
