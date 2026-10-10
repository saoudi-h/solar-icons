// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEwIDUuMDQ4NzdMMTAuMzY3IDQuNzA1NjNDMTIuNzk5NSAyLjQzMTQ2IDE2Ljc0MzIgMi40MzE0NiAxOS4xNzU3IDQuNzA1NjNDMjEuNjA4MSA2Ljk3OTggMjEuNjA4MSAxMC42NjcgMTkuMTc1NyAxMi45NDExTDE2Ljk3MzUgMTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xNCAxOC45Mjc4TDEzLjYzNDUgMTkuMjc3M0MxMS4yMTIzIDIxLjU5MzcgNy4yNTQzNCAyMS41NjQ0IDQuODMyMDkgMTkuMjQ4QzIuNDMzNzYgMTYuOTU0NiAyLjM3NjM5IDEzLjIxNTMgNC43NDA5NSAxMC44OUw1LjY0NTk0IDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTYuNTg3MzkgM0w3LjUgNS4yMDUyMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0zLjUwMjM4IDYuMDg2NThMOS4wNTAyMSA4Ljc5NDUzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class UnlinkMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `unlink-minimalistic` icon in the lineDuotone style.
  const UnlinkMinimalisticLineDuotoneIcon({
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
    name: 'unlink-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M6.58739 3L7.5 5.20521" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.50238 6.08658L9.05021 8.79453" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M10 5.04877L10.367 4.70563C12.7995 2.43146 16.7432 2.43146 19.1757 4.70563C21.6081 6.9798 21.6081 10.667 19.1757 12.9411L16.9735 15" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14 18.9278L13.6345 19.2773C11.2123 21.5937 7.25434 21.5644 4.83209 19.248C2.43376 16.9546 2.37639 13.2153 4.74095 10.89L5.64594 10" stroke="currentColor" stroke-linecap="round"/>''',
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
