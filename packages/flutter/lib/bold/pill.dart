// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pill` icon in the bold style.
class PillBoldIcon extends StatelessWidget {
  /// Creates the `pill` icon in the bold style.
  const PillBoldIcon({
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
    name: 'pill',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3.99057 3.99057C1.33648 6.64466 1.33648 10.9478 3.99057 13.6019L6.55391 16.1652L7.0495 16.0698C7.04919 16.0698 7.04956 16.0698 7.05049 16.0696L7.06435 16.0666C7.07872 16.0634 7.10332 16.0577 7.13754 16.0491C7.20599 16.0318 7.31287 16.0027 7.45346 15.9578C7.73465 15.868 8.1504 15.7153 8.66292 15.4683C9.68709 14.9747 11.1005 14.1037 12.6019 12.6023C14.1032 11.101 14.9744 9.68744 15.468 8.66312C15.7151 8.15053 15.8679 7.73472 15.9578 7.45347C16.0027 7.31286 16.0318 7.20594 16.0491 7.13748C16.0577 7.10325 16.0634 7.07865 16.0666 7.06426L16.0696 7.05043C16.0698 7.04952 16.0699 7.04909 16.0698 7.0494L16.1653 6.55397L13.6019 3.99057C10.9478 1.33648 6.64466 1.33648 3.99057 3.99057Z" fill="currentColor"/>
<path d="M17.4187 7.80734C17.4087 7.83998 17.398 7.87417 17.3866 7.90986C17.2772 8.25257 17.099 8.73396 16.8193 9.31437C16.2594 10.4761 15.2939 12.0316 13.6625 13.663C12.0312 15.2943 10.4757 16.2598 9.31411 16.8195C8.73375 17.0992 8.2524 17.2773 7.90973 17.3867C7.8741 17.3981 7.83996 17.4088 7.80737 17.4187L10.3981 20.0094C13.0522 22.6635 17.3553 22.6635 20.0094 20.0094C22.6635 17.3553 22.6635 13.0522 20.0094 10.3981L17.4187 7.80734Z" fill="currentColor"/>''',
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
