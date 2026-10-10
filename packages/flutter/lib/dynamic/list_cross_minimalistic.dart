// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-cross-minimalistic` icon in every style.
///
/// Prefer the static widgets (e.g. `ListCrossMinimalisticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ListCrossMinimalisticIcon extends StatelessWidget {
  /// Creates the `list-cross-minimalistic` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ListCrossMinimalisticIcon({
    super.key,
    this.style,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].
  final SolarIconStyle? style;

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
    name: 'list-cross-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H20C20.4142 5.25 20.75 5.58579 20.75 6C20.75 6.41421 20.4142 6.75 20 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 11C2.25 10.5858 2.58579 10.25 3 10.25H11C11.4142 10.25 11.75 10.5858 11.75 11C11.75 11.4142 11.4142 11.75 11 11.75H3C2.58579 11.75 2.25 11.4142 2.25 11ZM14.4697 10.4697C14.7626 10.1768 15.2374 10.1768 15.5303 10.4697L17.5 12.4393L19.4697 10.4697C19.7626 10.1768 20.2374 10.1768 20.5303 10.4697C20.8232 10.7626 20.8232 11.2374 20.5303 11.5303L18.5607 13.5L20.5303 15.4697C20.8232 15.7626 20.8232 16.2374 20.5303 16.5303C20.2374 16.8232 19.7626 16.8232 19.4697 16.5303L17.5 14.5607L15.5303 16.5303C15.2374 16.8232 14.7626 16.8232 14.4697 16.5303C14.1768 16.2374 14.1768 15.7626 14.4697 15.4697L16.4393 13.5L14.4697 11.5303C14.1768 11.2374 14.1768 10.7626 14.4697 10.4697ZM2.25 16C2.25 15.5858 2.58579 15.25 3 15.25H11C11.4142 15.25 11.75 15.5858 11.75 16C11.75 16.4142 11.4142 16.75 11 16.75H3C2.58579 16.75 2.25 16.4142 2.25 16Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'list-cross-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.4697 10.4697C14.7626 10.1768 15.2374 10.1768 15.5303 10.4697L17.5 12.4393L19.4697 10.4697C19.7626 10.1768 20.2374 10.1768 20.5303 10.4697C20.8232 10.7626 20.8232 11.2374 20.5303 11.5303L18.5607 13.5L20.5303 15.4697C20.8232 15.7626 20.8232 16.2374 20.5303 16.5303C20.2374 16.8232 19.7626 16.8232 19.4697 16.5303L17.5 14.5607L15.5303 16.5303C15.2374 16.8232 14.7626 16.8232 14.4697 16.5303C14.1768 16.2374 14.1768 15.7626 14.4697 15.4697L16.4393 13.5L14.4697 11.5303C14.1768 11.2374 14.1768 10.7626 14.4697 10.4697Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H20C20.4142 5.25 20.75 5.58579 20.75 6C20.75 6.41421 20.4142 6.75 20 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 11C2.25 10.5858 2.58579 10.25 3 10.25H11C11.4142 10.25 11.75 10.5858 11.75 11C11.75 11.4142 11.4142 11.75 11 11.75H3C2.58579 11.75 2.25 11.4142 2.25 11ZM2.25 16C2.25 15.5858 2.58579 15.25 3 15.25H11C11.4142 15.25 11.75 15.5858 11.75 16C11.75 16.4142 11.4142 16.75 11 16.75H3C2.58579 16.75 2.25 16.4142 2.25 16Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'list-cross-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3 6L13.5 6M20 6L17.75 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 16H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 16L20 11M20 16L15 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11 11L7 11M3 11H4.2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'list-cross-minimalistic',
    style: SolarIconStyle.linear,
    body: r'''<path d="M20 6L3 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 11L3 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 16H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 16L20 11M20 16L15 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'list-cross-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15 16L20 11M20 16L15 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 6L3 6" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11 11L3 11" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11 16H3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'list-cross-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H20C20.4142 5.25 20.75 5.58579 20.75 6C20.75 6.41421 20.4142 6.75 20 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 11C2.25 10.5858 2.58579 10.25 3 10.25H11C11.4142 10.25 11.75 10.5858 11.75 11C11.75 11.4142 11.4142 11.75 11 11.75H3C2.58579 11.75 2.25 11.4142 2.25 11ZM14.4697 10.4697C14.7626 10.1768 15.2374 10.1768 15.5303 10.4697L17.5 12.4393L19.4697 10.4697C19.7626 10.1768 20.2374 10.1768 20.5303 10.4697C20.8232 10.7626 20.8232 11.2374 20.5303 11.5303L18.5607 13.5L20.5303 15.4697C20.8232 15.7626 20.8232 16.2374 20.5303 16.5303C20.2374 16.8232 19.7626 16.8232 19.4697 16.5303L17.5 14.5607L15.5303 16.5303C15.2374 16.8232 14.7626 16.8232 14.4697 16.5303C14.1768 16.2374 14.1768 15.7626 14.4697 15.4697L16.4393 13.5L14.4697 11.5303C14.1768 11.2374 14.1768 10.7626 14.4697 10.4697ZM2.25 16C2.25 15.5858 2.58579 15.25 3 15.25H11C11.4142 15.25 11.75 15.5858 11.75 16C11.75 16.4142 11.4142 16.75 11 16.75H3C2.58579 16.75 2.25 16.4142 2.25 16Z" fill="currentColor"/>''',
  );

  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback = isolated
        ? SolarIconStyle.linear
        : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
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
