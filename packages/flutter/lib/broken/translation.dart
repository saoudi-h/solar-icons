// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `translation` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDEyQzIyIDE0Ljc1NzggMjAuODgzNiAxNy4yNTQ5IDE5LjA3ODIgMTkuMDY0TTE5LjE0MTQgNS4wMDAwM0MxOS45ODcgNS44NjI1NSAyMC42Nzc1IDYuODc3NTkgMjEuMTY3OSA4LjAwMDA2TTUgMTkuMTQxNUMzLjE0ODY0IDE3LjMyNjUgMiAxNC43OTc0IDIgMTJDMiA5LjIzNSAzLjEyMjIyIDYuNzMyMDggNC45MzYwMyA0LjkyMTg4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTYgMTEuOTgyMkM2IDEwLjQyNjYgNi42NzMzMyA5LjAxODQzIDcuNzYxNjIgOE0xNi4yODQ5IDguMDQzOTdDMTcuMzQ1OCA5LjA1ODc3IDE4IDEwLjQ0ODggMTggMTEuOTgyMkMxOCAxMy41MzM4IDE3LjMzMDIgMTQuOTM4NiAxNi4yNDY5IDE1Ljk1NjRNNy44IDE2QzcuNDcyOTQgMTUuNjk5NCA3LjE4MjQ0IDE1LjM2MzkgNi45MzUzMSAxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class TranslationBrokenIcon extends StatelessWidget {
  /// Creates the `translation` icon in the broken style.
  const TranslationBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 12C22 14.7578 20.8836 17.2549 19.0782 19.064M19.1414 5.00003C19.987 5.86255 20.6775 6.87759 21.1679 8.00006M5 19.1415C3.14864 17.3265 2 14.7974 2 12C2 9.235 3.12222 6.73208 4.93603 4.92188" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 11.9822C6 10.4266 6.67333 9.01843 7.76162 8M16.2849 8.04397C17.3458 9.05877 18 10.4488 18 11.9822C18 13.5338 17.3302 14.9386 16.2469 15.9564M7.8 16C7.47294 15.6994 7.18244 15.3639 6.93531 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
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
