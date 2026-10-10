// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clapperboard-text` icon in the bold style.
class ClapperboardTextBoldIcon extends StatelessWidget {
  /// Creates the `clapperboard-text` icon in the bold style.
  const ClapperboardTextBoldIcon({
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
    name: 'clapperboard-text',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.5401 2.08783C15.3293 2 13.8452 2 12 2H11.9014L8.40139 7.25002H13.0986L16.5401 2.08783Z" fill="currentColor"/>
<path d="M10.0957 2.00445C6.62194 2.03072 4.71683 2.2121 3.46447 3.46447C2.6068 4.32213 2.25143 5.48593 2.10418 7.25002H6.59861L10.0957 2.00445Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M2.02644 8.75002C2 9.68875 2 10.7633 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 10.7633 22 9.68875 21.9736 8.75002H2.02644ZM5.75 14C5.75 13.5858 6.08579 13.25 6.5 13.25H14.5C14.9142 13.25 15.25 13.5858 15.25 14C15.25 14.4142 14.9142 14.75 14.5 14.75H6.5C6.08579 14.75 5.75 14.4142 5.75 14ZM6.5 16.75C6.08579 16.75 5.75 17.0858 5.75 17.5C5.75 17.9142 6.08579 18.25 6.5 18.25H12C12.4142 18.25 12.75 17.9142 12.75 17.5C12.75 17.0858 12.4142 16.75 12 16.75H6.5Z" fill="currentColor"/>
<path d="M20.5355 3.46447C21.3932 4.32213 21.7486 5.48593 21.8958 7.25002H14.9014L18.1987 2.30403C19.1924 2.51345 19.9382 2.86714 20.5355 3.46447Z" fill="currentColor"/>''',
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
