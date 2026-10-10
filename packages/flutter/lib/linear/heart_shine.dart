// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `heart-shine` icon in the linear style.
class HeartShineLinearIcon extends StatelessWidget {
  /// Creates the `heart-shine` icon in the linear style.
  const HeartShineLinearIcon({
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
    name: 'heart-shine',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8 11.3796C8 13.357 9.60777 14.4107 10.7847 15.3538C11.2 15.6866 11.6 16 12 16C12.4 16 12.8 15.6866 13.2153 15.3538C14.3922 14.4107 16 13.357 16 11.3796C16 9.40225 13.7999 7.99994 12 9.90096C10.2001 7.99994 8 9.40225 8 11.3796Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 2V4" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 20V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12L4 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 12L22 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 18L6.34305 17.657" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.6567 6.34326L18 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 18L17.657 17.657" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.34326 6.34326L6 6" stroke="currentColor" stroke-linecap="round"/>''',
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
