// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `circle-top-up` icon in every style.
///
/// Prefer the static widgets (e.g. `CircleTopUpLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class CircleTopUpIcon extends StatelessWidget {
  /// Creates the `circle-top-up` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const CircleTopUpIcon({
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
    name: 'circle-top-up',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.25 2.75C11.8487 2.75 12.4351 2.80247 13.0049 2.90332C13.0838 4.07436 14.059 5 15.25 5H15.8184L11.6592 9.15918C10.7805 10.0379 10.7805 11.4621 11.6592 12.3408C12.5379 13.2195 13.9621 13.2195 14.8408 12.3408L19 8.18164V8.75C19 9.94104 19.9256 10.9162 21.0967 10.9951C21.1975 11.5649 21.25 12.1513 21.25 12.75C21.25 18.2728 16.7728 22.75 11.25 22.75C5.72715 22.75 1.25 18.2728 1.25 12.75C1.25 7.22715 5.72715 2.75 11.25 2.75Z" fill="currentColor"/>
<path d="M21.25 2C21.6642 2 22 2.33579 22 2.75V8.75C22 9.16421 21.6642 9.5 21.25 9.5C20.8358 9.5 20.5 9.16421 20.5 8.75V4.56055L13.7803 11.2803C13.4874 11.5732 13.0126 11.5732 12.7197 11.2803C12.4268 10.9874 12.4268 10.5126 12.7197 10.2197L19.4395 3.5H15.25C14.8358 3.5 14.5 3.16421 14.5 2.75C14.5 2.33579 14.8358 2 15.25 2H21.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'circle-top-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.4697 11.5303C12.1768 11.2374 12.1768 10.7626 12.4697 10.4697L20.1893 2.75H16.6562C16.242 2.75 15.9062 2.41421 15.9062 2C15.9062 1.58579 16.242 1.25 16.6562 1.25H22C22.4142 1.25 22.75 1.58579 22.75 2V7.34375C22.75 7.75796 22.4142 8.09375 22 8.09375C21.5858 8.09375 21.25 7.75796 21.25 7.34375V3.81066L13.5303 11.5303C13.2374 11.8232 12.7626 11.8232 12.4697 11.5303Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'circle-top-up',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13 11L22 2M22 7.34375V2H16.6562" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 2C6.47715 2 2 6.47715 2 12C2 13.8214 2.48697 15.5291 3.33782 17M22 12C22 17.5228 17.5228 22 12 22C10.1786 22 8.47087 21.513 7 20.6622" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'circle-top-up',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13 11L22 2M22 7.34375V2H16.6562" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'circle-top-up',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13 11L22 2M22 7.34375V2H16.6562" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'circle-top-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M21.25 12C21.25 17.1086 17.1086 21.25 12 21.25C6.89137 21.25 2.75 17.1086 2.75 12C2.75 6.89137 6.89137 2.75 12 2.75C12.4142 2.75 12.75 2.41421 12.75 2C12.75 1.58579 12.4142 1.25 12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 11.5858 22.4142 11.25 22 11.25C21.5858 11.25 21.25 11.5858 21.25 12Z" fill="currentColor"/>
<path d="M12.4697 10.4697C12.1768 10.7626 12.1768 11.2374 12.4697 11.5303C12.7626 11.8232 13.2374 11.8232 13.5303 11.5303L21.25 3.81066V7.34375C21.25 7.75796 21.5858 8.09375 22 8.09375C22.4142 8.09375 22.75 7.75796 22.75 7.34375V2C22.75 1.58579 22.4142 1.25 22 1.25H16.6562C16.242 1.25 15.9062 1.58579 15.9062 2C15.9062 2.41421 16.242 2.75 16.6562 2.75H20.1893L12.4697 10.4697Z" fill="currentColor"/>''',
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
