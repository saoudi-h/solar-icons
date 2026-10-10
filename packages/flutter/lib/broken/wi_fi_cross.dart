// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-cross` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTguNjY2OTkgMTUuODkzMUMxMC41MDc5IDEzLjkwNjEgMTMuNDkyNyAxMy45MDYxIDE1LjMzMzcgMTUuODkzMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik01LjMzMzAxIDEyLjI5NUM3LjQyOTY1IDEwLjAzMiAxMC4yNjgxIDkuMDU3NjQgMTMuMDAzNSA5LjM3MTk1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIgOC42OTY5M0MyLjc4OTIxIDcuODQ1MDkgMy42NDg0OCA3LjExNDk4IDQuNTU3OCA2LjUwNjU5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTguNTM2MzggNC42ODg1M0MxMC4wMDAxIDQuMjkxMSAxMS41MTEzIDQuMTQ5ODMgMTMuMDA4NyA0LjI2NDcyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyLjAxNzYgMTkuNDY0NEgxMi4wMTc3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIyIDUuMDAwMDJMMTYgMTFNMTYgNUwyMS45OTk5IDExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class WiFiCrossBrokenIcon extends StatelessWidget {
  /// Creates the `wi-fi-cross` icon in the broken style.
  const WiFiCrossBrokenIcon({
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
    name: 'wi-fi-cross',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8.66699 15.8931C10.5079 13.9061 13.4927 13.9061 15.3337 15.8931" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.33301 12.295C7.42965 10.032 10.2681 9.05764 13.0035 9.37195" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8.69693C2.78921 7.84509 3.64848 7.11498 4.5578 6.50659" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.53638 4.68853C10.0001 4.2911 11.5113 4.14983 13.0087 4.26472" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 5.00002L16 11M16 5L21.9999 11" stroke="currentColor" stroke-linecap="round"/>''',
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
