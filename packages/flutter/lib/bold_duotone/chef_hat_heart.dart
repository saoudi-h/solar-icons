// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chef-hat-heart` icon in the boldDuotone style.
class ChefHatHeartBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chef-hat-heart` icon in the boldDuotone style.
  const ChefHatHeartBoldDuotoneIcon({
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
    name: 'chef-hat-heart',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M18.999 18C18.9888 19.3969 18.9164 20.9117 18.4141 21.414C17.8283 21.9997 16.8855 22 15 22H9C7.11456 22 6.1717 21.9998 5.58594 21.414C5.0837 20.9115 5.01214 19.3968 5.00195 18H18.999Z" fill="currentColor"/>
<path d="M12 9.99508C13.3498 8.70263 14.9997 9.32706 15 11C15 11.9844 13.835 13.0247 12.957 13.6689C12.5373 13.9769 12.3275 14.1308 12 14.1308C11.6725 14.1308 11.4627 13.9769 11.043 13.6689C10.165 13.0247 9 11.9843 9 11C9.00029 9.32706 10.6502 8.70263 12 9.99508Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 10C2 7.23858 4.23858 5 7 5C7.25052 5 7.49673 5.01842 7.73736 5.05399C8.33961 3.27806 10.0206 2 12 2C13.9794 2 15.6604 3.27806 16.2626 5.05399C16.5033 5.01842 16.7495 5 17 5C19.7614 5 22 7.23858 22 10C22 12.0503 20.7659 13.8124 19 14.584L19 18H5V14.584C3.2341 13.8124 2 12.0503 2 10Z" fill="currentColor"/>''',
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
