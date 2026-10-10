// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sleeping` icon in the boldDuotone style.
class SleepingBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `sleeping` icon in the boldDuotone style.
  const SleepingBoldDuotoneIcon({
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
    name: 'sleeping',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2 5.25C2.41421 5.25 2.75 5.58579 2.75 6V15.25H12H22.6428L22.6429 15.643L22.642 16.0001V18.0002C22.642 18.4144 22.3063 18.7502 21.892 18.7502C21.4778 18.7502 21.142 18.4144 21.142 18.0002V16.75H2.75V18C2.75 18.4142 2.41421 18.75 2 18.75C1.58579 18.75 1.25 18.4142 1.25 18V6C1.25 5.58579 1.58579 5.25 2 5.25Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M15.5 8.5C17.4946 8.5 18.4921 8.49982 19.2939 8.78027C20.7302 9.28283 21.8597 10.4124 22.3623 11.8486C22.6238 12.596 22.6414 13.5135 22.6426 15.25H12V11.3574C12 10.5595 12.0001 10.1596 12.1123 9.83887C12.3134 9.26458 12.7655 8.81328 13.3398 8.6123C13.6606 8.50028 14.7006 8.5 15.498 8.5H15.5Z" fill="currentColor"/>
<path d="M7 8.5C8.38071 8.5 9.5 9.61929 9.5 11C9.5 12.3807 8.38071 13.5 7 13.5C5.61929 13.5 4.5 12.3807 4.5 11C4.5 9.61929 5.61929 8.5 7 8.5Z" fill="currentColor"/>
</g>''',
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
