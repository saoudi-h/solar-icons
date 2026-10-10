// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `globe` icon in the broken style.
class GlobeBrokenIcon extends StatelessWidget {
  /// Creates the `globe` icon in the broken style.
  const GlobeBrokenIcon({
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
    name: 'globe',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 9.68699C22 6.63263 20.6722 3.88838 18.5623 2M4 16.5623C5.88838 18.6722 8.63263 20 11.687 20C15.8429 20 19.4247 17.5418 21.0576 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22V20" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22H10" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 22H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.93648 13.5C5.34088 12.4704 5 11.275 5 10C5 6.13401 8.13401 3 12 3C15.866 3 19 6.13401 19 10C19 13.866 15.866 17 12 17C10.725 17 9.52961 16.6591 8.5 16.0635" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.2749 4.83583C7.8992 5.5266 8.81033 6.84087 8.93131 8.23714C9.06258 9.75237 10.027 10.9836 11.5002 11.0003C12.0664 11.0067 12.639 10.5825 12.6375 9.99537C12.637 9.8138 12.6081 9.62816 12.5629 9.45737C12.5 9.21982 12.4944 8.94653 12.6252 8.66696C13.0826 7.68895 13.9822 7.42624 14.6951 6.89509C15.0113 6.65952 15.2997 6.41102 15.4268 6.21085C15.7303 5.73317 16.0338 4.8426 15.9972 4.25293" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.8194 11.5869C18.5711 12.312 18.0284 13.2563 16.1455 13.276C16.1455 13.276 13.9497 13.276 13.291 14.5174C12.8053 15.4326 13.0283 16.4182 13.2382 16.891" stroke="currentColor" stroke-linecap="round"/>''',
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
