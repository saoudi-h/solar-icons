// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `whisk` icon in the lineDuotone style.
class WhiskLineDuotoneIcon extends StatelessWidget {
  /// Creates the `whisk` icon in the lineDuotone style.
  const WhiskLineDuotoneIcon({
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
    name: 'whisk',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M19.816 12.236C22.3734 9.67866 22.7721 5.67503 20.5486 3.45154C18.325 1.22806 14.3212 1.62672 11.7638 4.18408C9.20632 6.74143 7.85713 11.6956 10.0807 13.9191C12.3042 16.1425 17.2585 14.7934 19.816 12.236Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.8991 15.127L6.85994 21.166C5.74816 22.2777 3.94561 22.2777 2.83383 21.166C1.72206 20.0543 1.72206 18.2518 2.83383 17.14L8.87299 11.1011" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20.5485 3.45144C21.7566 4.65951 19.0984 8.12279 17.3279 9.89327C15.5573 11.6637 11.2887 15.127 10.0806 13.919C8.87249 12.7109 12.3364 8.44297 14.107 6.67249C15.8775 4.90202 19.3404 2.24337 20.5485 3.45144Z" stroke="currentColor" stroke-linecap="round"/>''',
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
