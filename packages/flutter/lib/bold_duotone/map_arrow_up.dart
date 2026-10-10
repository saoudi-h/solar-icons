// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-arrow-up` icon in the boldDuotone style.
class MapArrowUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `map-arrow-up` icon in the boldDuotone style.
  const MapArrowUpBoldDuotoneIcon({
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
    name: 'map-arrow-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.0374 9.85761C7.78266 9.73024 7.47314 9.84107 7.35714 10.1012L3.16447 19.5029C2.49741 20.9987 3.97865 22.5503 5.36641 21.8093L11.2701 18.6573C11.7293 18.4121 12.2697 18.4122 12.7289 18.6573L18.6326 21.8093C20.0204 22.5503 21.5016 20.9987 20.8346 19.5029L19.2629 15.9785C19.0743 15.5557 18.7448 15.2113 18.3307 15.0043L8.0374 9.85761Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.6095 8.46721C8.37019 8.34755 8.26749 8.06071 8.37646 7.81635L10.5271 2.99379C11.1174 1.67004 12.8818 1.67004 13.4722 2.99379L17.4401 11.8915C17.6313 12.3202 17.1797 12.7523 16.7598 12.5424L8.6095 8.46721Z" fill="currentColor"/>''',
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
