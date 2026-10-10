// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjE1IiBjeT0iOSIgcj0iMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMC4wMDAxIDE3LjYwMDFMMTcuNzc2NiAxNS41OTlDMTYuNzM3MSAxNC42NjM0IDE1LjE4OSAxNC41NzAyIDE0LjA0NDcgMTUuMzc0NEwxMy43NDY1IDE1LjU4MzlDMTIuOTUxNCAxNi4xNDI4IDExLjg2OTYgMTYuMDQ5MSAxMS4xODIzIDE1LjM2MThMNi44OTI2MiAxMS4wNzIxQzYuMDM2NDEgMTAuMjE1OSA0LjY2Mjk5IDEwLjE3MDIgMy43NTE3MiAxMC45Njc1TDIuMjgxMjUgMTIuMjU0MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class GalleryCircleLinearIcon extends StatelessWidget {
  /// Creates the `gallery-circle` icon in the linear style.
  const GalleryCircleLinearIcon({
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
    name: 'gallery-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="15" cy="9" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.0001 17.6001L17.7766 15.599C16.7371 14.6634 15.189 14.5702 14.0447 15.3744L13.7465 15.5839C12.9514 16.1428 11.8696 16.0491 11.1823 15.3618L6.89262 11.0721C6.03641 10.2159 4.66299 10.1702 3.75172 10.9675L2.28125 12.2542" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
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
