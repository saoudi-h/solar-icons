// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panels-bottom-right` icon in the bold style.
class PanelsBottomRightBoldIcon extends StatelessWidget {
  /// Creates the `panels-bottom-right` icon in the bold style.
  const PanelsBottomRightBoldIcon({
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
    name: 'panels-bottom-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M2.75391 13.75C2.75048 13.2102 2.75 12.6285 2.75 12C2.75 9.62177 2.75198 7.91326 2.92676 6.61328C3.09865 5.33508 3.42551 4.56472 3.99512 3.99512C4.56472 3.42551 5.33508 3.09864 6.61328 2.92676C7.91326 2.75198 9.62178 2.75 12 2.75C12.8274 2.75 13.5737 2.75404 14.25 2.76172L14.25 13.75L2.75391 13.75Z" fill="currentColor"/>
<path d="M15.75 13.75L15.75 2.79492C16.3613 2.8209 16.9024 2.86164 17.3867 2.92676C18.6649 3.09865 19.4353 3.42551 20.0049 3.99512C20.5745 4.56472 20.9014 5.33508 21.0732 6.61328C21.248 7.91326 21.25 9.62177 21.25 12C21.25 12.6285 21.2495 13.2102 21.2461 13.75L15.75 13.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 21.25C9.62177 21.25 7.91326 21.248 6.61328 21.0732C5.33508 20.9014 4.56472 20.5745 3.99512 20.0049C3.42551 19.4353 3.09865 18.6649 2.92676 17.3867C2.84442 16.7743 2.80084 16.0711 2.77734 15.25L21.2227 15.25C21.1992 16.0711 21.1556 16.7743 21.0732 17.3867C20.9014 18.6649 20.5745 19.4353 20.0049 20.0049C19.4353 20.5745 18.6649 20.9014 17.3867 21.0732C16.0867 21.248 14.3782 21.25 12 21.25Z" fill="currentColor"/>''',
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
