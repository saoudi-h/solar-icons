// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `help` icon in the boldDuotone style.
class HelpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `help` icon in the boldDuotone style.
  const HelpBoldDuotoneIcon({
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
    name: 'help',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M5.47875 19.5818L9.75149 15.309C9.3348 15.0254 8.97447 14.6651 8.69079 14.2484L4.41807 18.5211C4.74471 18.9005 5.09934 19.2551 5.47875 19.5818Z" fill="currentColor"/>
<path d="M4.41797 5.47912L8.6907 9.75185C8.97436 9.33516 9.33468 8.97485 9.75136 8.69119L5.47863 4.41846C5.09922 4.74509 4.7446 5.09971 4.41797 5.47912Z" fill="currentColor"/>
<path d="M14.2479 8.69128L18.5206 4.41856C18.9 4.7452 19.2547 5.09982 19.5813 5.47924L15.3085 9.75198C15.0249 9.33529 14.6646 8.97496 14.2479 8.69128Z" fill="currentColor"/>
<path d="M19.5812 18.521L15.3084 14.2483C15.0248 14.665 14.6645 15.0253 14.2478 15.3089L18.5205 19.5817C18.8999 19.255 19.2545 18.9004 19.5812 18.521Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22ZM12 16C14.2091 16 16 14.2091 16 12C16 9.79086 14.2091 8 12 8C9.79086 8 8 9.79086 8 12C8 14.2091 9.79086 16 12 16Z" fill="currentColor"/>''',
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
