// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04LjEwNjI3IDE4LjI0NjhDNS4yOTgxOSAxNi4wODMzIDIgMTMuNTQyMiAyIDkuMTM3MUMyIDQuMjc0MTYgNy41MDAxNiAwLjgyNTQ2NCAxMiA1LjUwMDYzTDE0IDcuNDk5MjhDMTQuMjkyOSA3Ljc5MjEyIDE0Ljc2NzggNy43OTIwMyAxNS4wNjA3IDcuNDk5MDhDMTUuMzUzNSA3LjIwNjE0IDE1LjM1MzQgNi43MzEyNyAxNS4wNjA1IDYuNDM4NDNMMTMuMTI4NSA0LjUwNzEyQzE3LjM2ODUgMS40MDMwOSAyMiA0LjY3NDY1IDIyIDkuMTM3MUMyMiAxMy41NDIyIDE4LjcwMTggMTYuMDgzMyAxNS44OTM3IDE4LjI0NjhDMTUuNjAxOSAxOC40NzE3IDE1LjMxNTMgMTguNjkyNSAxNS4wMzgzIDE4LjkxMDlDMTQgMTkuNzI5NCAxMyAyMC41IDEyIDIwLjVDMTEgMjAuNSAxMCAxOS43Mjk0IDguOTYxNzMgMTguOTEwOUM4LjY4NDcxIDE4LjY5MjUgOC4zOTgxNCAxOC40NzE3IDguMTA2MjcgMTguMjQ2OFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class HeartAngleBoldIcon extends StatelessWidget {
  /// Creates the `heart-angle` icon in the bold style.
  const HeartAngleBoldIcon({
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
    name: 'heart-angle',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8.10627 18.2468C5.29819 16.0833 2 13.5422 2 9.1371C2 4.27416 7.50016 0.825464 12 5.50063L14 7.49928C14.2929 7.79212 14.7678 7.79203 15.0607 7.49908C15.3535 7.20614 15.3534 6.73127 15.0605 6.43843L13.1285 4.50712C17.3685 1.40309 22 4.67465 22 9.1371C22 13.5422 18.7018 16.0833 15.8937 18.2468C15.6019 18.4717 15.3153 18.6925 15.0383 18.9109C14 19.7294 13 20.5 12 20.5C11 20.5 10 19.7294 8.96173 18.9109C8.68471 18.6925 8.39814 18.4717 8.10627 18.2468Z" fill="currentColor"/>''',
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
