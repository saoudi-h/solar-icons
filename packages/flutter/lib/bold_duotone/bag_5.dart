// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bag-5` icon in the boldDuotone style.
class Bag5BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bag-5` icon in the boldDuotone style.
  const Bag5BoldDuotoneIcon({
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
    name: 'bag-5',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9 8.75C9.55228 8.75 10 9.19772 10 9.75C10 10.3023 9.55228 10.75 9 10.75C8.44772 10.75 8 10.3023 8 9.75C8 9.19772 8.44772 8.75 9 8.75Z" fill="currentColor"/>
<path d="M15 8.75C15.5523 8.75 16 9.19772 16 9.75C16 10.3023 15.5523 10.75 15 10.75C14.4477 10.75 14 10.3023 14 9.75C14 9.19772 14.4477 8.75 15 8.75Z" fill="currentColor"/>
<path d="M12 2C14.0711 2 15.75 3.67893 15.75 5.75V6.75195C15.414 6.75044 15.0583 6.75 14.6816 6.75H14.25V5.75C14.25 4.50736 13.2426 3.5 12 3.5C10.7574 3.5 9.75 4.50736 9.75 5.75V6.75H9.31836C8.9417 6.75 8.58599 6.75044 8.25 6.75195V5.75C8.25 3.67893 9.92893 2 12 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.03532 16.9267C4.4971 19.2356 4.72799 20.3901 5.55742 21.07C6.38686 21.75 7.56417 21.75 9.9188 21.75H14.0812C16.4358 21.75 17.6131 21.75 18.4425 21.07C19.272 20.3901 19.5029 19.2356 19.9646 16.9267L20.5646 13.9267C21.2287 10.6063 21.5608 8.94607 20.6606 7.84803C19.7604 6.75 18.0673 6.75 14.6812 6.75H9.3188C5.93263 6.75 4.23954 6.75 3.33936 7.84803C2.43919 8.94607 2.77123 10.6063 3.43532 13.9267L4.03532 16.9267Z" fill="currentColor"/>''',
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
