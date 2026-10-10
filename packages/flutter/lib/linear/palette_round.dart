// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDZDMiAzLjc5MDg2IDMuNzkwODYgMiA2IDJDOC4yMDkxNCAyIDEwIDMuNzkwODYgMTAgNlYxOEMxMCAyMC4yMDkxIDguMjA5MTQgMjIgNiAyMkMzLjc5MDg2IDIyIDIgMjAuMjA5MSAyIDE4VjZaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkuOTk5NzcgOC4yNDI2OEwxMy4zMTM0IDQuOTI5MDJDMTQuODc1NSAzLjM2NjkyIDE3LjQwODIgMy4zNjY5MiAxOC45NzAzIDQuOTI5MDJDMjAuNTMyNCA2LjQ5MTEyIDIwLjUzMjQgOS4wMjM3OCAxOC45NzAzIDEwLjU4NTlMOS4zMDYxNSAyMC4yNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik02IDIyTDE4IDIyQzIwLjIwOTEgMjIgMjIgMjAuMjA5MSAyMiAxOEMyMiAxNS43OTA5IDIwLjIwOTEgMTQgMTggMTRMMTUuNSAxNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik03IDE4QzcgMTguNTUyMyA2LjU1MjI4IDE5IDYgMTlDNS40NDc3MiAxOSA1IDE4LjU1MjMgNSAxOEM1IDE3LjQ0NzcgNS40NDc3MiAxNyA2IDE3QzYuNTUyMjggMTcgNyAxNy40NDc3IDcgMThaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PaletteRoundLinearIcon extends StatelessWidget {
  /// Creates the `palette-round` icon in the linear style.
  const PaletteRoundLinearIcon({
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
    name: 'palette-round',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 6C2 3.79086 3.79086 2 6 2C8.20914 2 10 3.79086 10 6V18C10 20.2091 8.20914 22 6 22C3.79086 22 2 20.2091 2 18V6Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.99977 8.24268L13.3134 4.92902C14.8755 3.36692 17.4082 3.36692 18.9703 4.92902C20.5324 6.49112 20.5324 9.02378 18.9703 10.5859L9.30615 20.25" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 22L18 22C20.2091 22 22 20.2091 22 18C22 15.7909 20.2091 14 18 14L15.5 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 18C7 18.5523 6.55228 19 6 19C5.44772 19 5 18.5523 5 18C5 17.4477 5.44772 17 6 17C6.55228 17 7 17.4477 7 18Z" stroke="currentColor" stroke-linecap="round"/>''',
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
