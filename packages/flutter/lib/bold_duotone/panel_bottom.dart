// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xOS44Mjg0IDMuMTcxNTdDMTguNjU2OCAyIDE2Ljc3MTIgMiAxMyAyTDExIDJDNy4yMjg3MyAyIDUuMzQzMTIgMiA0LjE3MTU0IDMuMTcxNTdDMi45OTk5NyA0LjM0MzE1IDIuOTk5OTcgNi4yMjg3NiAyLjk5OTk3IDEwTDIuOTk5OTcgMTRDMi45OTk5NyAxNC4wODQzIDIuOTk5OTMgMTQuOTE3NiAyLjk5OTk0IDE1TDIwLjk5OTkgMTVDMjEgMTQuOTE3NiAyMSAxNC4wODQzIDIxIDE0TDIxIDEwQzIxIDYuMjI4NzYgMjEgNC4zNDMxNSAxOS44Mjg0IDMuMTcxNTdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMSAyMkwxMyAyMkMxNi43NzEyIDIyIDE4LjY1NjkgMjIgMTkuODI4NCAyMC44Mjg0QzIwLjgwMjggMTkuODU0MSAyMC45NjY4IDE3LjYzNTkgMjAuOTk0NCAxNUwzLjAwNTU5IDE1QzMuMDMzMjEgMTcuNjM1OSAzLjE5NzI0IDE5Ljg1NDEgNC4xNzE1NyAyMC44Mjg0QzUuMzQzMTUgMjIgNy4yMjg3NiAyMiAxMSAyMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class PanelBottomBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `panel-bottom` icon in the boldDuotone style.
  const PanelBottomBoldDuotoneIcon({
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
    name: 'panel-bottom',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11 22L13 22C16.7712 22 18.6569 22 19.8284 20.8284C20.8028 19.8541 20.9668 17.6359 20.9944 15L3.00559 15C3.03321 17.6359 3.19724 19.8541 4.17157 20.8284C5.34315 22 7.22876 22 11 22Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M19.8284 3.17157C18.6568 2 16.7712 2 13 2L11 2C7.22873 2 5.34312 2 4.17154 3.17157C2.99997 4.34315 2.99997 6.22876 2.99997 10L2.99997 14C2.99997 14.0843 2.99993 14.9176 2.99994 15L20.9999 15C21 14.9176 21 14.0843 21 14L21 10C21 6.22876 21 4.34315 19.8284 3.17157Z" fill="currentColor"/>''',
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
