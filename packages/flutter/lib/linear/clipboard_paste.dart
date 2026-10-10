// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNiA0LjAwMTk1QzE4LjE3NSA0LjAxNDA2IDE5LjM1MjkgNC4xMTA1MSAyMC4xMjEzIDQuODc4ODlDMjEgNS43NTc1NyAyMSA3LjE3MTc5IDIxIDEwLjAwMDJWMTYuMDAwMkMyMSAxOC44Mjg2IDIxIDIwLjI0MjkgMjAuMTIxMyAyMS4xMjE1QzE5LjI0MjYgMjIuMDAwMiAxNy44Mjg0IDIyLjAwMDIgMTUgMjIuMDAwMkg5QzYuMTcxNTcgMjIuMDAwMiA0Ljc1NzM2IDIyLjAwMDIgMy44Nzg2OCAyMS4xMjE1QzMgMjAuMjQyOSAzIDE4LjgyODYgMyAxNi4wMDAyVjEwLjAwMDJDMyA3LjE3MTc5IDMgNS43NTc1NyAzLjg3ODY4IDQuODc4ODlDNC42NDcwNiA0LjExMDUxIDUuODI0OTcgNC4wMTQwNiA4IDQuMDAxOTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCAzLjVDOCAyLjY3MTU3IDguNjcxNTcgMiA5LjUgMkgxNC41QzE1LjMyODQgMiAxNiAyLjY3MTU3IDE2IDMuNVY0LjVDMTYgNS4zMjg0MyAxNS4zMjg0IDYgMTQuNSA2SDkuNUM4LjY3MTU3IDYgOCA1LjMyODQzIDggNC41VjMuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSAxNEwxNSAxNE0xMi41IDE2LjVMMTUgMTRMMTIuNSAxMS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class ClipboardPasteLinearIcon extends StatelessWidget {
  /// Creates the `clipboard-paste` icon in the linear style.
  const ClipboardPasteLinearIcon({
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
    name: 'clipboard-paste',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16 4.00195C18.175 4.01406 19.3529 4.11051 20.1213 4.87889C21 5.75757 21 7.17179 21 10.0002V16.0002C21 18.8286 21 20.2429 20.1213 21.1215C19.2426 22.0002 17.8284 22.0002 15 22.0002H9C6.17157 22.0002 4.75736 22.0002 3.87868 21.1215C3 20.2429 3 18.8286 3 16.0002V10.0002C3 7.17179 3 5.75757 3.87868 4.87889C4.64706 4.11051 5.82497 4.01406 8 4.00195" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 14L15 14M12.5 16.5L15 14L12.5 11.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
