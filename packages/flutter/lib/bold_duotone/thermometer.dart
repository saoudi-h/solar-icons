// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `thermometer` icon in the boldDuotone style.
class ThermometerBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `thermometer` icon in the boldDuotone style.
  const ThermometerBoldDuotoneIcon({
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
    name: 'thermometer',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.1562 15.8779C10.449 15.5853 10.9239 15.5853 11.2167 15.8779L12.5175 17.1787L11.457 18.2392L10.1562 16.9394C9.8633 16.6465 9.8633 16.1708 10.1562 15.8779Z" fill="currentColor"/>
<path d="M14.9697 7.96967C15.2626 7.67678 15.7373 7.67678 16.0302 7.96967C16.3231 8.26256 16.3231 8.73732 16.0302 9.03022L9.53022 15.5302C9.23732 15.8231 8.76256 15.8231 8.46967 15.5302C8.17678 15.2373 8.17678 14.7626 8.46967 14.4697L14.9697 7.96967Z" fill="currentColor"/>
<path d="M13.3652 12.6689C13.658 12.3761 14.1328 12.3762 14.4257 12.6689L15.7265 13.9697L14.666 15.0302L13.3652 13.7294C13.0725 13.4365 13.0724 12.9617 13.3652 12.6689Z" fill="currentColor"/>
<path d="M16.5644 9.46967C16.8573 9.17678 17.333 9.17678 17.6259 9.46967L18.9257 10.7705L17.8652 11.831L16.5644 10.5302C16.2718 10.2374 16.2718 9.7625 16.5644 9.46967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.96229 20.1739L5.57866 20.5576C4.98875 21.1475 4.03233 21.1475 3.44243 20.5576C2.85252 19.9677 2.85252 19.0112 3.44243 18.4213L3.82606 18.0377C4.25869 17.6051 4.47121 16.9992 4.40364 16.3911L4.31485 15.592C4.2135 14.6799 4.53228 13.7711 5.18123 13.1222L14.1236 4.17981C15.6967 2.60673 18.2471 2.60673 19.8202 4.17981C21.3933 5.75288 21.3933 8.30334 19.8202 9.87642L10.8778 18.8188C10.2289 19.4677 9.32013 19.7865 8.40799 19.6851L7.60886 19.5964C7.00076 19.5288 6.39492 19.7413 5.96229 20.1739Z" fill="currentColor"/>''',
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
