// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `stopwatch-pause` icon in the boldDuotone style.
class StopwatchPauseBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `stopwatch-pause` icon in the boldDuotone style.
  const StopwatchPauseBoldDuotoneIcon({
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
    name: 'stopwatch-pause',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.5 10C9.96594 10 10.199 10.0001 10.3828 10.0762C10.6277 10.1777 10.8223 10.3723 10.9238 10.6172C10.9999 10.801 11 11.0341 11 11.5V16.5C11 16.9659 10.9999 17.199 10.9238 17.3828C10.8223 17.6277 10.6277 17.8223 10.3828 17.9238C10.199 17.9999 9.96594 18 9.5 18C9.03406 18 8.80096 17.9999 8.61719 17.9238C8.37226 17.8223 8.17766 17.6277 8.07617 17.3828C8.00005 17.199 8 16.9659 8 16.5V11.5C8 11.0341 8.00005 10.801 8.07617 10.6172C8.17766 10.3723 8.37226 10.1777 8.61719 10.0762C8.80096 10.0001 9.03406 10 9.5 10Z" fill="currentColor"/>
<path d="M14.5 10C14.9659 10 15.199 10.0001 15.3828 10.0762C15.6277 10.1777 15.8223 10.3723 15.9238 10.6172C15.9999 10.801 16 11.0341 16 11.5V16.5C16 16.9659 15.9999 17.199 15.9238 17.3828C15.8223 17.6277 15.6277 17.8223 15.3828 17.9238C15.199 17.9999 14.9659 18 14.5 18C14.0341 18 13.801 17.9999 13.6172 17.9238C13.3723 17.8223 13.1777 17.6277 13.0762 17.3828C13.0001 17.199 13 16.9659 13 16.5V11.5C13 11.0341 13.0001 10.801 13.0762 10.6172C13.1777 10.3723 13.3723 10.1777 13.6172 10.0762C13.801 10.0001 14.0341 10 14.5 10Z" fill="currentColor"/>
<path d="M14 2C14.4142 2 14.75 2.33579 14.75 2.75C14.75 3.16421 14.4142 3.5 14 3.5H10C9.58579 3.5 9.25 3.16421 9.25 2.75C9.25 2.33579 9.58579 2 10 2H14Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 23C16.9706 23 21 18.9706 21 14C21 9.02944 16.9706 5 12 5C7.02944 5 3 9.02944 3 14C3 18.9706 7.02944 23 12 23Z" fill="currentColor"/>''',
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
