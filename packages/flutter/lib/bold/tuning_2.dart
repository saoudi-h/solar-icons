// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tuning-2` icon in the bold style.
class Tuning2BoldIcon extends StatelessWidget {
  /// Creates the `tuning-2` icon in the bold style.
  const Tuning2BoldIcon({
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
    name: 'tuning-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M9.25 14C10.9069 14 12.25 15.3431 12.25 17C12.25 18.6569 10.9069 20 9.25 20C7.59315 20 6.25 18.6569 6.25 17C6.25 15.3431 7.59315 14 9.25 14Z" fill="currentColor"/>
<path d="M14.25 4C12.5931 4 11.25 5.34315 11.25 7C11.25 8.65685 12.5931 10 14.25 10C15.9069 10 17.25 8.65685 17.25 7C17.25 5.34315 15.9069 4 14.25 4Z" fill="currentColor"/>
<path d="M8.75 6.20852C9.16421 6.20852 9.5 6.54431 9.5 6.95852C9.5 7.37273 9.16421 7.70852 8.75 7.70852L1.75 7.70852C1.33579 7.70852 1 7.37273 1 6.95852C1 6.54431 1.33579 6.20852 1.75 6.20852H8.75Z" fill="currentColor"/>
<path d="M14.75 16.2085C14.3358 16.2085 14 16.5443 14 16.9585C14 17.3727 14.3358 17.7085 14.75 17.7085H21.75C22.1642 17.7085 22.5 17.3727 22.5 16.9585C22.5 16.5443 22.1642 16.2085 21.75 16.2085H14.75Z" fill="currentColor"/>
<path d="M1 16.9585C1 16.5443 1.33579 16.2085 1.75 16.2085H3.75C4.16421 16.2085 4.5 16.5443 4.5 16.9585C4.5 17.3727 4.16421 17.7085 3.75 17.7085H1.75C1.33579 17.7085 1 17.3727 1 16.9585Z" fill="currentColor"/>
<path d="M21.75 6.20852C22.1642 6.20852 22.5 6.54431 22.5 6.95852C22.5 7.37273 22.1642 7.70852 21.75 7.70852L19.75 7.70852C19.3358 7.70852 19 7.37273 19 6.95852C19 6.54431 19.3358 6.20852 19.75 6.20852H21.75Z" fill="currentColor"/>''',
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
