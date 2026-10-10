// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMgMTJDMjMgMTAuOTY0OCAyMi40Njk1IDkuOTI5NTMgMjEuNDA4NiA5LjM1MjU4TDguNTk2NjEgMi4zODU0OEM2LjUzNDM1IDEuMjY0MDIgNCAyLjcyMzY4IDQgNS4wMzI5TDQgMTJIMjNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTguNTk2NjIgMjEuNjE0NUwyMS40MDg2IDE0LjY0NzRDMjIuNDY5NSAxNC4wNzA1IDIzIDEzLjAzNTIgMjMgMTJINEw0IDE4Ljk2NzFDNCAyMS4yNzYzIDYuNTM0MzUgMjIuNzM2IDguNTk2NjIgMjEuNjE0NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class PlayBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `play` icon in the boldDuotone style.
  const PlayBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M23 12C23 10.9648 22.4695 9.92953 21.4086 9.35258L8.59661 2.38548C6.53435 1.26402 4 2.72368 4 5.0329L4 12H23Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.59662 21.6145L21.4086 14.6474C22.4695 14.0705 23 13.0352 23 12H4L4 18.9671C4 21.2763 6.53435 22.736 8.59662 21.6145Z" fill="currentColor"/>''',
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
