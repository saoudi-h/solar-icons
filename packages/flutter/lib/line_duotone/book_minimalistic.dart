// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00IDhDNCA1LjE3MTU3IDQgMy43NTczNiA0Ljg3ODY4IDIuODc4NjhDNS43NTczNiAyIDcuMTcxNTcgMiAxMCAySDE0QzE2LjgyODQgMiAxOC4yNDI2IDIgMTkuMTIxMyAyLjg3ODY4QzIwIDMuNzU3MzYgMjAgNS4xNzE1NyAyMCA4VjE2QzIwIDE4LjgyODQgMjAgMjAuMjQyNiAxOS4xMjEzIDIxLjEyMTNDMTguMjQyNiAyMiAxNi44Mjg0IDIyIDE0IDIySDEwQzcuMTcxNTcgMjIgNS43NTczNiAyMiA0Ljg3ODY4IDIxLjEyMTNDNCAyMC4yNDI2IDQgMTguODI4NCA0IDE2VjhaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjAgMTYuMDAwMUg3Ljg5ODFDNi45NjgxMiAxNi4wMDAxIDYuNTAzMTQgMTYuMDAwMSA2LjEyMTY0IDE2LjEwMjNDNS4wODYzNiAxNi4zNzk3IDQuMjk5MzcgMTcuMTA5MSA0LjAyMTk3IDE4LjE0NDNNNyAxNlYyLjA3NjE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BookMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `book-minimalistic` icon in the lineDuotone style.
  const BookMinimalisticLineDuotoneIcon({
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
    name: 'book-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4 8C4 5.17157 4 3.75736 4.87868 2.87868C5.75736 2 7.17157 2 10 2H14C16.8284 2 18.2426 2 19.1213 2.87868C20 3.75736 20 5.17157 20 8V16C20 18.8284 20 20.2426 19.1213 21.1213C18.2426 22 16.8284 22 14 22H10C7.17157 22 5.75736 22 4.87868 21.1213C4 20.2426 4 18.8284 4 16V8Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 16.0001H7.8981C6.96812 16.0001 6.50314 16.0001 6.12164 16.1023C5.08636 16.3797 4.29937 17.1091 4.02197 18.1443M7 16V2.07617" stroke="currentColor" stroke-linecap="round"/>''',
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
