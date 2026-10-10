// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zIDExLjI1TDMgMTBDMyA2LjIyODc2IDMuMDAwMyA0LjM0MzQ1IDQuMTcxODcgMy4xNzE4N0M1LjM0MzQ1IDIuMDAwMyA3LjIyODc2IDIgMTEgMkwxMyAyQzE2Ljc3MTIgMiAxOC42NTY2IDIuMDAwMyAxOS44MjgxIDMuMTcxODdDMjAuOTk5NyA0LjM0MzQ1IDIxIDYuMjI4NzYgMjEgMTBMMjEgMTEuMjVMMyAxMS4yNVpNMjEgMTRDMjEgMTcuNzcxMiAyMC45OTk3IDE5LjY1NjYgMTkuODI4MSAyMC44MjgxQzE4LjY1NjYgMjEuOTk5NyAxNi43NzEyIDIyIDEzIDIyTDExIDIyQzcuMjI4NzYgMjIgNS4zNDM0NSAyMS45OTk3IDQuMTcxODcgMjAuODI4MUMzLjAwMDMgMTkuNjU2NiAzIDE3Ljc3MTIgMyAxNEwzIDEyLjc1TDIxIDEyLjc1TDIxIDE0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class Rows2BoldIcon extends StatelessWidget {
  /// Creates the `rows-2` icon in the bold style.
  const Rows2BoldIcon({
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
    name: 'rows-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3 11.25L3 10C3 6.22876 3.0003 4.34345 4.17187 3.17187C5.34345 2.0003 7.22876 2 11 2L13 2C16.7712 2 18.6566 2.0003 19.8281 3.17187C20.9997 4.34345 21 6.22876 21 10L21 11.25L3 11.25ZM21 14C21 17.7712 20.9997 19.6566 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22L11 22C7.22876 22 5.34345 21.9997 4.17187 20.8281C3.0003 19.6566 3 17.7712 3 14L3 12.75L21 12.75L21 14Z" fill="currentColor"/>''',
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
