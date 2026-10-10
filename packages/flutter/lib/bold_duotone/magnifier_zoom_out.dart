// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxnIG9wYWNpdHk9IjAuNSI+CjxwYXRoIGQ9Ik0xMS4xNTY2IDIwLjMxMzNDMTYuMjEzNyAyMC4zMTMzIDIwLjMxMzMgMTYuMjEzNyAyMC4zMTMzIDExLjE1NjZDMjAuMzEzMyA2LjA5OTU2IDE2LjIxMzcgMiAxMS4xNTY2IDJDNi4wOTk1NiAyIDIgNi4wOTk1NiAyIDExLjE1NjZDMiAxNi4yMTM3IDYuMDk5NTYgMjAuMzEzMyAxMS4xNTY2IDIwLjMxMzNaIiBmaWxsPSIjMUMyNzRDIi8+CjwvZz4KPHBhdGggZD0iTTIxLjc4ODEgMjAuNzY1NkMyMi4wNzA0IDIxLjA0NzkgMjIuMDcwNCAyMS41MDU4IDIxLjc4ODEgMjEuNzg4MUMyMS41MDU4IDIyLjA3MDQgMjEuMDQ3OSAyMi4wNzA0IDIwLjc2NTYgMjEuNzg4MUwxNy4wOTk2IDE4LjEyMjFDMTcuNDY2NiAxNy44MDg2IDE3LjgwODYgMTcuNDY2NiAxOC4xMjIxIDE3LjA5OTZMMjEuNzg4MSAyMC43NjU2WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTMuNTY1NCAxMC40MzM2QzEzLjk2NDYgMTAuNDMzNiAxNC4yODggMTAuNzU3MSAxNC4yODgxIDExLjE1NjJDMTQuMjg4MSAxMS41NTU1IDEzLjk2NDcgMTEuODc4OSAxMy41NjU0IDExLjg3ODlIOC43NDYwOUM4LjM0Njk2IDExLjg3ODggOC4wMjM0NCAxMS41NTU0IDguMDIzNDQgMTEuMTU2MkM4LjAyMzU2IDEwLjc1NzIgOC4zNDcwNCAxMC40MzM3IDguNzQ2MDkgMTAuNDMzNkgxMy41NjU0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MagnifierZoomOutBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `magnifier-zoom-out` icon in the boldDuotone style.
  const MagnifierZoomOutBoldDuotoneIcon({
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
    name: 'magnifier-zoom-out',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.7881 20.7656C22.0704 21.0479 22.0704 21.5058 21.7881 21.7881C21.5058 22.0704 21.0479 22.0704 20.7656 21.7881L17.0996 18.1221C17.4666 17.8086 17.8086 17.4666 18.1221 17.0996L21.7881 20.7656Z" fill="currentColor"/>
<path d="M13.5654 10.4336C13.9646 10.4336 14.288 10.7571 14.2881 11.1562C14.2881 11.5555 13.9647 11.8789 13.5654 11.8789H8.74609C8.34696 11.8788 8.02344 11.5554 8.02344 11.1562C8.02356 10.7572 8.34704 10.4337 8.74609 10.4336H13.5654Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M11.1566 20.3133C16.2137 20.3133 20.3133 16.2137 20.3133 11.1566C20.3133 6.09956 16.2137 2 11.1566 2C6.09956 2 2 6.09956 2 11.1566C2 16.2137 6.09956 20.3133 11.1566 20.3133Z" fill="currentColor"/>
</g>''',
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
