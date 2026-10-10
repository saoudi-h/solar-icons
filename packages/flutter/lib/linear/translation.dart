// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOS4xNDE0IDUuMDAwMDNDMjAuOTA5NyA2LjgwMzc4IDIyIDkuMjc0NTggMjIgMTJDMjIgMTQuNzU3OCAyMC44ODM2IDE3LjI1NDkgMTkuMDc4MiAxOS4wNjRNNSAxOS4xNDE1QzMuMTQ4NjQgMTcuMzI2NSAyIDE0Ljc5NzQgMiAxMkMyIDkuMjM1IDMuMTIyMjIgNi43MzIwOCA0LjkzNjAzIDQuOTIxODgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYuMjg0OSA4LjA0Mzk3QzE3LjM0NTggOS4wNTg3NyAxOCAxMC40NDg4IDE4IDExLjk4MjJDMTggMTMuNTMzOCAxNy4zMzAyIDE0LjkzODYgMTYuMjQ2OSAxNS45NTY0TTcuOCAxNkM2LjY4OTE4IDE0Ljk3ODkgNiAxMy41NTYgNiAxMS45ODIyQzYgMTAuNDI2NiA2LjY3MzMzIDkuMDE4NDMgNy43NjE2MiA4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPGNpcmNsZSBjeD0iMTIiIGN5PSIxMiIgcj0iMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class TranslationLinearIcon extends StatelessWidget {
  /// Creates the `translation` icon in the linear style.
  const TranslationLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19.1414 5.00003C20.9097 6.80378 22 9.27458 22 12C22 14.7578 20.8836 17.2549 19.0782 19.064M5 19.1415C3.14864 17.3265 2 14.7974 2 12C2 9.235 3.12222 6.73208 4.93603 4.92188" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.2849 8.04397C17.3458 9.05877 18 10.4488 18 11.9822C18 13.5338 17.3302 14.9386 16.2469 15.9564M7.8 16C6.68918 14.9789 6 13.556 6 11.9822C6 10.4266 6.67333 9.01843 7.76162 8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>''',
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
