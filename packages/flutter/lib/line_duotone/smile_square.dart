// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05IDE2QzkuODUwMzggMTYuNjMwMyAxMC44ODQ2IDE3IDEyIDE3QzEzLjExNTQgMTcgMTQuMTQ5NiAxNi42MzAzIDE1IDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N0M0LjkyODkzIDIgNy4yODU5NSAyIDEyIDJDMTYuNzE0IDIgMTkuMDcxMSAyIDIwLjUzNTUgMy40NjQ0N0MyMiA0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuNTM1NSAyMC41MzU1QzE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyIDIyQzcuMjg1OTUgMjIgNC45Mjg5MyAyMiAzLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1LjUgMTAuNUMxNS41IDExLjA1MjMgMTUuMjc2MSAxMS41IDE1IDExLjVDMTQuNzIzOSAxMS41IDE0LjUgMTEuMDUyMyAxNC41IDEwLjVDMTQuNSA5Ljk0NzcyIDE0LjcyMzkgOS41IDE1IDkuNUMxNS4yNzYxIDkuNSAxNS41IDkuOTQ3NzIgMTUuNSAxMC41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGVsbGlwc2UgY3g9IjkiIGN5PSIxMC41IiByeD0iMC41IiByeT0iMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SmileSquareLineDuotoneIcon extends StatelessWidget {
  /// Creates the `smile-square` icon in the lineDuotone style.
  const SmileSquareLineDuotoneIcon({
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
    name: 'smile-square',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 16C9.85038 16.6303 10.8846 17 12 17C13.1154 17 14.1496 16.6303 15 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
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
