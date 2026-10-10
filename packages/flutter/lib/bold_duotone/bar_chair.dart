// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bar-chair` icon in the boldDuotone style.
class BarChairBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bar-chair` icon in the boldDuotone style.
  const BarChairBoldDuotoneIcon({
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
    name: 'bar-chair',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M5.45925 6.73344C5.2019 4.6158 6.65163 2.66883 8.75418 2.30839L9.12732 2.24442C11.0284 1.91853 12.971 1.91853 14.8721 2.24442L15.2452 2.30839C17.3478 2.66883 18.7975 4.6158 18.5402 6.73344L18.5232 6.87265C18.4622 7.37459 18.0362 7.75201 17.5305 7.75201H15.7667H14.2495H9.74982H8.23261H6.46887C5.96324 7.75201 5.53717 7.37459 5.47617 6.87265L5.45925 6.73344Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.2331 7.75195L5.2668 21.5947C5.18001 21.9997 5.43799 22.3984 5.84301 22.4852C6.24803 22.5719 6.64672 22.314 6.73351 21.909L7.6779 17.5018H16.3224L17.2668 21.909C17.3536 22.314 17.7523 22.5719 18.1573 22.4852C18.5623 22.3984 18.8203 21.9997 18.7335 21.5947L15.7672 7.75195H14.25C14.2501 7.80373 14.2555 7.85629 14.2668 7.90895L16.001 16.0018H7.99932L9.73351 7.90895C9.74479 7.85629 9.75025 7.80373 9.75031 7.75195H8.2331Z" fill="currentColor"/>''',
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
