// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIwLjQwODYgOS4zNTI1OEMyMi41MzA1IDEwLjUwNjUgMjIuNTMwNSAxMy40OTM1IDIwLjQwODYgMTQuNjQ3NEw3LjU5NjYyIDIxLjYxNDVDNS41MzQzNSAyMi43MzYgMyAyMS4yNzYzIDMgMTguOTY3MUwzIDUuMDMyOUMzIDIuNzIzNjggNS41MzQzNSAxLjI2NDAyIDcuNTk2NjEgMi4zODU0OEwyMC40MDg2IDkuMzUyNThaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDEyQzIyIDEwLjk2NDggMjEuNDY5NSA5LjkyOTUzIDIwLjQwODYgOS4zNTI1OEw3LjU5NjYxIDIuMzg1NDhDNS41MzQzNSAxLjI2NDAyIDMgMi43MjM2OCAzIDUuMDMyOUwzIDEyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PlayLineDuotoneIcon extends StatelessWidget {
  /// Creates the `play` icon in the lineDuotone style.
  const PlayLineDuotoneIcon({
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
    name: 'play',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 12C22 10.9648 21.4695 9.92953 20.4086 9.35258L7.59661 2.38548C5.53435 1.26402 3 2.72368 3 5.0329L3 12" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.4086 9.35258C22.5305 10.5065 22.5305 13.4935 20.4086 14.6474L7.59662 21.6145C5.53435 22.736 3 21.2763 3 18.9671L3 5.0329C3 2.72368 5.53435 1.26402 7.59661 2.38548L20.4086 9.35258Z" stroke="currentColor" stroke-linecap="round"/>''',
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
