// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjE0LjUiIGN5PSI0LjUiIHI9IjIuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTUgMjIuMDAwMkw4Ljg0ODU2IDIwLjYyNzRDOS4zMDQzNyAyMC40NjQ4IDkuNjg1NzYgMjAuMTQyNSA5LjkyMjA0IDE5LjcyMDJMMTIuNjM0MyAxNC44NzJDMTIuODAxMiAxNC41NzM2IDEyLjg4ODkgMTQuMjM3NCAxMi44ODg5IDEzLjg5NTVWMTEuMjc1MUMxMi44ODg5IDEwLjE5ODIgMTEuNzg3OCA5LjQ3MjEzIDEwLjc5OCA5Ljg5NjM0TDguMzQyMjEgMTAuOTQ4OEM3LjM1OTM1IDExLjM3IDcuMTIwMzEgMTIuNjU1IDcuODg1OTQgMTMuNDAxNUw4LjUgMTQuMDAwMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOS4wMDAxIDIyLjAwMDJWMTYuNzY4MUMxOS4wMDAxIDE1LjUzNTUgMTcuODk1OSAxNC41OTYyIDE2LjY3OTMgMTQuNzkzOUwxNS42NjY3IDE0Ljk1ODUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class StretchingLineDuotoneIcon extends StatelessWidget {
  /// Creates the `stretching` icon in the lineDuotone style.
  const StretchingLineDuotoneIcon({
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
    name: 'stretching',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="14.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.0001 22.0002V16.7681C19.0001 15.5355 17.8959 14.5962 16.6793 14.7939L15.6667 14.9585" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M5 22.0002L8.84856 20.6274C9.30437 20.4648 9.68576 20.1425 9.92204 19.7202L12.6343 14.872C12.8012 14.5736 12.8889 14.2374 12.8889 13.8955V11.2751C12.8889 10.1982 11.7878 9.47213 10.798 9.89634L8.34221 10.9488C7.35935 11.37 7.12031 12.655 7.88594 13.4015L8.5 14.0002" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
