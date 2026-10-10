// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bedside-table-2` icon in the boldDuotone style.
class BedsideTable2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bedside-table-2` icon in the boldDuotone style.
  const BedsideTable2BoldDuotoneIcon({
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
    name: 'bedside-table-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.17174 18.8284C2.32819 17.9849 2.09201 16.7712 2.02588 14.75L2 14H21.9744V14.75C21.9083 16.7712 21.6721 17.9849 20.8286 18.8284C20.5242 19.1328 20.1715 19.3582 19.7502 19.5249V22C19.7502 22.4142 19.4144 22.75 19.0002 22.75C18.5859 22.75 18.2502 22.4142 18.2502 22V19.8713C17.1803 20 15.8065 20 14.0002 20H10.0002C8.1938 20 6.82005 20 5.75016 19.8713V22C5.75016 22.4142 5.41438 22.75 5.00016 22.75C4.58595 22.75 4.25016 22.4142 4.25016 22V19.5249C3.82878 19.3582 3.47615 19.1328 3.17174 18.8284ZM13.0002 17C13.0002 17.5523 12.5524 18 12.0002 18C11.4479 18 11.0002 17.5523 11.0002 17C11.0002 16.4477 11.4479 16 12.0002 16C12.5524 16 13.0002 16.4477 13.0002 17Z" fill="currentColor"/>
<path d="M3.17174 3.17157C2.32819 4.01511 2.09201 5.22882 2.02588 7.25L2 8H22L21.9744 7.25C21.9083 5.22882 21.6721 4.01511 20.8286 3.17157C19.657 2 17.7714 2 14.0002 2H10.0002C6.22893 2 4.34331 2 3.17174 3.17157Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2 10C2 9.55807 2.00189 8.39203 2.00377 8H22C22.0019 8.39203 22 9.55807 22 10V12C22 12.4419 22 13.608 21.9981 14H2.00189C2 13.608 2 12.4419 2 12V10Z" fill="currentColor"/>''',
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
