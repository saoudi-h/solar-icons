// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sledgehammer` icon in the boldDuotone style.
class SledgehammerBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `sledgehammer` icon in the boldDuotone style.
  const SledgehammerBoldDuotoneIcon({
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
    name: 'sledgehammer',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7.60379 4.60379C9.33965 2.86793 10.2076 2 11.2861 2C12.3646 2 13.2326 2.86793 14.9684 4.60379L19.3872 9.02256C21.123 10.7584 21.991 11.6263 21.991 12.7049C21.991 13.7834 21.123 14.6513 19.3872 16.3872C17.6513 18.123 16.7834 18.991 15.7049 18.991C14.6263 18.991 13.7584 18.123 12.0226 16.3872L7.60379 11.9684C5.86793 10.2326 5 9.36462 5 8.2861C5 7.20757 5.86793 6.33965 7.60379 4.60379Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M8.34466 12.7093L2.82581 18.2281C2.48337 18.5706 2.31214 18.7418 2.2093 18.9199C1.93023 19.4033 1.93023 19.9988 2.2093 20.4822C2.31214 20.6603 2.48336 20.8315 2.82578 21.1739C3.16823 21.5164 3.33948 21.6876 3.5176 21.7905C4.00097 22.0696 4.5965 22.0696 5.07987 21.7905C5.25799 21.6876 5.42921 21.5164 5.77166 21.174L11.2905 15.6551L8.34466 12.7093Z" fill="currentColor"/>
<path d="M18.6551 8.29051L19.028 7.91766C19.3704 7.57521 19.5416 7.40399 19.6445 7.22587C19.9236 6.7425 19.9236 6.14696 19.6445 5.66359C19.5416 5.48547 19.3704 5.31425 19.028 4.97181C18.6855 4.62936 18.5143 4.45814 18.3362 4.3553C17.8528 4.07623 17.2573 4.07623 16.7739 4.3553C16.5958 4.45814 16.4246 4.62936 16.0821 4.97181L15.7093 5.34466L18.6551 8.29051Z" fill="currentColor"/>
</g>''',
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
