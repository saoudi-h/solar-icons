// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rounded-magnifier-close` icon in the bold style.
class RoundedMagnifierCloseBoldIcon extends StatelessWidget {
  /// Creates the `rounded-magnifier-close` icon in the bold style.
  const RoundedMagnifierCloseBoldIcon({
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
    name: 'rounded-magnifier-close',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M19.7207 17.7832C19.9087 17.7989 20.1341 17.8669 20.3633 17.9365C20.3853 17.9432 20.4076 17.9504 20.4297 17.957C20.4495 17.963 20.4694 17.9686 20.4893 17.9746C20.7 18.038 20.9099 18.1014 21.0693 18.1875C21.9844 18.6819 22.2801 19.8632 21.707 20.7363C21.6072 20.8884 21.4516 21.0446 21.2959 21.2012C21.2813 21.2159 21.2665 21.2304 21.252 21.2451C21.2373 21.2599 21.2227 21.2752 21.208 21.29C21.0528 21.4471 20.8978 21.6034 20.7471 21.7041C19.8816 22.2822 18.7109 21.9844 18.2207 21.0615C18.1354 20.9008 18.0725 20.689 18.0098 20.4766C18.0038 20.4565 17.9981 20.436 17.9922 20.416C17.9856 20.3937 17.9783 20.3709 17.9717 20.3486C17.9026 20.1174 17.8348 19.8898 17.8193 19.7002C17.7303 18.6062 18.6361 17.6932 19.7207 17.7832Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.0635 2C16.0692 2 20.1278 6.09324 20.1279 11.1426C20.1279 16.1921 16.0693 20.2861 11.0635 20.2861C6.05782 20.2859 2 16.1919 2 11.1426C2.00017 6.09338 6.05793 2.00022 11.0635 2ZM13.2979 8.70117C13.0049 8.40847 12.5301 8.40834 12.2373 8.70117L11 9.93848L9.7627 8.70117C9.46987 8.40834 8.99506 8.40847 8.70215 8.70117C8.40926 8.99407 8.40926 9.46883 8.70215 9.76172L9.93945 10.999L8.70215 12.2373C8.40937 12.5302 8.40929 13.005 8.70215 13.2979C8.99503 13.5904 9.46989 13.5905 9.7627 13.2979L11 12.0605L12.2373 13.2979C12.5301 13.5905 13.005 13.5904 13.2979 13.2979C13.5907 13.005 13.5906 12.5302 13.2979 12.2373L12.0605 10.999L13.2979 9.76172C13.5907 9.46883 13.5907 8.99407 13.2979 8.70117Z" fill="currentColor"/>''',
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
