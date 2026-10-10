// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `stopwatch` icon in every style.
///
/// Prefer the static widgets (e.g. `StopwatchLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class StopwatchIcon extends StatelessWidget {
  /// Creates the `stopwatch` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const StopwatchIcon({
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
    name: 'stopwatch',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C16.9706 22 21 17.9706 21 13C21 8.02944 16.9706 4 12 4C7.02944 4 3 8.02944 3 13C3 17.9706 7.02944 22 12 22ZM12 8.25C12.4142 8.25 12.75 8.58579 12.75 9V13C12.75 13.4142 12.4142 13.75 12 13.75C11.5858 13.75 11.25 13.4142 11.25 13V9C11.25 8.58579 11.5858 8.25 12 8.25Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M9.25 2C9.25 1.58579 9.58579 1.25 10 1.25H14C14.4142 1.25 14.75 1.58579 14.75 2C14.75 2.41421 14.4142 2.75 14 2.75H10C9.58579 2.75 9.25 2.41421 9.25 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'stopwatch',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 9.25C12.4142 9.25 12.75 9.58579 12.75 10V14C12.75 14.4142 12.4142 14.75 12 14.75C11.5858 14.75 11.25 14.4142 11.25 14V10C11.25 9.58579 11.5858 9.25 12 9.25Z" fill="currentColor"/>
<path d="M14 2C14.4142 2 14.75 2.33579 14.75 2.75C14.75 3.16421 14.4142 3.5 14 3.5H10C9.58579 3.5 9.25 3.16421 9.25 2.75C9.25 2.33579 9.58579 2 10 2H14Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 23C16.9706 23 21 18.9706 21 14C21 9.02944 16.9706 5 12 5C7.02944 5 3 9.02944 3 14C3 18.9706 7.02944 23 12 23Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'stopwatch',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 13V9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10 2H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.5 5.20404C8.82378 4.43827 10.3607 4 12 4C16.9706 4 21 8.02944 21 13C21 17.9706 16.9706 22 12 22C7.02944 22 3 17.9706 3 13C3 11.3607 3.43827 9.82378 4.20404 8.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'stopwatch',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M21 13C21 17.9706 16.9706 22 12 22C7.02944 22 3 17.9706 3 13C3 8.02944 7.02944 4 12 4C16.9706 4 21 8.02944 21 13Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 13V9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10 2H14" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'stopwatch',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 13V9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10 2H14" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 13C21 17.9706 16.9706 22 12 22C7.02944 22 3 17.9706 3 13C3 8.02944 7.02944 4 12 4C16.9706 4 21 8.02944 21 13Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'stopwatch',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.25 2C9.25 1.58579 9.58579 1.25 10 1.25H14C14.4142 1.25 14.75 1.58579 14.75 2C14.75 2.41421 14.4142 2.75 14 2.75H10C9.58579 2.75 9.25 2.41421 9.25 2ZM12 4.75C7.44365 4.75 3.75 8.44365 3.75 13C3.75 17.5564 7.44365 21.25 12 21.25C16.5563 21.25 20.25 17.5564 20.25 13C20.25 8.44365 16.5563 4.75 12 4.75ZM2.25 13C2.25 7.61522 6.61522 3.25 12 3.25C17.3848 3.25 21.75 7.61522 21.75 13C21.75 18.3848 17.3848 22.75 12 22.75C6.61522 22.75 2.25 18.3848 2.25 13ZM12 8.25C12.4142 8.25 12.75 8.58579 12.75 9V13C12.75 13.4142 12.4142 13.75 12 13.75C11.5858 13.75 11.25 13.4142 11.25 13V9C11.25 8.58579 11.5858 8.25 12 8.25Z" fill="currentColor"/>''',
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
