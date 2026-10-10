// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `heart-lock` icon in every style.
///
/// Prefer the static widgets (e.g. `HeartLockLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class HeartLockIcon extends StatelessWidget {
  /// Creates the `heart-lock` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const HeartLockIcon({
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
    name: 'heart-lock',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.25 7.2892V7C6.25 5.19099 6.79645 3.72534 7.85181 2.71548C8.90153 1.71101 10.3582 1.25 12 1.25C13.6418 1.25 15.0985 1.71101 16.1482 2.71548C17.2036 3.72534 17.75 5.19099 17.75 7V7.2892C19.634 7.98746 21 9.87329 21 12.0992C21 15.9375 18.0316 18.1516 15.5044 20.0368C15.2417 20.2327 14.9838 20.4251 14.7344 20.6154C13.8 21.3285 12.9 22 12 22C11.1 22 10.2 21.3285 9.26556 20.6154C9.01624 20.4251 8.75832 20.2327 8.49565 20.0368C5.96837 18.1516 3 15.9375 3 12.0992C3 9.87329 4.36604 7.98746 6.25 7.2892ZM7.75 7C7.75 5.4953 8.19732 4.46095 8.88885 3.79924C9.58601 3.13213 10.6294 2.75 12 2.75C13.3706 2.75 14.414 3.13213 15.1112 3.79924C15.8027 4.46095 16.25 5.4953 16.25 7V7.00134C14.8849 6.96863 13.3895 7.53302 12 8.93062C10.6105 7.53302 9.11513 6.96863 7.75 7.00134V7ZM12 11.25C12.4142 11.25 12.75 11.5858 12.75 12V14.5C12.75 14.9142 12.4142 15.25 12 15.25C11.5858 15.25 11.25 14.9142 11.25 14.5V12C11.25 11.5858 11.5858 11.25 12 11.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'heart-lock',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 11.25C12.4142 11.25 12.75 11.5858 12.75 12V14.5C12.75 14.9142 12.4142 15.25 12 15.25C11.5858 15.25 11.25 14.9142 11.25 14.5V12C11.25 11.5858 11.5858 11.25 12 11.25Z" fill="currentColor"/>
<path d="M12 1.25C13.6418 1.25 15.0987 1.71135 16.1484 2.71582C17.2036 3.72567 17.75 5.19116 17.75 7V7.28906C17.2781 7.11415 16.7736 7.01352 16.25 7.00098C16.25 5.49628 15.8029 4.46054 15.1113 3.79883C14.4142 3.13179 13.3705 2.75 12 2.75C10.6295 2.75 9.58583 3.13179 8.88867 3.79883C8.19715 4.46054 7.75 5.4953 7.75 7C7.2264 7.01255 6.72193 7.11415 6.25 7.28906V7C6.25 5.19116 6.7964 3.72567 7.85156 2.71582C8.90128 1.71135 10.3582 1.25 12 1.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M8.49565 20.0367C5.96837 18.1516 3 15.9375 3 12.0992C3 7.86196 7.95014 4.85701 12 8.93062C16.0499 4.85701 21 7.86196 21 12.0992C21 15.9375 18.0316 18.1516 15.5044 20.0367C15.2417 20.2327 14.9838 20.4251 14.7344 20.6154C13.8 21.3285 12.9 22 12 22C11.1 22 10.2 21.3285 9.26556 20.6154C9.01624 20.4251 8.75832 20.2327 8.49565 20.0367Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'heart-lock',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7.07161 18.9503C7.81454 19.5423 8.57318 20.0869 9.26556 20.6154C10.2 21.3285 11.1 22 12 22C12.9 22 13.8 21.3285 14.7344 20.6154C17.3825 18.5943 21 16.3364 21 12.0992C21 7.86196 16.0499 4.85701 12 8.93062C7.95014 4.85701 3 7.86196 3 12.0992C3 13.4078 3.34504 14.5276 3.9 15.51" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17 7C17 3.68629 15.0125 2 12 2C8.98754 2 7 3.68629 7 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 12V14.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'heart-lock',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M17 7C17 3.68629 15.0125 2 12 2C8.98754 2 7 3.68629 7 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 12V14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 12.0992C3 16.3364 6.61748 18.5943 9.26556 20.6154C10.2 21.3285 11.1 22 12 22C12.9 22 13.8 21.3285 14.7344 20.6154C17.3825 18.5943 21 16.3364 21 12.0992C21 7.86196 16.0499 4.85701 12 8.93062C7.95014 4.85701 3 7.86196 3 12.0992Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'heart-lock',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3 12.0992C3 16.3364 6.61748 18.5943 9.26556 20.6154C10.2 21.3285 11.1 22 12 22C12.9 22 13.8 21.3285 14.7344 20.6154C17.3825 18.5943 21 16.3364 21 12.0992C21 7.86196 16.0499 4.85701 12 8.93062C7.95014 4.85701 3 7.86196 3 12.0992Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17 7C17 3.68629 15.0125 2 12 2C8.98754 2 7 3.68629 7 7" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 12V14.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'heart-lock',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12 11.25C12.4142 11.25 12.75 11.5858 12.75 12V14.5C12.75 14.9142 12.4142 15.25 12 15.25C11.5858 15.25 11.25 14.9142 11.25 14.5V12C11.25 11.5858 11.5858 11.25 12 11.25Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M6.26487 6.49198C6.06517 6.55411 5.86925 6.62777 5.67779 6.7125C3.66023 7.60535 2.25 9.68634 2.25 12.0992C2.25 14.46 3.26713 16.2564 4.58706 17.6953C5.64262 18.8461 6.93514 19.8095 8.06984 20.6553C8.32624 20.8464 8.57482 21.0317 8.81054 21.2116C9.27099 21.563 9.76987 21.9413 10.2764 22.2279C10.7832 22.5146 11.3656 22.75 12 22.75C12.6344 22.75 13.2168 22.5146 13.7236 22.2279C14.2301 21.9413 14.729 21.563 15.1895 21.2116C15.4253 21.0316 15.6737 20.8464 15.9302 20.6553C17.0649 19.8095 18.3574 18.8461 19.4129 17.6953C20.7329 16.2564 21.75 14.46 21.75 12.0992C21.75 9.68634 20.3398 7.60535 18.3222 6.7125C18.1308 6.62777 17.9348 6.55411 17.7351 6.49198C17.6412 4.91563 17.1029 3.62905 16.1482 2.71548C15.0985 1.71101 13.6418 1.25 12 1.25C10.3582 1.25 8.90153 1.71101 7.85181 2.71548C6.89708 3.62905 6.35884 4.91563 6.26487 6.49198ZM7.79032 6.24995C9.17125 6.23196 10.6375 6.74241 12 7.9077C13.3625 6.74241 14.8288 6.23196 16.2097 6.24995C16.0853 5.14336 15.6812 4.3447 15.1112 3.79924C14.414 3.13213 13.3706 2.75 12 2.75C10.6294 2.75 9.58601 3.13213 8.88885 3.79924C8.31882 4.3447 7.91472 5.14336 7.79032 6.24995ZM3.75 12.0992C3.75 10.2748 4.81485 8.7347 6.28482 8.08418C7.71357 7.4519 9.63741 7.61795 11.4681 9.4594C11.6089 9.601 11.8003 9.68062 12 9.68062C12.1997 9.68062 12.3911 9.601 12.5319 9.4594C14.3626 7.61795 16.2864 7.4519 17.7152 8.08418C19.1852 8.7347 20.25 10.2748 20.25 12.0992C20.25 13.9756 19.4584 15.4268 18.3076 16.6814C17.3573 17.7173 16.2076 18.5754 15.0792 19.4177C14.8105 19.6183 14.5428 19.8182 14.2794 20.0192C13.8054 20.3809 13.3871 20.6949 12.985 20.9223C12.5832 21.1496 12.2656 21.25 12 21.25C11.7344 21.25 11.4168 21.1496 11.015 20.9223C10.6129 20.6949 10.1946 20.3809 9.72058 20.0192C9.45722 19.8182 9.18967 19.6184 8.92091 19.4178C7.79253 18.5756 6.64268 17.7173 5.69244 16.6814C4.54161 15.4268 3.75 13.9756 3.75 12.0992Z" fill="currentColor"/>''',
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
