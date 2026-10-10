// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNyAySDE5LjVDMjAuMzI4NCAyIDIxIDIuNjcxNTcgMjEgMy41VjUuNUMyMSA2LjMyODQzIDIwLjMyODQgNyAxOS41IDdIMTdNMTcgMkgxM0MxMS41Nzc4IDIgMTAuMjI0OSAyLjI5NjkgOSAyLjgzMjA5TTE3IDJWN00xNyA3SDEzQzEwLjIzODYgNyA4IDkuMjM4NTggOCAxMkM4IDEzLjEyNTggOC4zNzIwOSAxNC4xNjQ3IDkgMTUuMDAwNU0xNyAxN0gxOS41QzIwLjMyODQgMTcgMjEgMTcuNjcxNiAyMSAxOC41VjIwLjVDMjEgMjEuMzI4NCAyMC4zMjg0IDIyIDE5LjUgMjJIMTdNMTcgMTdIMTNNMTcgMTdWMjJNMTcgMjJIMTNDNy40NzcxNSAyMiAzIDE3LjUyMjggMyAxMkMzIDkuNzQ4MzUgMy43NDQxOCA3LjY3MDUxIDUgNS45OTkwMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class MagnetBrokenIcon extends StatelessWidget {
  /// Creates the `magnet` icon in the broken style.
  const MagnetBrokenIcon({
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
    name: 'magnet',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M17 2H19.5C20.3284 2 21 2.67157 21 3.5V5.5C21 6.32843 20.3284 7 19.5 7H17M17 2H13C11.5778 2 10.2249 2.2969 9 2.83209M17 2V7M17 7H13C10.2386 7 8 9.23858 8 12C8 13.1258 8.37209 14.1647 9 15.0005M17 17H19.5C20.3284 17 21 17.6716 21 18.5V20.5C21 21.3284 20.3284 22 19.5 22H17M17 17H13M17 17V22M17 22H13C7.47715 22 3 17.5228 3 12C3 9.74835 3.74418 7.67051 5 5.99903" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
