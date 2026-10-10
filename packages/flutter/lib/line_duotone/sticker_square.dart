// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAyMkgxNUMxOC44NjYgMjIgMjIgMTguODY2IDIyIDE1VjEyQzIyIDcuMjg1OTUgMjIgNC45Mjg5MyAyMC41MzU1IDMuNDY0NDdDMTkuMDcxMSAyIDE2LjcxNCAyIDEyIDJDNy4yODU5NSAyIDQuOTI4OTMgMiAzLjQ2NDQ3IDMuNDY0NDdDMiA0LjkyODkzIDIgNy4yODU5NSAyIDEyQzIgMTYuNzE0IDIgMTkuMDcxMSAzLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE1IDIyQzE1IDIwLjEzODcgMTUgMTkuMjA4MSAxNS4yNDQ3IDE4LjQ1NDlDMTUuNzM5MyAxNi45MzI3IDE2LjkzMjcgMTUuNzM5MyAxOC40NTQ5IDE1LjI0NDdDMTkuMjA4MSAxNSAyMC4xMzg3IDE1IDIyIDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class StickerSquareLineDuotoneIcon extends StatelessWidget {
  /// Creates the `sticker-square` icon in the lineDuotone style.
  const StickerSquareLineDuotoneIcon({
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
    name: 'sticker-square',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 22H15C18.866 22 22 18.866 22 15V12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15 22C15 20.1387 15 19.2081 15.2447 18.4549C15.7393 16.9327 16.9327 15.7393 18.4549 15.2447C19.2081 15 20.1387 15 22 15" stroke="currentColor" stroke-linecap="round"/>''',
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
