// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE5LjE0MTQgNS4wMDAwM0MyMC45MDk3IDYuODAzNzggMjIgOS4yNzQ1OCAyMiAxMkMyMiAxNC43NTc4IDIwLjg4MzYgMTcuMjU0OSAxOS4wNzgyIDE5LjA2NE01IDE5LjE0MTVDMy4xNDg2NCAxNy4zMjY1IDIgMTQuNzk3NCAyIDEyQzIgOS4yMzUgMy4xMjIyMiA2LjczMjA4IDQuOTM2MDMgNC45MjE4OCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE2LjI4NDkgOC4wNDM5N0MxNy4zNDU4IDkuMDU4NzcgMTggMTAuNDQ4OCAxOCAxMS45ODIyQzE4IDEzLjUzMzggMTcuMzMwMiAxNC45Mzg2IDE2LjI0NjkgMTUuOTU2NE03LjggMTZDNi42ODkxOCAxNC45Nzg5IDYgMTMuNTU2IDYgMTEuOTgyMkM2IDEwLjQyNjYgNi42NzMzMyA5LjAxODQzIDcuNzYxNjIgOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class TranslationLineDuotoneIcon extends StatelessWidget {
  /// Creates the `translation` icon in the lineDuotone style.
  const TranslationLineDuotoneIcon({
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
    name: 'translation',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19.1414 5.00003C20.9097 6.80378 22 9.27458 22 12C22 14.7578 20.8836 17.2549 19.0782 19.064M5 19.1415C3.14864 17.3265 2 14.7974 2 12C2 9.235 3.12222 6.73208 4.93603 4.92188" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M16.2849 8.04397C17.3458 9.05877 18 10.4488 18 11.9822C18 13.5338 17.3302 14.9386 16.2469 15.9564M7.8 16C6.68918 14.9789 6 13.556 6 11.9822C6 10.4266 6.67333 9.01843 7.76162 8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
