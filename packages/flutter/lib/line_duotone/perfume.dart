// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `perfume` icon in the lineDuotone style.
class PerfumeLineDuotoneIcon extends StatelessWidget {
  /// Creates the `perfume` icon in the lineDuotone style.
  const PerfumeLineDuotoneIcon({
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
    name: 'perfume',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7 5.42168V5C7 3.58579 7 2.87868 7.43934 2.43934C7.87868 2 8.58579 2 10 2C11.4142 2 12.1213 2 12.5607 2.43934C13 2.87868 13 3.58579 13 5V5.42168V7H7V5.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13 7H7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10 7C5.58172 7 2 10.3556 2 14.495C2 16.4098 2.76642 18.1569 4.02754 19.4817C4.47765 19.9546 4.7027 20.191 5.64624 20.5955C6.58979 21 7.24039 21 8.5416 21H11.4584C12.7596 21 13.4102 21 14.3538 20.5955C15.2973 20.191 15.5224 19.9546 15.9725 19.4817C17.2336 18.1569 18 16.4098 18 14.495C18 10.3556 14.4183 7 10 7Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.5 5.24977C21.6958 5.94012 22.2174 7.27523 21.6651 8.23182C21.1128 9.1884 19.6958 9.40422 18.5 8.71387C17.3043 8.02351 16.7827 6.6884 17.335 5.73182C17.8872 4.77523 19.3043 4.55941 20.5 5.24977Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M7.00865 4.00037C7.55695 3.99984 8 3.95063 8 4.50002C8 5.05231 7.55228 5.00023 7 5.00023" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M17.2594 5.87969C17.0248 5.76241 16.7903 5.64514 16.5557 5.52786C15.8615 5.18073 15.0959 5 14.3197 5H13.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2.5 13C3.93501 13.5805 5.64292 14.7308 7.86069 14.9805C10.856 15.3178 12.4244 12.8237 15.3979 13.3176C16.446 13.4917 17.4232 13.7921 18 14.112" stroke="currentColor" stroke-linecap="round"/>''',
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
