// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `binoculars` icon in the bold style.
class BinocularsBoldIcon extends StatelessWidget {
  /// Creates the `binoculars` icon in the bold style.
  const BinocularsBoldIcon({
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
    name: 'binoculars',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M9.99897 20C9.99897 21.1046 9.10354 22 7.99897 22H3.99897C2.8948 21.9995 1.99897 21.1043 1.99897 20C1.99897 20 1.99504 19.9068 1.98823 19.75H9.99897V20Z" fill="currentColor"/>
<path d="M22 20C22 21.1045 21.1045 21.9999 20 22H15.9999C14.8956 21.9998 13.9999 21.1044 13.9999 20V19.75H22.0107C22.0038 19.9088 22 20 22 20Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M8.73335 2C9.8377 2.00013 9.99897 2.89551 9.99897 4V8.25H13.9999V4C13.9999 2.89556 14.1623 2.00021 15.2666 2H16.9999C18.4998 2.00005 18.7695 2.77873 19 4C19.2304 5.2214 21.6401 10.5619 22 15C22.0794 15.9796 22.0777 17.2398 22.0576 18.25H13.9999V15.75H9.99995L9.99897 15.749V18.25H1.94136C1.92124 17.2399 1.91955 15.9796 1.99897 15C2.3588 10.5621 4.76833 5.22166 4.99897 4C5.22939 2.77889 5.49974 2.0003 6.99897 2H8.73335ZM9.99897 14.25H13.9999V9.75H9.99995L9.99897 9.74902V14.25Z" fill="currentColor"/>''',
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
