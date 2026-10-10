// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panels-bottom-left` icon in the bold style.
class PanelsBottomLeftBoldIcon extends StatelessWidget {
  /// Creates the `panels-bottom-left` icon in the bold style.
  const PanelsBottomLeftBoldIcon({
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
    name: 'panels-bottom-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21.2461 13.75C21.2495 13.2102 21.25 12.6285 21.25 12C21.25 9.62177 21.248 7.91326 21.0732 6.61328C20.9014 5.33508 20.5745 4.56472 20.0049 3.99512C19.4353 3.42551 18.6649 3.09864 17.3867 2.92676C16.0867 2.75198 14.3782 2.75 12 2.75C11.1726 2.75 10.4263 2.75404 9.75 2.76172L9.75 13.75L21.2461 13.75Z" fill="currentColor"/>
<path d="M8.25 13.75L8.25 2.79492C7.63871 2.8209 7.09763 2.86164 6.61328 2.92676C5.33508 3.09865 4.56472 3.42551 3.99512 3.99512C3.42551 4.56472 3.09865 5.33508 2.92676 6.61328C2.75198 7.91326 2.75 9.62177 2.75 12C2.75 12.6285 2.75048 13.2102 2.75391 13.75L8.25 13.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 21.25C14.3782 21.25 16.0867 21.248 17.3867 21.0732C18.6649 20.9014 19.4353 20.5745 20.0049 20.0049C20.5745 19.4353 20.9014 18.6649 21.0732 17.3867C21.1556 16.7743 21.1992 16.0711 21.2227 15.25L2.77734 15.25C2.80084 16.0711 2.84442 16.7743 2.92676 17.3867C3.09865 18.6649 3.42551 19.4353 3.99512 20.0049C4.56472 20.5745 5.33508 20.9014 6.61328 21.0732C7.91326 21.248 9.62178 21.25 12 21.25Z" fill="currentColor"/>''',
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
