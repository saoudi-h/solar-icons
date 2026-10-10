// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-bottom-close` icon in the boldDuotone style.
class PanelBottomCloseBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `panel-bottom-close` icon in the boldDuotone style.
  const PanelBottomCloseBoldDuotoneIcon({
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
    name: 'panel-bottom-close',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.9941 15C20.9665 17.6358 20.8024 19.8538 19.8281 20.8281C18.6565 21.9996 16.7712 22 13 22L11 22C7.2288 22 5.34345 21.9996 4.17187 20.8281C3.19755 19.8538 3.03348 17.6358 3.00586 15L20.9941 15Z" fill="currentColor"/>
<path d="M15.5693 6.72848C15.8388 7.04292 15.8026 7.51652 15.4883 7.7861L12.4883 10.3574C12.2074 10.5981 11.7926 10.5981 11.5117 10.3574L8.51172 7.7861C8.19739 7.51652 8.16118 7.04292 8.43066 6.72848C8.70025 6.41413 9.17384 6.3779 9.48828 6.64742L12 8.79977L14.5117 6.64742C14.8262 6.3779 15.2997 6.41413 15.5693 6.72848Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M19.8284 3.17157C18.6568 2 16.7712 2 13 2L11 2C7.22873 2 5.34312 2 4.17154 3.17157C2.99997 4.34315 2.99997 6.22876 2.99997 10L2.99997 14C2.99997 14.0843 2.99993 14.9176 2.99994 15L20.9999 15C21 14.9176 21 14.0843 21 14L21 10C21 6.22876 21 4.34315 19.8284 3.17157Z" fill="currentColor"/>''',
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
