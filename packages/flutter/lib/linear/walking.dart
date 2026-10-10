// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `walking` icon in the linear style.
class WalkingLinearIcon extends StatelessWidget {
  /// Creates the `walking` icon in the linear style.
  const WalkingLinearIcon({
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
    name: 'walking',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="11.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 10L10.3413 11.5869C10.1722 13.2776 10.0877 14.123 10.2784 14.9346C10.4691 15.7462 10.9212 16.4655 11.8255 17.904L14.4004 22M10.5 10H10.2087C8.67043 10 7.9013 10 7.35289 10.4399C6.80448 10.8798 6.63763 11.6306 6.30394 13.1323L6 14.5M10.5 10H12.2698C12.43 10 12.5101 10 12.5815 10.0051C13.3916 10.0632 14.0862 10.6055 14.3391 11.3774C14.3614 11.4455 14.3808 11.5231 14.4196 11.6785C14.4717 11.8869 14.4978 11.9911 14.5269 12.0752C14.8633 13.0449 15.8792 13.6025 16.8779 13.3657C16.9645 13.3452 17.0664 13.3112 17.2702 13.2433L18 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 17.5L6 22" stroke="currentColor" stroke-linecap="round"/>''',
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
