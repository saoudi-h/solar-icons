// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `fog` icon in the boldDuotone style.
class FogBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `fog` icon in the boldDuotone style.
  const FogBoldDuotoneIcon({
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
    name: 'fog',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16 21.25C16.4142 21.25 16.75 21.5858 16.75 22C16.75 22.4142 16.4142 22.75 16 22.75H8C7.58579 22.75 7.25 22.4142 7.25 22C7.25 21.5858 7.58579 21.25 8 21.25H16Z" fill="currentColor"/>
<path d="M22 15.249C22.4142 15.249 22.75 15.5848 22.75 15.999C22.75 16.4132 22.4142 16.749 22 16.749H2C1.58579 16.749 1.25 16.4132 1.25 15.999C1.25013 15.5849 1.58586 15.249 2 15.249H22Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M19 18.25C19.4142 18.25 19.75 18.5858 19.75 19C19.75 19.4142 19.4142 19.75 19 19.75H5C4.58579 19.75 4.25 19.4142 4.25 19C4.25 18.5858 4.58579 18.25 5 18.25H19Z" fill="currentColor"/>
<path d="M12.4766 2C15.416 2.00019 17.8372 4.19365 18.1553 7.01465C20.393 7.77989 21.9998 9.88092 22 12.3525C22 13.4116 21.7047 14.403 21.1914 15.25H2.27051C2.09538 14.7879 2 14.2872 2 13.7646C2.00003 11.4256 3.91922 9.5293 6.28613 9.5293C6.57009 9.52932 6.84769 9.5563 7.11621 9.6084C6.88725 8.99756 6.76177 8.33698 6.76172 7.64746C6.76172 4.52868 9.32065 2 12.4766 2Z" fill="currentColor"/>
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
