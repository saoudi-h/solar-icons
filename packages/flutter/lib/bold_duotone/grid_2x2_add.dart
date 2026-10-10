// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grid-2x2-add` icon in the boldDuotone style.
class Grid2x2AddBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `grid-2x2-add` icon in the boldDuotone style.
  const Grid2x2AddBoldDuotoneIcon({
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
    name: 'grid-2x2-add',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 2.00098V11.2451H21.999C21.9993 11.4898 22 11.7414 22 12C22 12.2552 21.9993 12.5035 21.999 12.7451H12.75V21.998C12.5068 21.9983 12.2569 22 12 22C11.7431 22 11.4932 21.9983 11.25 21.998V12.7451H2.00098C2.00074 12.5035 2 12.2552 2 12C2 11.7414 2.00073 11.4898 2.00098 11.2451H11.25V2.00098C11.4932 2.00074 11.7431 2 12 2C12.2569 2 12.5068 2.00074 12.75 2.00098Z" fill="currentColor"/>
<path d="M17.5 13.75C17.9142 13.75 18.25 14.0858 18.25 14.5V16.75H20.5C20.9142 16.75 21.25 17.0858 21.25 17.5C21.25 17.9142 20.9142 18.25 20.5 18.25H18.25V20.5C18.25 20.9142 17.9142 21.25 17.5 21.25C17.0858 21.25 16.75 20.9142 16.75 20.5V18.25H14.5C14.0858 18.25 13.75 17.9142 13.75 17.5C13.75 17.0858 14.0858 16.75 14.5 16.75H16.75V14.5C16.75 14.0858 17.0858 13.75 17.5 13.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.46447 20.5355C4.92893 22 7.28595 22 12 22L12.0049 11.9951H22C22 7.28433 21.9995 4.92843 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355Z" fill="currentColor"/>''',
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
