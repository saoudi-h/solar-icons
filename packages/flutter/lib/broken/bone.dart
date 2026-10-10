// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bone` icon in the broken style.
class BoneBrokenIcon extends StatelessWidget {
  /// Creates the `bone` icon in the broken style.
  const BoneBrokenIcon({
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
    name: 'bone',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.3562 15.2061L10.9313 16.6311C10.5378 17.0246 10.562 17.674 10.7105 18.2103C10.9908 19.2235 10.6058 20.519 9.86257 21.2622C8.87884 22.2459 7.28391 22.2459 6.30018 21.2622C5.31645 20.2785 5.31646 18.6835 6.30018 17.6998C5.31646 18.6835 3.72152 18.6835 2.73779 17.6998C1.75407 16.7161 1.75407 15.1212 2.73779 14.1374C3.48101 13.3942 4.77646 13.0092 5.7897 13.2895C6.32603 13.438 6.97541 13.4622 7.3689 13.0687L13.0687 7.3689C13.4622 6.97541 13.438 6.32603 13.2895 5.7897C13.0092 4.77646 13.3942 3.48102 14.1374 2.73779C15.1212 1.75407 16.7161 1.75407 17.6998 2.73779C18.6835 3.72152 18.6835 5.31646 17.6998 6.30018C18.6835 5.31646 20.2785 5.31646 21.2622 6.30018C22.2459 7.28391 22.2459 8.87884 21.2622 9.86257C20.519 10.6058 19.2235 10.9908 18.2103 10.7105C17.674 10.562 17.0246 10.5378 16.6311 10.9313L15.2061 12.3562" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
