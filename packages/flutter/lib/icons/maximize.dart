// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `maximize` icon.
class MaximizeIcon extends StatelessWidget {
  /// Creates the `maximize` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const MaximizeIcon({
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
    name: 'maximize',
    style: SolarIconStyle.bold,
    body: r'''<path d="M16.1429 1.25C15.7286 1.25 15.3929 1.58579 15.3929 2C15.3929 2.41421 15.7286 2.75 16.1429 2.75H20.1893L14.4697 8.46967C14.1768 8.76256 14.1768 9.23744 14.4697 9.53033C14.7626 9.82322 15.2374 9.82322 15.5303 9.53033L21.25 3.81066V7.85714C21.25 8.27136 21.5858 8.60714 22 8.60714C22.4142 8.60714 22.75 8.27136 22.75 7.85714V2C22.75 1.58579 22.4142 1.25 22 1.25H16.1429Z" fill="currentColor"/>
<path d="M7.85714 22.75C8.27136 22.75 8.60714 22.4142 8.60714 22C8.60714 21.5858 8.27136 21.25 7.85714 21.25H3.81066L9.53033 15.5303C9.82322 15.2374 9.82322 14.7626 9.53033 14.4697C9.23744 14.1768 8.76256 14.1768 8.46967 14.4697L2.75 20.1893V16.1429C2.75 15.7286 2.41421 15.3929 2 15.3929C1.58579 15.3929 1.25 15.7286 1.25 16.1429V22C1.25 22.4142 1.58579 22.75 2 22.75H7.85714Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'maximize',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M15.3929 2C15.3929 1.58579 15.7286 1.25 16.1429 1.25H22C22.4142 1.25 22.75 1.58579 22.75 2V7.85714C22.75 8.27136 22.4142 8.60714 22 8.60714C21.5858 8.60714 21.25 8.27136 21.25 7.85714V3.81066L15.5303 9.53033C15.2374 9.82322 14.7626 9.82322 14.4697 9.53033C14.1768 9.23744 14.1768 8.76256 14.4697 8.46967L20.1893 2.75H16.1429C15.7286 2.75 15.3929 2.41421 15.3929 2Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M8.60714 22C8.60714 22.4142 8.27136 22.75 7.85714 22.75H2C1.58579 22.75 1.25 22.4142 1.25 22V16.1429C1.25 15.7286 1.58579 15.3929 2 15.3929C2.41421 15.3929 2.75 15.7286 2.75 16.1429V20.1893L8.46967 14.4697C8.76256 14.1768 9.23744 14.1768 9.53033 14.4697C9.82322 14.7626 9.82322 15.2374 9.53033 15.5303L3.81066 21.25H7.85714C8.27136 21.25 8.60714 21.5858 8.60714 22Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'maximize',
    style: SolarIconStyle.broken,
    body: r'''<path d="M22 7.85714V2H16.1429M22 2L18.5 5.5M15 9L15.875 8.125" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 15L2 22M2 16.1429V22H7.85714" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'maximize',
    style: SolarIconStyle.linear,
    body: r'''<path d="M9 15L2 22M2 16.1429V22H7.85714" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15 9L22 2M22 7.85714V2H16.1429" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'maximize',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M15 9L22 2M22 7.85714V2H16.1429" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent: r'''<path opacity="0.5" d="M9 15L2 22M2 16.1429V22H7.85714" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'maximize',
    style: SolarIconStyle.outline,
    body: r'''<path d="M16.1429 1.25C15.7286 1.25 15.3929 1.58579 15.3929 2C15.3929 2.41421 15.7286 2.75 16.1429 2.75H20.1893L14.4697 8.46967C14.1768 8.76256 14.1768 9.23744 14.4697 9.53033C14.7626 9.82322 15.2374 9.82322 15.5303 9.53033L21.25 3.81066V7.85714C21.25 8.27136 21.5858 8.60714 22 8.60714C22.4142 8.60714 22.75 8.27136 22.75 7.85714V2C22.75 1.58579 22.4142 1.25 22 1.25H16.1429Z" fill="currentColor"/>
<path d="M7.85714 22.75C8.27136 22.75 8.60714 22.4142 8.60714 22C8.60714 21.5858 8.27136 21.25 7.85714 21.25H3.81066L9.53033 15.5303C9.82322 15.2374 9.82322 14.7626 9.53033 14.4697C9.23744 14.1768 8.76256 14.1768 8.46967 14.4697L2.75 20.1893V16.1429C2.75 15.7286 2.41421 15.3929 2 15.3929C1.58579 15.3929 1.25 15.7286 1.25 16.1429V22C1.25 22.4142 1.58579 22.75 2 22.75H7.85714Z" fill="currentColor"/>''',
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
