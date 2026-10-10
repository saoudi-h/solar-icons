// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiA2TDEyIDhNMTIgOEwxMiAxME0xMiA4SDkuOTk5OThNMTIgOEwxNCA4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggMTRIOU0xNiAxNEgxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDE4SDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTMgMTRWMTBDMyA2LjIyODc2IDMgNC4zNDMxNSA0LjE3MTU3IDMuMTcxNTdDNS4zNDMxNSAyIDcuMjI4NzYgMiAxMSAySDEzQzE2Ljc3MTIgMiAxOC42NTY5IDIgMTkuODI4NCAzLjE3MTU3QzIwLjQ4MTYgMy44MjQ3NiAyMC43NzA2IDQuNjk5ODkgMjAuODk4NSA2TTIxIDEwVjE0QzIxIDE3Ljc3MTIgMjEgMTkuNjU2OSAxOS44Mjg0IDIwLjgyODRDMTguNjU2OSAyMiAxNi43NzEyIDIyIDEzIDIySDExQzcuMjI4NzYgMjIgNS4zNDMxNSAyMiA0LjE3MTU3IDIwLjgyODRDMy41MTgzOSAyMC4xNzUyIDMuMjI5MzcgMTkuMzAwMSAzLjEwMTQ5IDE4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class DocumentMedicineBrokenIcon extends StatelessWidget {
  /// Creates the `document-medicine` icon in the broken style.
  const DocumentMedicineBrokenIcon({
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
    name: 'document-medicine',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 6L12 8M12 8L12 10M12 8H9.99998M12 8L14 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 14H9M16 14H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 18H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 14V10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2H13C16.7712 2 18.6569 2 19.8284 3.17157C20.4816 3.82476 20.7706 4.69989 20.8985 6M21 10V14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22H11C7.22876 22 5.34315 22 4.17157 20.8284C3.51839 20.1752 3.22937 19.3001 3.10149 18" stroke="currentColor" stroke-linecap="round"/>''',
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
