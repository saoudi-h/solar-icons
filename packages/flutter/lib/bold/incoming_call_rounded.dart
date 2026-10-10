// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `incoming-call-rounded` icon in the bold style.
class IncomingCallRoundedBoldIcon extends StatelessWidget {
  /// Creates the `incoming-call-rounded` icon in the bold style.
  const IncomingCallRoundedBoldIcon({
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
    name: 'incoming-call-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.53829 4.93772C6.93123 3.54478 9.15289 3.73192 10.0373 5.31663L10.6867 6.47971C11.2722 7.52916 11.0369 8.90595 10.1145 9.82835C10.091 9.85227 9.01783 10.969 11.0246 12.9758C13.0315 14.9827 14.1483 13.9093 14.1721 13.886C15.0945 12.9636 16.4713 12.7282 17.5207 13.3137L18.6838 13.9631C20.2685 14.8475 20.4556 17.0692 19.0627 18.4621C18.2258 19.299 17.2009 19.9502 16.0676 19.9934C14.1595 20.0657 10.9187 19.5828 7.66817 16.3323C4.4176 13.0817 3.9347 9.84097 4.00704 7.93284C4.05018 6.79954 4.70141 5.77461 5.53829 4.93772Z" fill="currentColor"/>
<path d="M18.4699 4.46995C18.7628 4.17705 19.2376 4.17705 19.5305 4.46995C19.8233 4.76284 19.8234 5.23761 19.5305 5.53049L16.8108 8.25022H18.0002C18.4144 8.25022 18.7502 8.58601 18.7502 9.00022C18.7502 9.41441 18.4144 9.75022 18.0002 9.75022H15.0002C14.586 9.75022 14.2502 9.41441 14.2502 9.00022V6.00022C14.2502 5.58601 14.586 5.25022 15.0002 5.25022C15.4144 5.25022 15.7502 5.58601 15.7502 6.00022V7.18967L18.4699 4.46995Z" fill="currentColor"/>''',
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
