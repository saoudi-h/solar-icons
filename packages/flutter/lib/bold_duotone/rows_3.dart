// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEzIDJDMTYuNzcxMiAyIDE4LjY1NjkgMiAxOS44Mjg0IDMuMTcxNTdDMjEgNC4zNDMxNSAyMSA2LjIyODc2IDIxIDEwTDIxIDE0QzIxIDE3Ljc3MTIgMjEgMTkuNjU2OSAxOS44Mjg0IDIwLjgyODRDMTguNjU2OSAyMiAxNi43NzEyIDIyIDEzIDIyTDExIDIyQzcuMjI4NzYgMjIgNS4zNDMxNSAyMiA0LjE3MTU3IDIwLjgyODRDMyAxOS42NTY5IDMgMTcuNzcxMiAzIDE0TDMgMTBDMyA2LjIyODc2IDMgNC4zNDMxNSA0LjE3MTU3IDMuMTcxNTdDNS4zNDMxNSAyIDcuMjI4NzYgMiAxMSAyTDEzIDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMC45ODczIDE2LjA4M0wzLjAxMzY3IDE2LjA4M0MzLjAwNjMgMTUuNjIyIDMuMDAwNSAxNS4xMjMzIDMgMTQuNTgzTDIxIDE0LjU4M0MyMC45OTk1IDE1LjEyMzMgMjAuOTk0NyAxNS42MjIgMjAuOTg3MyAxNi4wODNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0zLjAwMDk4IDkuNDE2MDFDMy4wMDE0NyA4Ljg3NTY4IDMuMDA2MjkgOC4zNzcwNyAzLjAxMzY3IDcuOTE2MDFMMjAuOTg3MyA3LjkxNjAyQzIwLjk5NDcgOC4zNzcwNiAyMC45OTk1IDguODc1NjkgMjEgOS40MTYwMkwzLjAwMDk4IDkuNDE2MDFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class Rows3BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `rows-3` icon in the boldDuotone style.
  const Rows3BoldDuotoneIcon({
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
    name: 'rows-3',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.9873 16.083L3.01367 16.083C3.0063 15.622 3.0005 15.1233 3 14.583L21 14.583C20.9995 15.1233 20.9947 15.622 20.9873 16.083Z" fill="currentColor"/>
<path d="M3.00098 9.41601C3.00147 8.87568 3.00629 8.37707 3.01367 7.91601L20.9873 7.91602C20.9947 8.37706 20.9995 8.87569 21 9.41602L3.00098 9.41601Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" fill="currentColor"/>''',
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
