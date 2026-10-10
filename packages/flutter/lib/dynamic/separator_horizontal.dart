// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `separator-horizontal` icon in every style.
///
/// Prefer the static widgets (e.g. `SeparatorHorizontalLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class SeparatorHorizontalIcon extends StatelessWidget {
  /// Creates the `separator-horizontal` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const SeparatorHorizontalIcon({
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

  /// When true, ignores [SolarProvider] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'separator-horizontal',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.4697 14.4697C17.7626 14.1768 18.2374 14.1768 18.5303 14.4697C18.8231 14.7626 18.8232 15.2373 18.5303 15.5302L12.5303 21.5302C12.2374 21.8231 11.7626 21.8231 11.4697 21.5302L5.46973 15.5302C5.17684 15.2373 5.17686 14.7626 5.46973 14.4697C5.76262 14.1768 6.23738 14.1768 6.53027 14.4697L12 19.9394L17.4697 14.4697Z" fill="currentColor"/>
<path d="M22 11.2499C22.4142 11.2499 22.75 11.5857 22.75 11.9999C22.75 12.4141 22.4142 12.7499 22 12.7499H2C1.58581 12.7499 1.25003 12.4141 1.25 11.9999C1.25 11.5857 1.58579 11.2499 2 11.2499H22Z" fill="currentColor"/>
<path d="M11.4697 2.46967C11.7626 2.17678 12.2374 2.17678 12.5303 2.46967L18.5303 8.46967C18.8231 8.76257 18.8232 9.23733 18.5303 9.53022C18.2374 9.82307 17.7626 9.82307 17.4697 9.53022L12 4.06049L6.53027 9.53022C6.23739 9.82307 5.76261 9.82307 5.46973 9.53022C5.17684 9.23733 5.17686 8.76257 5.46973 8.46967L11.4697 2.46967Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'separator-horizontal',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M22 11.25C22.4142 11.25 22.75 11.5858 22.75 12C22.75 12.4142 22.4142 12.75 22 12.75H2C1.58579 12.75 1.25 12.4142 1.25 12C1.25 11.5858 1.58579 11.25 2 11.25H22Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M17.4697 14.4697C17.7626 14.1768 18.2373 14.1768 18.5302 14.4697C18.8231 14.7626 18.8231 15.2373 18.5302 15.5302L12.5302 21.5302C12.2373 21.8231 11.7626 21.8231 11.4697 21.5302L5.46967 15.5302C5.17678 15.2373 5.17678 14.7626 5.46967 14.4697C5.76256 14.1768 6.23732 14.1768 6.53022 14.4697L11.9999 19.9394L17.4697 14.4697Z" fill="currentColor"/>
<path d="M11.4697 2.46967C11.7626 2.17678 12.2373 2.17678 12.5302 2.46967L18.5302 8.46967C18.8231 8.76257 18.8231 9.23734 18.5302 9.53022C18.2373 9.82309 17.7626 9.82305 17.4697 9.53022L11.9999 4.06049L6.53022 9.53022C6.23734 9.82309 5.76257 9.82305 5.46967 9.53022C5.17678 9.23732 5.17678 8.76256 5.46967 8.46967L11.4697 2.46967Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'separator-horizontal',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13.5 4.5L12 3L6 9M16.5 7.5L18 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13.5 19.5L12 21L6 15M16.5 16.5L18 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 12H2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'separator-horizontal',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18 15L12 21L6 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 9L12 3L6 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 12L22 12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'separator-horizontal',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 12L22 12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M18 15L12 21L6 15M18 9L12 3L6 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'separator-horizontal',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M17.4697 14.4697C17.7626 14.1768 18.2374 14.1768 18.5303 14.4697C18.8231 14.7626 18.8232 15.2373 18.5303 15.5302L12.5303 21.5302C12.2374 21.8231 11.7626 21.8231 11.4697 21.5302L5.46973 15.5302C5.17684 15.2373 5.17686 14.7626 5.46973 14.4697C5.76262 14.1768 6.23738 14.1768 6.53027 14.4697L12 19.9394L17.4697 14.4697Z" fill="currentColor"/>
<path d="M22 11.2499C22.4142 11.2499 22.75 11.5857 22.75 11.9999C22.75 12.4141 22.4142 12.7499 22 12.7499H2C1.58581 12.7499 1.25003 12.4141 1.25 11.9999C1.25 11.5857 1.58579 11.2499 2 11.2499H22Z" fill="currentColor"/>
<path d="M11.4697 2.46967C11.7626 2.17678 12.2374 2.17678 12.5303 2.46967L18.5303 8.46967C18.8231 8.76257 18.8232 9.23733 18.5303 9.53022C18.2374 9.82307 17.7626 9.82307 17.4697 9.53022L12 4.06049L6.53027 9.53022C6.23739 9.82307 5.76261 9.82307 5.46973 9.53022C5.17684 9.23733 5.17686 8.76257 5.46973 8.46967L11.4697 2.46967Z" fill="currentColor"/>''',
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
