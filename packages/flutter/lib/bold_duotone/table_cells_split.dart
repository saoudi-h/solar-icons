// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEzIDJDMTYuNzcxMiAyIDE4LjY1NjkgMiAxOS44Mjg0IDMuMTcxNTdDMjEgNC4zNDMxNSAyMSA2LjIyODc2IDIxIDEwTDIxIDE0QzIxIDE3Ljc3MTIgMjEgMTkuNjU2OSAxOS44Mjg0IDIwLjgyODRDMTguNjU2OSAyMiAxNi43NzEyIDIyIDEzIDIyTDExIDIyQzcuMjI4NzYgMjIgNS4zNDMxNSAyMiA0LjE3MTU3IDIwLjgyODRDMyAxOS42NTY5IDMgMTcuNzcxMiAzIDE0TDMgMTBDMyA2LjIyODc2IDMgNC4zNDMxNSA0LjE3MTU3IDMuMTcxNTdDNS4zNDMxNSAyIDcuMjI4NzYgMiAxMSAyTDEzIDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMC45OTkgOS40MTY5OUgxMi43NVYxNC41ODRIMjAuOTk5QzIwLjk5ODUgMTUuMTI0MyAyMC45OTQ3IDE1LjYyMjkgMjAuOTg3MyAxNi4wODRIMy4wMTI3QzMuMDA1MzEgMTUuNjIyOSAzLjAwMTQ3IDE1LjEyNDMgMy4wMDA5OCAxNC41ODRIMTEuMjVWOS40MTY5OUgzLjAwMDk4QzMuMDAxNDcgOC44NzYyOSAzLjAwNTMxIDguMzc3MzQgMy4wMTI3IDcuOTE2MDJIMjAuOTg3M0MyMC45OTQ3IDguMzc3MzQgMjAuOTk4NSA4Ljg3NjI5IDIwLjk5OSA5LjQxNjk5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class TableCellsSplitBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `table-cells-split` icon in the boldDuotone style.
  const TableCellsSplitBoldDuotoneIcon({
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
    name: 'table-cells-split',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.999 9.41699H12.75V14.584H20.999C20.9985 15.1243 20.9947 15.6229 20.9873 16.084H3.0127C3.00531 15.6229 3.00147 15.1243 3.00098 14.584H11.25V9.41699H3.00098C3.00147 8.87629 3.00531 8.37734 3.0127 7.91602H20.9873C20.9947 8.37734 20.9985 8.87629 20.999 9.41699Z" fill="currentColor"/>''',
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
