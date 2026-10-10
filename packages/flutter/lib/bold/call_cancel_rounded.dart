// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `call-cancel-rounded` icon in the bold style.
class CallCancelRoundedBoldIcon extends StatelessWidget {
  /// Creates the `call-cancel-rounded` icon in the bold style.
  const CallCancelRoundedBoldIcon({
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
    name: 'call-cancel-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.53829 4.93744C6.93123 3.54451 9.15289 3.73164 10.0373 5.31635L10.6867 6.47944C11.2722 7.52888 11.0369 8.90567 10.1145 9.82807C10.091 9.85199 9.01783 10.9687 11.0246 12.9755C13.0315 14.9824 14.1483 13.909 14.1721 13.8857C15.0945 12.9633 16.4713 12.7279 17.5207 13.3134L18.6838 13.9628C20.2685 14.8473 20.4556 17.0689 19.0627 18.4619C18.2258 19.2987 17.2009 19.95 16.0676 19.9931C14.1595 20.0654 10.9187 19.5826 7.66817 16.332C4.4176 13.0814 3.9347 9.8407 4.00704 7.93256C4.05018 6.79926 4.70141 5.77433 5.53829 4.93744Z" fill="currentColor"/>
<path d="M19.4699 3.46967C19.7628 3.17679 20.2376 3.17679 20.5305 3.46967C20.8234 3.76256 20.8234 4.23732 20.5305 4.53022L19.0608 5.99994L20.5305 7.46967C20.8234 7.76256 20.8234 8.23733 20.5305 8.53022C20.2376 8.8231 19.7628 8.82309 19.4699 8.53022L18.0002 7.06049L16.5305 8.53022C16.2376 8.8231 15.7628 8.82311 15.4699 8.53022C15.177 8.23733 15.177 7.76256 15.4699 7.46967L16.9397 5.99994L15.4699 4.53022C15.177 4.23732 15.177 3.76256 15.4699 3.46967C15.7628 3.17678 16.2376 3.17678 16.5305 3.46967L18.0002 4.9394L19.4699 3.46967Z" fill="currentColor"/>''',
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
