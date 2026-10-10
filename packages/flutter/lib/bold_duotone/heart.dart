// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik04LjEwNjI3IDE4LjI0NjhDNS4yOTgxOSAxNi4wODMzIDIgMTMuNTQyMiAyIDkuMTM3MUMyIDQuMjc0MTYgNy41MDAxNiAwLjgyNTQ2NCAxMiA1LjUwMDYzVjIwLjVDMTEgMjAuNSAxMCAxOS43Mjk0IDguOTYxNzMgMTguOTEwOUM4LjY4NDcxIDE4LjY5MjUgOC4zOTgxNCAxOC40NzE3IDguMTA2MjcgMTguMjQ2OFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE1LjAzODMgMTguOTEwOUMxNy45ODA2IDE2LjU5MTQgMjIgMTQgMjIgOS4xMzcxQzIyIDQuMjc0MTYgMTYuNDk5OCAwLjgyNTQ2NCAxMiA1LjUwMDYzVjIwLjVDMTMgMjAuNSAxNCAxOS43Mjk0IDE1LjAzODMgMTguOTEwOVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class HeartBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `heart` icon in the boldDuotone style.
  const HeartBoldDuotoneIcon({
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
    name: 'heart',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15.0383 18.9109C17.9806 16.5914 22 14 22 9.1371C22 4.27416 16.4998 0.825464 12 5.50063V20.5C13 20.5 14 19.7294 15.0383 18.9109Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M8.10627 18.2468C5.29819 16.0833 2 13.5422 2 9.1371C2 4.27416 7.50016 0.825464 12 5.50063V20.5C11 20.5 10 19.7294 8.96173 18.9109C8.68471 18.6925 8.39814 18.4717 8.10627 18.2468Z" fill="currentColor"/>''',
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
