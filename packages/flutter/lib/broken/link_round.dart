// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMCAxNUgxMkMxNS4zMTM3IDE1IDE4IDEyLjMxMzcgMTggOUMxOCA1LjY4NjI5IDE1LjMxMzcgMyAxMiAzSDhDNC42ODYyOSAzIDIgNS42ODYyOSAyIDlDMiAxMC41MzY3IDIuNTc3NzEgMTEuOTM4NSAzLjUyNzc5IDEzTTE2IDIxQzE5LjMxMzcgMjEgMjIgMTguMzEzNyAyMiAxNUMyMiAxMy40NjMzIDIxLjQyMjMgMTIuMDYxNSAyMC40NzIyIDExTTEyIDIxQzguNjg2MjkgMjEgNiAxOC4zMTM3IDYgMTVDNiAxMS42ODYzIDguNjg2MjkgOSAxMiA5SDE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class LinkRoundBrokenIcon extends StatelessWidget {
  /// Creates the `link-round` icon in the broken style.
  const LinkRoundBrokenIcon({
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
    name: 'link-round',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 15H12C15.3137 15 18 12.3137 18 9C18 5.68629 15.3137 3 12 3H8C4.68629 3 2 5.68629 2 9C2 10.5367 2.57771 11.9385 3.52779 13M16 21C19.3137 21 22 18.3137 22 15C22 13.4633 21.4223 12.0615 20.4722 11M12 21C8.68629 21 6 18.3137 6 15C6 11.6863 8.68629 9 12 9H14" stroke="currentColor" stroke-linecap="round"/>''',
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
