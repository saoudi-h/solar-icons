// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cosmetic` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExIDEwLjVDMTEgNy40NjI0MyAxMy40NjI0IDUgMTYuNSA1QzE5LjUzNzYgNSAyMiA3LjQ2MjQzIDIyIDEwLjVDMjIgMTMuNTM3NiAxOS41Mzc2IDE2IDE2LjUgMTZDMTMuNDYyNCAxNiAxMSAxMy41Mzc2IDExIDEwLjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE2LjUgMjBWMTZNMTYuNSAyMEgxOS41TTE2LjUgMjBIMTMuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0zIDExSDdWNS42MTc5OUM3IDQuODc0NjEgNi4yMTc2OSA0LjM5MTExIDUuNTUyNzkgNC43MjM1NkwzLjU1Mjc5IDUuNzIzNTZDMy4yMTQgNS44OTI5NSAzIDYuMjM5MjIgMyA2LjYxNzk5VjExWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDExVjE3QzggMTguNjU2OSA2LjY1Njg1IDIwIDUgMjBDMy4zNDMxNSAyMCAyIDE4LjY1NjkgMiAxN1YxMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDExSDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class CosmeticLinearIcon extends StatelessWidget {
  /// Creates the `cosmetic` icon in the linear style.
  const CosmeticLinearIcon({
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
    name: 'cosmetic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M11 10.5C11 7.46243 13.4624 5 16.5 5C19.5376 5 22 7.46243 22 10.5C22 13.5376 19.5376 16 16.5 16C13.4624 16 11 13.5376 11 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 20V16M16.5 20H19.5M16.5 20H13.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3 11H7V5.61799C7 4.87461 6.21769 4.39111 5.55279 4.72356L3.55279 5.72356C3.214 5.89295 3 6.23922 3 6.61799V11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 11V17C8 18.6569 6.65685 20 5 20C3.34315 20 2 18.6569 2 17V11" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11H8" stroke="currentColor" stroke-linecap="round"/>''',
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
