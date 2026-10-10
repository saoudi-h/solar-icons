// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00IDZWMTlDNCAyMC42NTY5IDUuMzQzMTUgMjIgNyAyMkgxN0MxOC42NTY5IDIyIDIwIDIwLjY1NjkgMjAgMTlWOUMyMCA3LjM0MzE1IDE4LjY1NjkgNiAxNyA2SDRaTTQgNlY1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggMTJIMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCAxNS41SDEzLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTggNC4zMDYwNFY2LjAwMDAySDUuMDcxMDdDNC40Nzk1MyA2LjAwMDAyIDQgNS41MjA0OSA0IDQuOTI4OTVDNCA0LjM5NTk0IDQuMzkxOTMgMy45NDQwMyA0LjkxOTU5IDMuODY4NjVMMTUuNzE3MiAyLjMyNjE0QzE2LjkyMiAyLjE1NDAyIDE4IDMuMDg4OTQgMTggNC4zMDYwNFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Document2LinearIcon extends StatelessWidget {
  /// Creates the `document-2` icon in the linear style.
  const Document2LinearIcon({
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
    name: 'document-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 6V19C4 20.6569 5.34315 22 7 22H17C18.6569 22 20 20.6569 20 19V9C20 7.34315 18.6569 6 17 6H4ZM4 6V5" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 12H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 15.5H13.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 4.30604V6.00002H5.07107C4.47953 6.00002 4 5.52049 4 4.92895C4 4.39594 4.39193 3.94403 4.91959 3.86865L15.7172 2.32614C16.922 2.15402 18 3.08894 18 4.30604Z" stroke="currentColor" stroke-linecap="round"/>''',
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
