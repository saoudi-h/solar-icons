// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cup-paper` icon in the boldDuotone style.
class CupPaperBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `cup-paper` icon in the boldDuotone style.
  const CupPaperBoldDuotoneIcon({
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
    name: 'cup-paper',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17.9646 12L17.2331 17H6.76924L6.03682 12H17.9646Z" fill="currentColor"/>
<path d="M14.8151 2C16.6529 2 17.5719 2.00002 18.2946 2.44434C18.4193 2.52098 18.5379 2.60718 18.6501 2.70117C19.3002 3.24611 19.5919 4.11727 20.1735 5.86035L20.2087 5.96777C20.5274 6.92301 20.6866 7.40058 20.5183 7.76172C20.4652 7.87562 20.3917 7.97898 20.3005 8.06543C20.0113 8.33943 19.5074 8.33984 18.5007 8.33984H5.50068C4.49398 8.33984 3.9902 8.33919 3.70088 8.06543C3.60959 7.97895 3.53527 7.87569 3.48213 7.76172C3.3138 7.40059 3.47296 6.92297 3.7917 5.96777L3.82783 5.86035C4.40942 4.11746 4.70023 3.24609 5.35029 2.70117C5.46242 2.6072 5.58114 2.52096 5.70576 2.44434C6.42848 2.00003 7.34761 2 9.18525 2H14.8151Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.958 22H13.044C14.6926 22 15.517 22 16.0802 21.5132C16.6435 21.0264 16.7629 20.2107 17.0018 18.5794L18.501 8.33936H5.50098L7.00019 18.5794C7.23902 20.2107 7.35843 21.0264 7.92171 21.5132C8.48499 22 9.30932 22 10.958 22Z" fill="currentColor"/>''',
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
