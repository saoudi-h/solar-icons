// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `phone-rounded` icon in the linear style.
class PhoneRoundedLinearIcon extends StatelessWidget {
  /// Creates the `phone-rounded` icon in the linear style.
  const PhoneRoundedLinearIcon({
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
    name: 'phone-rounded',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M7.6677 16.3323C4.41713 13.0817 3.93421 9.84124 4.00655 7.93311" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.6675 16.3323C10.9181 19.5829 14.1586 20.0658 16.0667 19.9934C17.2002 19.9505 18.2256 19.2992 19.0626 18.4622C20.4555 17.0692 20.2684 14.8468 18.6836 13.9624L17.5207 13.3134C16.4712 12.7277 15.0945 12.9628 14.172 13.8853C14.172 13.8853 13.053 15.0042 11.0243 12.9755C8.99557 10.9467 10.1145 9.8278 10.1145 9.8278C11.037 8.90533 11.2721 7.52858 10.6864 6.4791L10.0374 5.31617C9.15297 3.73144 6.93055 3.54428 5.5376 4.93723C4.7006 5.77423 4.04932 6.7996 4.00635 7.93309" stroke="currentColor" stroke-linecap="round"/>''',
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
