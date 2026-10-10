// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rounded-magnifier-zoom-in` icon in the boldDuotone style.
class RoundedMagnifierZoomInBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `rounded-magnifier-zoom-in` icon in the boldDuotone style.
  const RoundedMagnifierZoomInBoldDuotoneIcon({
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
    name: 'rounded-magnifier-zoom-in',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.2832 18.2568C20.5013 18.2749 20.7704 18.3599 21.0586 18.4463C21.3221 18.5252 21.5733 18.5956 21.7578 18.6943C22.733 19.2171 23.0483 20.466 22.4375 21.3887C22.3218 21.5634 22.1342 21.7447 21.9395 21.9395C21.7447 22.1342 21.5634 22.3218 21.3887 22.4375C20.466 23.0483 19.2171 22.733 18.6943 21.7578C18.5956 21.5733 18.5252 21.3221 18.4463 21.0586C18.3599 20.7704 18.2749 20.5013 18.2568 20.2832C18.1617 19.1267 19.1267 18.1617 20.2832 18.2568Z" fill="currentColor"/>
<path d="M11 8.25C11.4142 8.25 11.75 8.58579 11.75 9V10.25H13C13.4142 10.25 13.75 10.5858 13.75 11C13.75 11.4142 13.4142 11.75 13 11.75H11.75V13C11.75 13.4142 11.4142 13.75 11 13.75C10.5858 13.75 10.25 13.4142 10.25 13V11.75H9C8.58579 11.75 8.25 11.4142 8.25 11C8.25 10.5858 8.58579 10.25 9 10.25H10.25V9C10.25 8.58579 10.5858 8.25 11 8.25Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11" cy="11" r="9" fill="currentColor"/>''',
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
