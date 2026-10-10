// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04IDMuNUM4IDIuNjcxNTcgOC42NzE1NyAyIDkuNSAySDE0LjVDMTUuMzI4NCAyIDE2IDIuNjcxNTcgMTYgMy41VjQuNUMxNiA1LjMyODQzIDE1LjMyODQgNiAxNC41IDZIOS41QzguNjcxNTcgNiA4IDUuMzI4NDMgOCA0LjVWMy41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDEzSDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxIDE2LjAwMDJDMjEgMTguODI4NiAyMSAyMC4yNDI5IDIwLjEyMTMgMjEuMTIxNUMxOS4yNDI2IDIyLjAwMDIgMTcuODI4NCAyMi4wMDAyIDE1IDIyLjAwMDJIOUM2LjE3MTU3IDIyLjAwMDIgNC43NTczNiAyMi4wMDAyIDMuODc4NjggMjEuMTIxNUMzIDIwLjI0MjkgMyAxOC44Mjg2IDMgMTYuMDAwMlYxMy4wMDAyTTE2IDQuMDAxOTVDMTguMTc1IDQuMDE0MDYgMTkuMzUyOSA0LjExMDUxIDIwLjEyMTMgNC44Nzg4OUMyMSA1Ljc1NzU3IDIxIDcuMTcxNzkgMjEgMTAuMDAwMlYxMi4wMDAyTTggNC4wMDE5NUM1LjgyNDk3IDQuMDE0MDYgNC42NDcwNiA0LjExMDUxIDMuODc4NjggNC44Nzg4OUMzLjExMDMyIDUuNjQ3MjUgMy4wMTM4NSA2LjgyNTExIDMuMDAxNzQgOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ClipboardMinusBrokenIcon extends StatelessWidget {
  /// Creates the `clipboard-minus` icon in the broken style.
  const ClipboardMinusBrokenIcon({
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
    name: 'clipboard-minus',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 13H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 16.0002C21 18.8286 21 20.2429 20.1213 21.1215C19.2426 22.0002 17.8284 22.0002 15 22.0002H9C6.17157 22.0002 4.75736 22.0002 3.87868 21.1215C3 20.2429 3 18.8286 3 16.0002V13.0002M16 4.00195C18.175 4.01406 19.3529 4.11051 20.1213 4.87889C21 5.75757 21 7.17179 21 10.0002V12.0002M8 4.00195C5.82497 4.01406 4.64706 4.11051 3.87868 4.87889C3.11032 5.64725 3.01385 6.82511 3.00174 9" stroke="currentColor" stroke-linecap="round"/>''',
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
