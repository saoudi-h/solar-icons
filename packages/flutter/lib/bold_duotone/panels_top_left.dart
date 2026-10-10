// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panels-top-left` icon in the boldDuotone style.
class PanelsTopLeftBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `panels-top-left` icon in the boldDuotone style.
  const PanelsTopLeftBoldDuotoneIcon({
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
    name: 'panels-top-left',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.9971 10.25C22.0005 10.7944 22 11.3766 22 12C22 16.714 21.9996 19.0707 20.5352 20.5352C19.0707 21.9996 16.714 22 12 22C11.1815 22 9.68405 21.9999 9 21.9922V9.5H22L21.9971 10.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.02639 9.5V8.75C2.10074 6.11064 2.38461 4.5451 3.46486 3.46484C4.92933 2.00041 7.28601 2 12 2C16.714 2 19.0707 2.00038 20.5352 3.46484C21.6154 4.5451 21.8993 6.11066 21.9737 8.75L22 9.5H9.00002V22L8.25002 21.9561C5.90966 21.8589 4.47508 21.5454 3.46486 20.5352C2.00041 19.0707 2.00002 16.714 2.00002 12C2.00002 11.3766 1.99956 10.7944 2.00295 10.25L2.02639 9.5Z" fill="currentColor"/>

<path opacity="0.5" d="M9.00002 9.5V22L8.25002 21.9561C5.90966 21.8589 4.47508 21.5454 3.46486 20.5352C2.00041 19.0707 2.00002 16.714 2.00002 12C2.00002 11.3766 1.99956 10.7944 2.00295 10.25L2.02639 9.5H9.00002Z" fill="currentColor"/>''',
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
