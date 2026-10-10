// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-arrow-up-minimalistic` icon in every style.
///
/// Prefer the static widgets (e.g. `ListArrowUpMinimalisticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ListArrowUpMinimalisticIcon extends StatelessWidget {
  /// Creates the `list-arrow-up-minimalistic` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ListArrowUpMinimalisticIcon({
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
    name: 'list-arrow-up-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H20C20.4142 5.25 20.75 5.58579 20.75 6C20.75 6.41421 20.4142 6.75 20 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM16.9697 8.46967C17.2626 8.17678 17.7374 8.17678 18.0303 8.46967L20.5303 10.9697C20.8232 11.2626 20.8232 11.7374 20.5303 12.0303C20.2374 12.3232 19.7626 12.3232 19.4697 12.0303L18.25 10.8107V17C18.25 17.4142 17.9142 17.75 17.5 17.75C17.0858 17.75 16.75 17.4142 16.75 17V10.8107L15.5303 12.0303C15.2374 12.3232 14.7626 12.3232 14.4697 12.0303C14.1768 11.7374 14.1768 11.2626 14.4697 10.9697L16.9697 8.46967ZM2.25 11C2.25 10.5858 2.58579 10.25 3 10.25H11C11.4142 10.25 11.75 10.5858 11.75 11C11.75 11.4142 11.4142 11.75 11 11.75H3C2.58579 11.75 2.25 11.4142 2.25 11ZM2.25 16C2.25 15.5858 2.58579 15.25 3 15.25H12C12.4142 15.25 12.75 15.5858 12.75 16C12.75 16.4142 12.4142 16.75 12 16.75H3C2.58579 16.75 2.25 16.4142 2.25 16Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'list-arrow-up-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.9697 8.46967C17.2626 8.17678 17.7374 8.17678 18.0303 8.46967L20.5303 10.9697C20.8232 11.2626 20.8232 11.7374 20.5303 12.0303C20.2374 12.3232 19.7626 12.3232 19.4697 12.0303L18.25 10.8107V17C18.25 17.4142 17.9142 17.75 17.5 17.75C17.0858 17.75 16.75 17.4142 16.75 17V10.8107L15.5303 12.0303C15.2374 12.3232 14.7626 12.3232 14.4697 12.0303C14.1768 11.7374 14.1768 11.2626 14.4697 10.9697L16.9697 8.46967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H20C20.4142 5.25 20.75 5.58579 20.75 6C20.75 6.41421 20.4142 6.75 20 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 11C2.25 10.5858 2.58579 10.25 3 10.25H11C11.4142 10.25 11.75 10.5858 11.75 11C11.75 11.4142 11.4142 11.75 11 11.75H3C2.58579 11.75 2.25 11.4142 2.25 11ZM2.25 16C2.25 15.5858 2.58579 15.25 3 15.25H12C12.4142 15.25 12.75 15.5858 12.75 16C12.75 16.4142 12.4142 16.75 12 16.75H3C2.58579 16.75 2.25 16.4142 2.25 16Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'list-arrow-up-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M11 11L3 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 16H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 11.5L17.5 9L15 11.5M17.5 9V17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20 6L9.5 6M3 6L5.25 6" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'list-arrow-up-minimalistic',
    style: SolarIconStyle.linear,
    body: r'''<path d="M20 6L3 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 11L3 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 16H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 11.5L17.5 9L15 11.5M17.5 9V17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'list-arrow-up-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M20 11.5L17.5 9L15 11.5M17.5 9V17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 6L3 6" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11 11L3 11" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 16H3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'list-arrow-up-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H20C20.4142 5.25 20.75 5.58579 20.75 6C20.75 6.41421 20.4142 6.75 20 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM16.9697 8.46967C17.2626 8.17678 17.7374 8.17678 18.0303 8.46967L20.5303 10.9697C20.8232 11.2626 20.8232 11.7374 20.5303 12.0303C20.2374 12.3232 19.7626 12.3232 19.4697 12.0303L18.25 10.8107V17C18.25 17.4142 17.9142 17.75 17.5 17.75C17.0858 17.75 16.75 17.4142 16.75 17V10.8107L15.5303 12.0303C15.2374 12.3232 14.7626 12.3232 14.4697 12.0303C14.1768 11.7374 14.1768 11.2626 14.4697 10.9697L16.9697 8.46967ZM2.25 11C2.25 10.5858 2.58579 10.25 3 10.25H11C11.4142 10.25 11.75 10.5858 11.75 11C11.75 11.4142 11.4142 11.75 11 11.75H3C2.58579 11.75 2.25 11.4142 2.25 11ZM2.25 16C2.25 15.5858 2.58579 15.25 3 15.25H12C12.4142 15.25 12.75 15.5858 12.75 16C12.75 16.4142 12.4142 16.75 12 16.75H3C2.58579 16.75 2.25 16.4142 2.25 16Z" fill="currentColor"/>''',
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
