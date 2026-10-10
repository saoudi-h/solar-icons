// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `broom` icon in the boldDuotone style.
class BroomBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `broom` icon in the boldDuotone style.
  const BroomBoldDuotoneIcon({
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
    name: 'broom',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M19.6426 4.35756C17.9067 2.62162 15.0922 2.62175 13.3562 4.35764L13.3184 4.39549C13.5498 4.55102 13.774 4.77521 14.1201 5.12119L18.9454 9.9457C19.2472 10.2475 19.4628 10.463 19.6205 10.6662L19.6427 10.644C21.3786 8.90807 21.3785 6.09349 19.6426 4.35756Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M11.7598 4.08286C12.349 4.0805 12.644 4.07904 13.0138 4.2313C13.3833 4.38356 13.6289 4.6297 14.1202 5.12095L18.9454 9.94517C19.4735 10.4732 19.7383 10.738 19.8907 11.1336C20.0429 11.529 20.0263 11.8492 19.9942 12.4891C19.9405 13.5608 19.7703 15.1141 19.2823 16.8211C18.9802 17.8777 18.5039 18.9408 18.003 19.8895C16.9429 21.8974 14.4875 22.5205 12.5889 21.5516L11.3702 20.8104C8.02817 18.7773 5.22265 15.9718 3.18953 12.6297L2.44832 11.411C1.47933 9.51245 2.10249 7.05711 4.11043 5.99693C5.05913 5.49603 6.12226 5.01969 7.17879 4.71763C8.9754 4.20402 10.6467 4.08733 11.7598 4.08286Z" fill="currentColor"/>
<path d="M21.4698 1.46958C21.7627 1.17686 22.2375 1.17675 22.5304 1.46958C22.823 1.76243 22.823 2.23728 22.5304 2.53013L20.128 4.93247C19.9849 4.73086 19.8233 4.53796 19.6427 4.35728C19.4619 4.17654 19.2692 4.01503 19.0675 3.87193L21.4698 1.46958Z" fill="currentColor"/>
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
