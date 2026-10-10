// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `men` icon.
class MenIcon extends StatelessWidget {
  /// Creates the `men` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const MenIcon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

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

  /// When true, ignores [SolarTheme] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'men',
    style: SolarIconStyle.bold,
    body: r'''<path d="M17.0001 1.25C16.5858 1.25 16.2501 1.58579 16.2501 2C16.2501 2.41421 16.5858 2.75 17.0001 2.75H20.1894L15.1018 7.8376C13.717 6.68989 11.9391 6 10 6C5.58172 6 2 9.58172 2 14C2 18.4183 5.58172 22 10 22C14.4183 22 18 18.4183 18 14C18 12.0609 17.3101 10.283 16.1624 8.89827L21.2501 3.81066V7C21.2501 7.41421 21.5858 7.75 22.0001 7.75C22.4143 7.75 22.7501 7.41421 22.7501 7V2C22.7501 1.58579 22.4143 1.25 22.0001 1.25H17.0001Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'men',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M16.9998 1.25C16.5856 1.25 16.2498 1.58579 16.2498 2C16.2498 2.41421 16.5856 2.75 16.9998 2.75H20.1891L15.1016 7.83758C15.4873 8.15728 15.8425 8.5125 16.1622 8.89824L21.2498 3.81066V7C21.2498 7.41421 21.5856 7.75 21.9998 7.75C22.414 7.75 22.7498 7.41421 22.7498 7V2.25C22.7498 1.69772 22.3021 1.25 21.7498 1.25H16.9998Z" fill="currentColor"/>''',
    accent: r'''<circle opacity="0.5" cx="10" cy="14" r="8" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'men',
    style: SolarIconStyle.broken,
    body: r'''<path d="M6 7.07026C7.17669 6.38958 8.54285 6 10 6C14.4183 6 18 9.58172 18 14C18 18.4183 14.4183 22 10 22C5.58172 22 2 18.4183 2 14C2 12.5429 2.38958 11.1767 3.07026 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.6357 8.33427L21.9998 2M16.9998 2H21.9998V7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'men',
    style: SolarIconStyle.linear,
    body: r'''<circle cx="10" cy="14" r="8" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.6357 8.33427L21.9998 2M16.9998 2H21.9998V7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'men',
    style: SolarIconStyle.lineDuotone,
    body: r'''<circle cx="10" cy="14" r="8" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<path opacity="0.5" d="M15.6357 8.33427L21.9998 2M16.9998 2H21.9998V7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'men',
    style: SolarIconStyle.outline,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.25 2C16.25 1.58579 16.5858 1.25 17 1.25H22C22.4142 1.25 22.75 1.58579 22.75 2V7C22.75 7.41421 22.4142 7.75 22 7.75C21.5858 7.75 21.25 7.41421 21.25 7V3.81066L16.6949 8.36578C17.9773 9.88802 18.75 11.8538 18.75 14C18.75 18.8325 14.8325 22.75 10 22.75C5.16751 22.75 1.25 18.8325 1.25 14C1.25 9.16751 5.16751 5.25 10 5.25C12.1462 5.25 14.112 6.02271 15.6342 7.30512L20.1893 2.75H17C16.5858 2.75 16.25 2.41421 16.25 2ZM10 6.75C5.99594 6.75 2.75 9.99594 2.75 14C2.75 18.0041 5.99594 21.25 10 21.25C14.0041 21.25 17.25 18.0041 17.25 14C17.25 9.99594 14.0041 6.75 10 6.75Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

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
