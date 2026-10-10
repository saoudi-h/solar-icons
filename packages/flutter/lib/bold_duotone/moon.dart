// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMiAxMi4wMDA0QzIyIDE3LjUyMzIgMTcuNTIyOCAyMi4wMDA0IDEyIDIyLjAwMDRDMTAuODM1OCAyMi4wMDA0IDkuNzE4MDEgMjEuODAxNCA4LjY3ODg3IDIxLjQzNTdDOC4yNDEzOCAyMC4zNzcyIDggMTkuMjE3IDggMTguMDAwNEM4IDE1Ljc3OTIgOC44MDQ2NyAxMy43NDU5IDEwLjEzODQgMTIuMTc2MkMxMS4zMSAxMy44ODE4IDEzLjI3NDQgMTUuMDAwNCAxNS41IDE1LjAwMDRDMTcuODYxNSAxNS4wMDA0IDE5LjkyODkgMTMuNzQxIDIxLjA2NzIgMTEuODU3MkMyMS4zMDY1IDExLjQ2MTIgMjIgMTEuNTM3NyAyMiAxMi4wMDA0WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMiAxMkMyIDE2LjM1ODYgNC43ODg1MiAyMC4wNjU5IDguNjc4ODcgMjEuNDM1M0M4LjI0MTM4IDIwLjM3NjggOCAxOS4yMTY2IDggMThDOCAxNS43Nzg4IDguODA0NjcgMTMuNzQ1NSAxMC4xMzg0IDEyLjE3NThDOS40MjAyNyAxMS4xMzAzIDkgOS44NjQyMiA5IDguNUM5IDYuMTM4NDUgMTAuMjU5NCA0LjA3MTA1IDEyLjE0MzIgMi45MzI3NkMxMi41MzkyIDIuNjkzNDcgMTIuNDYyNyAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MoonBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `moon` icon in the boldDuotone style.
  const MoonBoldDuotoneIcon({
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
    name: 'moon',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M2 12C2 16.3586 4.78852 20.0659 8.67887 21.4353C8.24138 20.3768 8 19.2166 8 18C8 15.7788 8.80467 13.7455 10.1384 12.1758C9.42027 11.1303 9 9.86422 9 8.5C9 6.13845 10.2594 4.07105 12.1432 2.93276C12.5392 2.69347 12.4627 2 12 2C6.47715 2 2 6.47715 2 12Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M22 12.0004C22 17.5232 17.5228 22.0004 12 22.0004C10.8358 22.0004 9.71801 21.8014 8.67887 21.4357C8.24138 20.3772 8 19.217 8 18.0004C8 15.7792 8.80467 13.7459 10.1384 12.1762C11.31 13.8818 13.2744 15.0004 15.5 15.0004C17.8615 15.0004 19.9289 13.741 21.0672 11.8572C21.3065 11.4612 22 11.5377 22 12.0004Z" fill="currentColor"/>''',
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
