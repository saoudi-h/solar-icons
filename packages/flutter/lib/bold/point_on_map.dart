// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `point-on-map` icon in the bold style.
class PointOnMapBoldIcon extends StatelessWidget {
  /// Creates the `point-on-map` icon in the bold style.
  const PointOnMapBoldIcon({
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
    name: 'point-on-map',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M19.4668 8.49121C20.1211 8.71823 20.4881 8.88688 20.7168 9.2041C20.9999 9.59689 21 10.1188 21 11.1621V16.8291C21 18.1198 20.9997 18.765 20.6602 19.1797C20.5448 19.3205 20.4049 19.4396 20.2471 19.5303C19.7822 19.7972 19.1454 19.6907 17.8721 19.4785C16.616 19.2692 15.9877 19.1648 15.3652 19.2168C15.1467 19.2351 14.9291 19.2677 14.7148 19.3145C14.1045 19.4478 13.5299 19.7351 12.3809 20.3096C10.8813 21.0594 10.1311 21.4342 9.33301 21.5498C9.0926 21.5846 8.84936 21.602 8.60645 21.6016C7.80007 21.5999 7.01126 21.3371 5.43457 20.8115L5.05176 20.6836C4.06173 20.3536 3.56634 20.1887 3.2832 19.7959C3.00015 19.4031 3 18.8814 3 17.8379V12.9082C3 11.2493 2.99987 10.4197 3.48828 9.97363C3.57374 9.89558 3.66845 9.82788 3.76953 9.77148C4.02272 9.63032 4.31603 9.60098 4.69824 9.65723C4.94142 10.8775 5.40055 12.0849 6.03418 13.1738C7.00685 14.8453 8.4515 16.3398 10.3027 17.1475C11.3817 17.6182 12.6183 17.6182 13.6973 17.1475C15.5485 16.3398 16.9932 14.8453 17.9658 13.1738C18.8012 11.7382 19.3329 10.0974 19.4668 8.49121Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C15.3137 2 17.9999 4.55205 18 7.7002C18 10.8236 16.0853 14.4689 13.0977 15.7725C12.4011 16.0763 11.5989 16.0763 10.9023 15.7725C7.91468 14.4689 6 10.8236 6 7.7002C6.00006 4.55205 8.68633 2 12 2ZM12 6C10.8954 6 10 6.89543 10 8C10 9.10457 10.8954 10 12 10C13.1046 10 14 9.10457 14 8C14 6.89543 13.1046 6 12 6Z" fill="currentColor"/>''',
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
