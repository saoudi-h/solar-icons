// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEzIDJDMTYuNzcxMiAyIDE4LjY1NjkgMiAxOS44Mjg0IDMuMTcxNTdDMjEgNC4zNDMxNSAyMSA2LjIyODc2IDIxIDEwTDIxIDE0QzIxIDE3Ljc3MTIgMjEgMTkuNjU2OSAxOS44Mjg0IDIwLjgyODRDMTguNjU2OSAyMiAxNi43NzEyIDIyIDEzIDIyTDExIDIyQzcuMjI4NzYgMjIgNS4zNDMxNSAyMiA0LjE3MTU3IDIwLjgyODRDMyAxOS42NTY5IDMgMTcuNzcxMiAzIDE0TDMgMTBDMyA2LjIyODc2IDMgNC4zNDMxNSA0LjE3MTU3IDMuMTcxNTdDNS4zNDMxNSAyIDcuMjI4NzYgMiAxMSAyTDEzIDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNC4yNSAyLjAwMDk4QzE0Ljc5NDcgMi4wMDM2IDE1LjI5MyAyLjAxMTQxIDE1Ljc1IDIuMDI2MzdWNy45MTY5OUgyMC45ODczQzIwLjk5NDcgOC4zNzgwNSAyMC45OTg1IDguODc2NjcgMjAuOTk5IDkuNDE2OTlIMTUuNzVWMTQuNTgzSDIwLjk5OUMyMC45OTg1IDE1LjEyMzMgMjAuOTk0NyAxNS42MjIgMjAuOTg3MyAxNi4wODNIMTUuNzVWMjEuOTcyN0MxNS4yOTMgMjEuOTg3NiAxNC43OTQ3IDIxLjk5NTQgMTQuMjUgMjEuOTk4VjE2LjA4M0gzLjAxMjdDMy4wMDUzMiAxNS42MjIgMy4wMDE0NyAxNS4xMjMzIDMuMDAwOTggMTQuNTgzSDE0LjI1VjkuNDE2OTlIMy4wMDA5OEMzLjAwMTQ3IDguODc2NjcgMy4wMDUzMiA4LjM3ODA1IDMuMDEyNyA3LjkxNjk5SDE0LjI1VjIuMDAwOThaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class TablePropertiesBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `table-properties` icon in the boldDuotone style.
  const TablePropertiesBoldDuotoneIcon({
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
    name: 'table-properties',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.25 2.00098C14.7947 2.0036 15.293 2.01141 15.75 2.02637V7.91699H20.9873C20.9947 8.37805 20.9985 8.87667 20.999 9.41699H15.75V14.583H20.999C20.9985 15.1233 20.9947 15.622 20.9873 16.083H15.75V21.9727C15.293 21.9876 14.7947 21.9954 14.25 21.998V16.083H3.0127C3.00532 15.622 3.00147 15.1233 3.00098 14.583H14.25V9.41699H3.00098C3.00147 8.87667 3.00532 8.37805 3.0127 7.91699H14.25V2.00098Z" fill="currentColor"/>''',
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
