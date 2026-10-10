// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `layout-list` icon in the lineDuotone style.
class LayoutListLineDuotoneIcon extends StatelessWidget {
  /// Creates the `layout-list` icon in the lineDuotone style.
  const LayoutListLineDuotoneIcon({
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
    name: 'layout-list',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3 6.48315C3 4.83324 3 4.00828 3.51256 3.49572C4.02513 2.98315 4.85008 2.98315 6.5 2.98315C8.14992 2.98315 8.97487 2.98315 9.48744 3.49572C10 4.00828 10 4.83324 10 6.48315C10 8.13307 10 8.95803 9.48744 9.47059C8.97487 9.98315 8.14992 9.98315 6.5 9.98315C4.85008 9.98315 4.02513 9.98315 3.51256 9.47059C3 8.95803 3 8.13307 3 6.48315Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 17.5171C3 15.8672 3 15.0422 3.51256 14.5297C4.02513 14.0171 4.85008 14.0171 6.5 14.0171C8.14992 14.0171 8.97487 14.0171 9.48744 14.5297C10 15.0422 10 15.8672 10 17.5171C10 19.167 10 19.992 9.48744 20.5045C8.97487 21.0171 8.14992 21.0171 6.5 21.0171C4.85008 21.0171 4.02513 21.0171 3.51256 20.5045C3 19.992 3 19.167 3 17.5171Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 3.98315H14M21 8.98315H14M21 15.0171H14M21 20.0171H14" stroke="currentColor" stroke-linecap="round"/>''',
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
