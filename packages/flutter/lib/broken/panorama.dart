// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panorama` icon in the broken style.
class PanoramaBrokenIcon extends StatelessWidget {
  /// Creates the `panorama` icon in the broken style.
  const PanoramaBrokenIcon({
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
    name: 'panorama',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 5.85964C22 5.06508 21.2094 4.33374 19.883 3.75279C18.7083 3.23834 17.5 4.21963 17.5 5.50199V8.71946M2 5.85964C2 7.05487 3.78889 8.10705 6.5 8.71946C8.0779 9.07589 9.96818 9.28335 12 9.28335C14.0318 9.28335 15.9221 9.07589 17.5 8.71946C20.2111 8.10705 22 7.05487 22 5.85964M22 5.85964V8.99982M2 5.85964C2 5.06508 2.79055 4.33374 4.11705 3.75279C5.29169 3.23834 6.5 4.21963 6.5 5.50199V8.71946M2 5.85964V18.5761C2 20.467 6.47715 21.9998 12 21.9998C17.5228 21.9998 22 20.467 22 18.5761V12.9998" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.5 13C19.5 13.8284 18.8284 14.5 18 14.5C17.1716 14.5 16.5 13.8284 16.5 13C16.5 12.1716 17.1716 11.5 18 11.5C18.8284 11.5 19.5 12.1716 19.5 13Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.24902 19.3387L6.29045 15.5566L7.64652 14.4214C8.35202 13.8309 9.41531 13.8648 10.0782 14.4989L13.3993 17.6758C13.9313 18.1848 14.7688 18.2542 15.3844 17.8403L15.6153 17.6851C16.5012 17.0896 17.6997 17.1586 18.5045 17.8514L21.0447 20.0384" stroke="currentColor" stroke-linecap="round"/>''',
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
