// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chef-hat` icon in the broken style.
class ChefHatBrokenIcon extends StatelessWidget {
  /// Creates the `chef-hat` icon in the broken style.
  const ChefHatBrokenIcon({
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
    name: 'chef-hat',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5 14.584V18C5 19.8856 5 20.8285 5.58579 21.4142C6.17157 22 7.11438 22 9 22H10" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 14.584L19 18C19 19.8856 19 20.8285 18.4142 21.4142C17.8284 22 16.8856 22 15 22H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 18H13M19 18H17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 14.584C3.2341 13.8124 2 12.0503 2 10C2 7.23858 4.23858 5 7 5C7.25052 5 7.49673 5.01842 7.73736 5.05399" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.2627 5.05399C16.5033 5.01842 16.7495 5 17.0001 5C19.7615 5 22.0001 7.23858 22.0001 10C22.0001 12.0503 20.766 13.8124 19.0001 14.584" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 7V6.5C16.5 5.99416 16.4165 5.50782 16.2626 5.05399C15.6604 3.27806 13.9794 2 12 2C10.0206 2 8.33962 3.27806 7.73736 5.05399C7.58346 5.50782 7.5 5.99416 7.5 6.5V7" stroke="currentColor" stroke-linecap="round"/>''',
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
