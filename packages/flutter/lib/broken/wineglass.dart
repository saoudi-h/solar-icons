// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAxNS4yODU2VjIwLjk5OTlNMTIgMjAuOTk5OUgxNS43NU0xMiAyMC45OTk5SDguMjVNOCAzSDYuODk0NzRDNS44NDgzIDMgNSAzLjg0ODMgNSA0Ljg5NDc0VjhDNSAxMS44NjYgOC4xMzQwMSAxNSAxMiAxNUMxNS44NjYgMTUgMTkgMTEuODY2IDE5IDhWNC44OTQ3NEMxOSAzLjg0ODMgMTguMTUxNyAzIDE3LjEwNTMgM0gxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik01LjUgOS4wMDAxQzUuNSA5LjAwMDEgNy41ODExNSA4LjA4NzM2IDkgOC4wMDAxQzEwLjIzMjYgNy45MjQyOCAxMS4xMTYzIDguNDYyMTkgMTIgOS4wMDAxTTE4LjUgOS4wMDAxQzE4LjUgOS4wMDAxIDE2LjQxODggOS45MTI4MyAxNSAxMC4wMDAxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class WineglassBrokenIcon extends StatelessWidget {
  /// Creates the `wineglass` icon in the broken style.
  const WineglassBrokenIcon({
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
    name: 'wineglass',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 15.2856V20.9999M12 20.9999H15.75M12 20.9999H8.25M8 3H6.89474C5.8483 3 5 3.8483 5 4.89474V8C5 11.866 8.13401 15 12 15C15.866 15 19 11.866 19 8V4.89474C19 3.8483 18.1517 3 17.1053 3H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.5 9.0001C5.5 9.0001 7.58115 8.08736 9 8.0001C10.2326 7.92428 11.1163 8.46219 12 9.0001M18.5 9.0001C18.5 9.0001 16.4188 9.91283 15 10.0001" stroke="currentColor" stroke-linecap="round"/>''',
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
