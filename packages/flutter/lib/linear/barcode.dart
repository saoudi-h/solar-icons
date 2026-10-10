// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `barcode` icon in the linear style.
class BarcodeLinearIcon extends StatelessWidget {
  /// Creates the `barcode` icon in the linear style.
  const BarcodeLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12.3169 18.9785L12.3169 4.97852" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.53906 18.9785L5.53906 4.97852" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.2222 18.9785L15.2222 4.97852" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 18.978L22 4.97803" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.63379 18.9785L2.63379 4.97852" stroke="currentColor" stroke-linecap="round"/>
<rect x="8.44385" y="4.95654" width="0.967885" height="14.0435" rx="0.483942" stroke="currentColor" stroke-linecap="round"/>
<rect x="18.127" y="4.93457" width="0.967885" height="14.0435" rx="0.483942" stroke="currentColor" stroke-linecap="round"/>''',
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
