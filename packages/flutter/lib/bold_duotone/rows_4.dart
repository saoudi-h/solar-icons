// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEzIDJDMTYuNzcxMiAyIDE4LjY1NjkgMiAxOS44Mjg0IDMuMTcxNTdDMjEgNC4zNDMxNSAyMSA2LjIyODc2IDIxIDEwTDIxIDE0QzIxIDE3Ljc3MTIgMjEgMTkuNjU2OSAxOS44Mjg0IDIwLjgyODRDMTguNjU2OSAyMiAxNi43NzEyIDIyIDEzIDIyTDExIDIyQzcuMjI4NzYgMjIgNS4zNDMxNSAyMiA0LjE3MTU3IDIwLjgyODRDMyAxOS42NTY5IDMgMTcuNzcxMiAzIDE0TDMgMTBDMyA2LjIyODc2IDMgNC4zNDMxNSA0LjE3MTU3IDMuMTcxNTdDNS4zNDMxNSAyIDcuMjI4NzYgMiAxMSAyTDEzIDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0zIDEyLjc1TDMgMTEuMjVMMjEgMTEuMjVMMjEgMTIuNzVMMyAxMi43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTMuMDE1NjIgNy43NUMzLjAyNjM1IDcuMTk2ODMgMy4wNDUwNyA2LjY5OTM2IDMuMDgxMDUgNi4yNUwyMC45MTk5IDYuMjVDMjAuOTU1OSA2LjY5OTM1IDIwLjk3NDYgNy4xOTY4NiAyMC45ODU0IDcuNzVMMy4wMTU2MiA3Ljc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjAuOTg1NCAxNi4yNUMyMC45NzQ2IDE2LjgwMzEgMjAuOTU1OSAxNy4zMDA3IDIwLjkxOTkgMTcuNzVMMy4wODEwNSAxNy43NUMzLjA0NTA3IDE3LjMwMDYgMy4wMjYzNSAxNi44MDMyIDMuMDE1NjIgMTYuMjVMMjAuOTg1NCAxNi4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class Rows4BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `rows-4` icon in the boldDuotone style.
  const Rows4BoldDuotoneIcon({
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
    name: 'rows-4',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M3 12.75L3 11.25L21 11.25L21 12.75L3 12.75Z" fill="currentColor"/>
<path d="M3.01562 7.75C3.02635 7.19683 3.04507 6.69936 3.08105 6.25L20.9199 6.25C20.9559 6.69935 20.9746 7.19686 20.9854 7.75L3.01562 7.75Z" fill="currentColor"/>
<path d="M20.9854 16.25C20.9746 16.8031 20.9559 17.3007 20.9199 17.75L3.08105 17.75C3.04507 17.3006 3.02635 16.8032 3.01562 16.25L20.9854 16.25Z" fill="currentColor"/>''',
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
