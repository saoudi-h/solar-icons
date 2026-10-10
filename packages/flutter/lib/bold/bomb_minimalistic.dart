// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bomb-minimalistic` icon in the bold style.
class BombMinimalisticBoldIcon extends StatelessWidget {
  /// Creates the `bomb-minimalistic` icon in the bold style.
  const BombMinimalisticBoldIcon({
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
    name: 'bomb-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M15.6646 2.82934C16.0351 2.6441 16.4856 2.79427 16.6708 3.16475L17.1708 4.16475C17.3561 4.53524 17.2059 4.98574 16.8354 5.17098C16.4649 5.35623 16.0144 5.20606 15.8292 4.83557L15.3292 3.83557C15.1439 3.46509 15.2941 3.01459 15.6646 2.82934Z" fill="currentColor"/>
<path d="M18.8292 7.16475C19.0144 6.79427 19.4649 6.6441 19.8354 6.82934L20.8354 7.32934C21.2059 7.51459 21.3561 7.96509 21.1708 8.33557C20.9856 8.70606 20.5351 8.85623 20.1646 8.67098L19.1646 8.17098C18.7941 7.98574 18.6439 7.53524 18.8292 7.16475Z" fill="currentColor"/>
<path d="M20.5303 4.53049C20.8232 4.2376 20.8232 3.76273 20.5303 3.46983C20.2374 3.17694 19.7626 3.17694 19.4697 3.46983L18.4697 4.46983C18.1768 4.76273 18.1768 5.2376 18.4697 5.53049C18.7626 5.82339 19.2374 5.82339 19.5303 5.53049L20.5303 4.53049Z" fill="currentColor"/>
<path d="M17 14.5002C17 18.6423 13.6421 22.0002 9.5 22.0002C5.35786 22.0002 2 18.6423 2 14.5002C2 10.358 5.35786 7.00016 9.5 7.00016C13.6421 7.00016 17 10.358 17 14.5002Z" fill="currentColor"/>
<path d="M17.5302 7.53049L16.3722 8.68853C16.0486 8.30631 15.6938 7.95143 15.3115 7.62787L16.4696 6.46983C16.7625 6.17694 17.2373 6.17694 17.5302 6.46983C17.8231 6.76273 17.8231 7.2376 17.5302 7.53049Z" fill="currentColor"/>''',
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
