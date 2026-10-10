// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `conditioner-2` icon in the boldDuotone style.
class Conditioner2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `conditioner-2` icon in the boldDuotone style.
  const Conditioner2BoldDuotoneIcon({
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
    name: 'conditioner-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.87868 5.87868C2 6.75736 2 8.17157 2 11C2 14.7712 2 16.6569 3.17157 17.8284C3.69042 18.3473 4.34931 18.6363 5.25001 18.7974C5.25022 17.9655 5.25446 17.2668 5.32991 16.7055C5.41432 16.0777 5.59999 15.5109 6.05546 15.0555C6.51093 14.6 7.07773 14.4143 7.70552 14.3299C8.3003 14.2499 9.04952 14.25 9.948 14.25H14.052C14.9505 14.25 15.6997 14.2499 16.2945 14.3299C16.9223 14.4143 17.4891 14.6 17.9445 15.0555C18.4 15.5109 18.5857 16.0777 18.6701 16.7055C18.7455 17.2668 18.7498 17.9655 18.75 18.7974C19.6507 18.6363 20.3096 18.3473 20.8284 17.8284C22 16.6569 22 14.7712 22 11C22 8.17157 22 6.75736 21.1213 5.87868C20.2426 5 18.8284 5 16 5H8C5.17157 5 3.75736 5 2.87868 5.87868ZM5.25 11.5C5.25 11.0858 5.58579 10.75 6 10.75H18C18.4142 10.75 18.75 11.0858 18.75 11.5C18.75 11.9142 18.4142 12.25 18 12.25H6C5.58579 12.25 5.25 11.9142 5.25 11.5ZM6 8.25C5.58579 8.25 5.25 8.58579 5.25 9C5.25 9.41421 5.58579 9.75 6 9.75H18C18.4142 9.75 18.75 9.41421 18.75 9C18.75 8.58579 18.4142 8.25 18 8.25H6Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.25 18.7974C5.25021 17.9655 5.25445 17.2668 5.3299 16.7055C5.41431 16.0777 5.59998 15.5109 6.05545 15.0555C6.51092 14.6 7.07772 14.4143 7.70551 14.3299C8.30029 14.2499 9.04949 14.25 9.94796 14.25H14.052C14.9505 14.25 15.6997 14.2499 16.2945 14.3299C16.9223 14.4143 17.4891 14.6 17.9445 15.0555C18.4 15.5109 18.5857 16.0777 18.6701 16.7055C18.7455 17.2668 18.7498 17.9655 18.75 18.7974H5.25Z" fill="currentColor"/>''',
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
