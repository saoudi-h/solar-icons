// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `minimize` icon.
class MinimizeIcon extends StatelessWidget {
  /// Creates the `minimize` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const MinimizeIcon({
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
    name: 'minimize',
    style: SolarIconStyle.bold,
    body: r'''<path d="M20.8571 9.75C21.2714 9.75 21.6071 9.41421 21.6071 9C21.6071 8.58579 21.2714 8.25 20.8571 8.25H16.8107L22.5303 2.53033C22.8232 2.23744 22.8232 1.76256 22.5303 1.46967C22.2374 1.17678 21.7626 1.17678 21.4697 1.46967L15.75 7.18934V3.14286C15.75 2.72864 15.4142 2.39286 15 2.39286C14.5858 2.39286 14.25 2.72864 14.25 3.14286V9C14.25 9.41421 14.5858 9.75 15 9.75H20.8571Z" fill="currentColor"/>
<path d="M3.14286 14.25C2.72864 14.25 2.39286 14.5858 2.39286 15C2.39286 15.4142 2.72864 15.75 3.14286 15.75H7.18934L1.46967 21.4697C1.17678 21.7626 1.17678 22.2374 1.46967 22.5303C1.76256 22.8232 2.23744 22.8232 2.53033 22.5303L8.25 16.8107V20.8571C8.25 21.2714 8.58579 21.6071 9 21.6071C9.41421 21.6071 9.75 21.2714 9.75 20.8571V15C9.75 14.5858 9.41421 14.25 9 14.25H3.14286Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'minimize',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21.6071 9C21.6071 9.41421 21.2714 9.75 20.8571 9.75H15C14.5858 9.75 14.25 9.41421 14.25 9V3.14286C14.25 2.72864 14.5858 2.39286 15 2.39286C15.4142 2.39286 15.75 2.72864 15.75 3.14286V7.18934L21.4697 1.46967C21.7626 1.17678 22.2374 1.17678 22.5303 1.46967C22.8232 1.76256 22.8232 2.23744 22.5303 2.53033L16.8107 8.25H20.8571C21.2714 8.25 21.6071 8.58579 21.6071 9Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2.39286 15C2.39286 14.5858 2.72864 14.25 3.14286 14.25H9C9.41421 14.25 9.75 14.5858 9.75 15V20.8571C9.75 21.2714 9.41421 21.6071 9 21.6071C8.58579 21.6071 8.25 21.2714 8.25 20.8571V16.8107L2.53033 22.5303C2.23744 22.8232 1.76256 22.8232 1.46967 22.5303C1.17678 22.2374 1.17678 21.7626 1.46967 21.4697L7.18934 15.75H3.14286C2.72864 15.75 2.39286 15.4142 2.39286 15Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'minimize',
    style: SolarIconStyle.broken,
    body: r'''<path d="M2 22L2.875 21.125M9 20.8571V15H3.14286M9 15L5.5 18.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 2L15 9M15 3.14286V9H20.8571" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'minimize',
    style: SolarIconStyle.linear,
    body: r'''<path d="M2 22L9 15M9 20.8571V15H3.14286" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 2L15 9M15 3.14286V9H20.8571" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'minimize',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M22 2L15 9M15 3.14286V9H20.8571" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent: r'''<path opacity="0.5" d="M2 22L9 15M9 20.8571V15H3.14286" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'minimize',
    style: SolarIconStyle.outline,
    body: r'''<path d="M20.8571 9.75C21.2714 9.75 21.6071 9.41421 21.6071 9C21.6071 8.58579 21.2714 8.25 20.8571 8.25H16.8107L22.5303 2.53033C22.8232 2.23744 22.8232 1.76256 22.5303 1.46967C22.2374 1.17678 21.7626 1.17678 21.4697 1.46967L15.75 7.18934V3.14286C15.75 2.72864 15.4142 2.39286 15 2.39286C14.5858 2.39286 14.25 2.72864 14.25 3.14286V9C14.25 9.41421 14.5858 9.75 15 9.75H20.8571Z" fill="currentColor"/>
<path d="M3.14286 14.25C2.72864 14.25 2.39286 14.5858 2.39286 15C2.39286 15.4142 2.72864 15.75 3.14286 15.75H7.18934L1.46967 21.4697C1.17678 21.7626 1.17678 22.2374 1.46967 22.5303C1.76256 22.8232 2.23744 22.8232 2.53033 22.5303L8.25 16.8107V20.8571C8.25 21.2714 8.58579 21.6071 9 21.6071C9.41421 21.6071 9.75 21.2714 9.75 20.8571V15C9.75 14.5858 9.41421 14.25 9 14.25H3.14286Z" fill="currentColor"/>''',
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
