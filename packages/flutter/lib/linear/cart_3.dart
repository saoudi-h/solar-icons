// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cart-3` icon in the linear style.
class Cart3LinearIcon extends StatelessWidget {
  /// Creates the `cart-3` icon in the linear style.
  const Cart3LinearIcon({
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
    name: 'cart-3',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.86376 16.4552C3.00581 13.0234 2.57684 11.3075 3.47767 10.1538C4.3785 9 6.14721 9 9.68462 9H14.3153C17.8527 9 19.6214 9 20.5222 10.1538C21.4231 11.3075 20.9941 13.0234 20.1362 16.4552C19.5905 18.6379 19.3176 19.7292 18.5039 20.3646C17.6901 21 16.5652 21 14.3153 21H9.68462C7.43476 21 6.30983 21 5.49605 20.3646C4.68227 19.7292 4.40943 18.6379 3.86376 16.4552Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.4606 9.39865L18.7897 6.89465C18.5157 5.89005 18.3788 5.38775 18.0978 5.00946C17.8181 4.63273 17.4379 4.34234 17.0008 4.17152C16.562 4 16.0413 4 15.0001 4M4.53946 9.39861L5.21045 6.89465C5.48437 5.89005 5.62134 5.38775 5.90227 5.00946C6.18205 4.63273 6.56221 4.34234 6.99928 4.17152C7.43814 4 7.95878 4 9.00005 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4C15 4.55228 14.5523 5 14 5H10C9.44772 5 9 4.55228 9 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 13V17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16 13V17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 13V17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
