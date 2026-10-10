// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `barcode` icon in the broken style.
class BarcodeBrokenIcon extends StatelessWidget {
  /// Creates the `barcode` icon in the broken style.
  const BarcodeBrokenIcon({
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
    name: 'barcode',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.3169 18.9785C12.3169 18.3545 12.3169 17.7305 12.3169 17.1064" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.3169 13.458C12.3169 10.6315 12.3169 7.80501 12.3169 4.97852" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.53882 18.9785C5.53882 18.3545 5.53882 17.7305 5.53882 17.1064" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.53882 13.458C5.53882 10.6315 5.53882 7.80501 5.53882 4.97852" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.2219 18.9785C15.2219 18.3545 15.2219 17.7305 15.2219 17.1064" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.2219 13.458C15.2219 10.6315 15.2219 7.80501 15.2219 4.97852" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 18.978C22 18.3542 22 17.7303 22 17.1064" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 13.458C22 10.6313 22 7.80469 22 4.97803" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.63379 18.9785C2.63379 18.3545 2.63379 17.7305 2.63379 17.1064" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.63379 13.458C2.63379 10.6315 2.63379 7.80501 2.63379 4.97852" stroke="currentColor" stroke-linecap="round"/>
<rect x="8.44385" y="4.95654" width="0.967885" height="8.50146" rx="0.483942" stroke="currentColor" stroke-linecap="round"/>
<rect x="18.127" y="4.95654" width="0.967885" height="8.50146" rx="0.483942" stroke="currentColor" stroke-linecap="round"/>
<rect x="18.127" y="17.1064" width="0.967885" height="1.87158" rx="0.483942" stroke="currentColor" stroke-linecap="round"/>
<rect x="8.44385" y="17.1064" width="0.967885" height="1.87158" rx="0.483942" stroke="currentColor" stroke-linecap="round"/>''',
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
