// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `target` icon in every style.
///
/// Prefer the static widgets (e.g. `TargetLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class TargetIcon extends StatelessWidget {
  /// Creates the `target` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const TargetIcon({
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
    name: 'target',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.2479 2C6.30929 2.36618 2.36618 6.30929 2 11.2479H4.98056C5.39592 11.2479 5.73264 11.5846 5.73264 12C5.73264 12.4154 5.39592 12.7521 4.98056 12.7521H2C2.36618 17.6907 6.30929 21.6338 11.2479 22V19.0194C11.2479 18.6041 11.5846 18.2674 12 18.2674C12.4154 18.2674 12.7521 18.6041 12.7521 19.0194V22C17.6907 21.6338 21.6338 17.6907 22 12.7521H19.0194C18.6041 12.7521 18.2674 12.4154 18.2674 12C18.2674 11.5846 18.6041 11.2479 19.0194 11.2479H22C21.6338 6.30929 17.6907 2.36618 12.7521 2V4.98056C12.7521 5.39592 12.4154 5.73264 12 5.73264C11.5846 5.73264 11.2479 5.39592 11.2479 4.98056V2ZM9.24236 12C9.24236 11.5846 9.57908 11.2479 9.99444 11.2479H11.2479V9.99444C11.2479 9.57908 11.5846 9.24236 12 9.24236C12.4154 9.24236 12.7521 9.57908 12.7521 9.99444V11.2479H14.0056C14.4209 11.2479 14.7576 11.5846 14.7576 12C14.7576 12.4154 14.4209 12.7521 14.0056 12.7521H12.7521V14.0056C12.7521 14.4209 12.4154 14.7576 12 14.7576C11.5846 14.7576 11.2479 14.4209 11.2479 14.0056V12.7521H9.99444C9.57908 12.7521 9.24236 12.4154 9.24236 12Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'target',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 18.25C12.4142 18.25 12.75 18.5858 12.75 19V21.9727C12.5024 21.991 12.2523 22 12 22C11.7477 22 11.4976 21.991 11.25 21.9727V19C11.25 18.5858 11.5858 18.25 12 18.25Z" fill="currentColor"/>
<path d="M12 9.25C12.4142 9.25 12.75 9.58579 12.75 10V11.25H14C14.4142 11.25 14.75 11.5858 14.75 12C14.75 12.4142 14.4142 12.75 14 12.75H12.75V14C12.75 14.4142 12.4142 14.75 12 14.75C11.5858 14.75 11.25 14.4142 11.25 14V12.75H10C9.58579 12.75 9.25 12.4142 9.25 12C9.25 11.5858 9.58579 11.25 10 11.25H11.25V10C11.25 9.58579 11.5858 9.25 12 9.25Z" fill="currentColor"/>
<path d="M5 11.25C5.41421 11.25 5.75 11.5858 5.75 12C5.75 12.4142 5.41421 12.75 5 12.75H2.02734C2.00899 12.5024 2 12.2523 2 12C2 11.7477 2.00899 11.4976 2.02734 11.25H5Z" fill="currentColor"/>
<path d="M21.9727 11.25C21.991 11.4976 22 11.7477 22 12C22 12.2523 21.991 12.5024 21.9727 12.75H19C18.5858 12.75 18.25 12.4142 18.25 12C18.25 11.5858 18.5858 11.25 19 11.25H21.9727Z" fill="currentColor"/>
<path d="M12 2C12.2523 2 12.5024 2.00899 12.75 2.02734V5C12.75 5.41421 12.4142 5.75 12 5.75C11.5858 5.75 11.25 5.41421 11.25 5V2.02734C11.4976 2.00899 11.7477 2 12 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'target',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 12L5 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 12L22 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22L12 19" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 5L12 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 12H12H14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 14L12 12L12 10" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'target',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12L5 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 12L22 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22L12 19" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 5L12 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 12H12H14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 14L12 12L12 10" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'target',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 12H10M12 12H14M12 12V14M12 12L12 10" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12L5 12" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M19 12L22 12" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 22L12 19" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 5L12 2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'target',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M9.25 12C9.25 11.5858 9.58579 11.25 10 11.25H11.25V10C11.25 9.58579 11.5858 9.25 12 9.25C12.4142 9.25 12.75 9.58579 12.75 10V11.25H14C14.4142 11.25 14.75 11.5858 14.75 12C14.75 12.4142 14.4142 12.75 14 12.75H12.75V14C12.75 14.4142 12.4142 14.75 12 14.75C11.5858 14.75 11.25 14.4142 11.25 14V12.75H10C9.58579 12.75 9.25 12.4142 9.25 12Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25ZM11.25 2.77997C6.7395 3.14188 3.14188 6.7395 2.77997 11.25H5C5.41421 11.25 5.75 11.5858 5.75 12C5.75 12.4142 5.41421 12.75 5 12.75H2.77997C3.14188 17.2605 6.7395 20.8581 11.25 21.22V19C11.25 18.5858 11.5858 18.25 12 18.25C12.4142 18.25 12.75 18.5858 12.75 19V21.22C17.2605 20.8581 20.8581 17.2605 21.22 12.75H19C18.5858 12.75 18.25 12.4142 18.25 12C18.25 11.5858 18.5858 11.25 19 11.25H21.22C20.8581 6.7395 17.2605 3.14188 12.75 2.77997V5C12.75 5.41421 12.4142 5.75 12 5.75C11.5858 5.75 11.25 5.41421 11.25 5V2.77997Z" fill="currentColor"/>''',
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
