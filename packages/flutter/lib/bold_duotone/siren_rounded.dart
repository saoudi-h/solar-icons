// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `siren-rounded` icon in the boldDuotone style.
class SirenRoundedBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `siren-rounded` icon in the boldDuotone style.
  const SirenRoundedBoldDuotoneIcon({
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
    name: 'siren-rounded',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M2 21.25H11.25V18.7998C10.8016 18.5404 10.5 18.0552 10.5 17.5C10.5 16.6716 11.1716 16 12 16C12.8284 16 13.5 16.6716 13.5 17.5C13.5 18.0552 13.1984 18.5404 12.75 18.7998V21.25H22C22.4142 21.25 22.75 21.5858 22.75 22C22.75 22.4142 22.4142 22.75 22 22.75H2C1.58579 22.75 1.25 22.4142 1.25 22C1.25 21.5858 1.58579 21.25 2 21.25Z" fill="currentColor"/>
<path d="M13.5947 11.2188C13.7501 10.8349 14.1874 10.6496 14.5713 10.8047C15.7621 11.2867 16.7122 12.2369 17.1943 13.4277C17.3497 13.8115 17.1649 14.2487 16.7812 14.4043C16.3975 14.5597 15.9603 14.3749 15.8047 13.9912C15.475 13.1768 14.8232 12.525 14.0088 12.1953C13.6249 12.0399 13.4394 11.6027 13.5947 11.2188Z" fill="currentColor"/>
<path d="M2.46973 5.46973C2.76262 5.17683 3.23738 5.17683 3.53027 5.46973L5.03027 6.96973C5.32317 7.26262 5.32317 7.73738 5.03027 8.03027C4.73738 8.32317 4.26262 8.32317 3.96973 8.03027L2.46973 6.53027C2.17683 6.23738 2.17683 5.76262 2.46973 5.46973Z" fill="currentColor"/>
<path d="M20.4697 5.46973C20.7626 5.17683 21.2374 5.17683 21.5303 5.46973C21.8232 5.76262 21.8232 6.23738 21.5303 6.53027L20.0303 8.03027C19.7374 8.32317 19.2626 8.32317 18.9697 8.03027C18.6768 7.73738 18.6768 7.26262 18.9697 6.96973L20.4697 5.46973Z" fill="currentColor"/>
<path d="M12 1.25C12.4142 1.25 12.75 1.58579 12.75 2V5C12.75 5.41421 12.4142 5.75 12 5.75C11.5858 5.75 11.25 5.41421 11.25 5V2C11.25 1.58579 11.5858 1.25 12 1.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 16V21.25H20V16C20 11.5817 16.4183 8 12 8C7.58172 8 4 11.5817 4 16Z" fill="currentColor"/>''',
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
