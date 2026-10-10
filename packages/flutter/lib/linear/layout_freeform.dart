// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `layout-freeform` icon in the linear style.
class LayoutFreeformLinearIcon extends StatelessWidget {
  /// Creates the `layout-freeform` icon in the linear style.
  const LayoutFreeformLinearIcon({
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
    name: 'layout-freeform',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3 6.48315C3 4.83324 3 4.00828 3.51256 3.49572C4.02513 2.98315 4.85008 2.98315 6.5 2.98315C8.14992 2.98315 8.97487 2.98315 9.48744 3.49572C10 4.00828 10 4.83324 10 6.48315C10 8.13307 10 8.95803 9.48744 9.47059C8.97487 9.98315 8.14992 9.98315 6.5 9.98315C4.85008 9.98315 4.02513 9.98315 3.51256 9.47059C3 8.95803 3 8.13307 3 6.48315Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 8.48315C14 6.83324 14 6.00828 14.5126 5.49572C15.0251 4.98315 15.8501 4.98315 17.5 4.98315C19.1499 4.98315 19.9749 4.98315 20.4874 5.49572C21 6.00828 21 6.83324 21 8.48315C21 10.1331 21 10.958 20.4874 11.4706C19.9749 11.9832 19.1499 11.9832 17.5 11.9832C15.8501 11.9832 15.0251 11.9832 14.5126 11.4706C14 10.958 14 10.1331 14 8.48315Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 17.5171C4 15.8672 4 15.0422 4.51256 14.5297C5.02513 14.0171 5.85008 14.0171 7.5 14.0171C9.14992 14.0171 9.97487 14.0171 10.4874 14.5297C11 15.0422 11 15.8672 11 17.5171C11 19.167 11 19.992 10.4874 20.5045C9.97487 21.0171 9.14992 21.0171 7.5 21.0171C5.85008 21.0171 5.02513 21.0171 4.51256 20.5045C4 19.992 4 19.167 4 17.5171Z" stroke="currentColor" stroke-linecap="round"/>''',
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
