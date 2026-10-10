// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAyMVYyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMi44NTcxIDdMMTAgMTBIMTRMMTEuMTQyOSAxMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMy41IDE4VjE5LjVDMTMuNSAxOS45NjU5IDEzLjUgMjAuMTk4OSAxMy40MjM5IDIwLjM4MjdDMTMuMzIyNCAyMC42Mjc3IDEzLjEyNzcgMjAuODIyNCAxMi44ODI3IDIwLjkyMzlDMTIuNjk4OSAyMSAxMi40NjU5IDIxIDEyIDIxQzExLjUzNDEgMjEgMTEuMzAxMSAyMSAxMS4xMTczIDIwLjkyMzlDMTAuODcyMyAyMC44MjI0IDEwLjY3NzYgMjAuNjI3NyAxMC41NzYxIDIwLjM4MjdDMTAuNSAyMC4xOTg5IDEwLjUgMTkuOTY1OSAxMC41IDE5LjVWMTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNC41ODE1MiA3QzQuMjA2NTEgNy45MjY0MyA0IDguOTM5MSA0IDEwQzQgMTQuNDE4MyA3LjU4MTcyIDE4IDEyIDE4QzE2LjQxODMgMTggMjAgMTQuNDE4MyAyMCAxMEMyMCA1LjU4MTcyIDE2LjQxODMgMiAxMiAyQzEwLjkzOTEgMiA5LjkyNjQzIDIuMjA2NTEgOSAyLjU4MTUyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class WirelessChargeBrokenIcon extends StatelessWidget {
  /// Creates the `wireless-charge` icon in the broken style.
  const WirelessChargeBrokenIcon({
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
    name: 'wireless-charge',
    style: SolarIconStyle.broken,
    body: r'''<path d="M12 21V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.8571 7L10 10H14L11.1429 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13.5 18V19.5C13.5 19.9659 13.5 20.1989 13.4239 20.3827C13.3224 20.6277 13.1277 20.8224 12.8827 20.9239C12.6989 21 12.4659 21 12 21C11.5341 21 11.3011 21 11.1173 20.9239C10.8723 20.8224 10.6776 20.6277 10.5761 20.3827C10.5 20.1989 10.5 19.9659 10.5 19.5V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.58152 7C4.20651 7.92643 4 8.9391 4 10C4 14.4183 7.58172 18 12 18C16.4183 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C10.9391 2 9.92643 2.20651 9 2.58152" stroke="currentColor" stroke-linecap="round"/>''',
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
