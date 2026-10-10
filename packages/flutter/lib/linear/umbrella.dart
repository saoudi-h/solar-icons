// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `umbrella` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDEySDIxLjUyMzhDMjEuNzg2OCAxMiAyMiAxMS43ODY4IDIyIDExLjUyMzhDMjIgNi4yNjM5NiAxNy43MzYgMiAxMi40NzYyIDJIMTEuNTIzOEM2LjI2Mzk1IDIgMiA2LjI2Mzk2IDIgMTEuNTIzOEMyIDExLjc4NjggMi4yMTMyIDEyIDIuNDc2MTkgMTJIMTJaTTEyIDEyVjIwQzEyIDIxLjEwNDYgMTEuMTA0NiAyMiAxMCAyMkM4Ljg5NTQzIDIyIDggMjEuMTA0NiA4IDIwVjE5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTE2LjkxNDUgMTJDMTYuNjM1NCA5LjI4ODc0IDE1LjU1NDQgMiAxMi4wMDAyIDJDOC40NDYxIDIgNy4zNjUxIDkuMjg4NzQgNy4wODU5NCAxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class UmbrellaLinearIcon extends StatelessWidget {
  /// Creates the `umbrella` icon in the linear style.
  const UmbrellaLinearIcon({
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
    name: 'umbrella',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 12H21.5238C21.7868 12 22 11.7868 22 11.5238C22 6.26396 17.736 2 12.4762 2H11.5238C6.26395 2 2 6.26396 2 11.5238C2 11.7868 2.2132 12 2.47619 12H12ZM12 12V20C12 21.1046 11.1046 22 10 22C8.89543 22 8 21.1046 8 20V19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.9145 12C16.6354 9.28874 15.5544 2 12.0002 2C8.4461 2 7.3651 9.28874 7.08594 12" stroke="currentColor" stroke-linecap="round"/>''',
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
