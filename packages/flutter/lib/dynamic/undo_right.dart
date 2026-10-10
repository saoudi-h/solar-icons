// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `undo-right` icon in every style.
///
/// Prefer the static widgets (e.g. `UndoRightLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class UndoRightIcon extends StatelessWidget {
  /// Creates the `undo-right` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const UndoRightIcon({
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
    name: 'undo-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.4697 3.46967C16.7626 3.17678 17.2374 3.17678 17.5303 3.46967L20.5303 6.46967C20.8232 6.76256 20.8232 7.23744 20.5303 7.53033L17.5303 10.5303C17.2374 10.8232 16.7626 10.8232 16.4697 10.5303C16.1768 10.2374 16.1768 9.76256 16.4697 9.46967L18.1893 7.75H9.00001C8.05159 7.75 7.39042 7.75072 6.8778 7.79718C6.37549 7.84271 6.0899 7.92737 5.875 8.05144C5.53296 8.24892 5.24893 8.53295 5.05145 8.87499C4.92738 9.0899 4.84271 9.37548 4.79718 9.87779C4.75072 10.3904 4.75 11.0516 4.75 12C4.75 12.9484 4.75072 13.6096 4.79718 14.1222C4.84271 14.6245 4.92737 14.9101 5.05144 15.125C5.24892 15.467 5.53296 15.7511 5.875 15.9486C6.0899 16.0726 6.37549 16.1573 6.87779 16.2028C7.39041 16.2493 8.05158 16.25 9 16.25H16C16.4142 16.25 16.75 16.5858 16.75 17C16.75 17.4142 16.4142 17.75 16 17.75H8.96423C8.05998 17.75 7.3307 17.75 6.7424 17.6967C6.13605 17.6417 5.60625 17.5254 5.125 17.2476C4.55493 16.9185 4.08154 16.4451 3.75241 15.875C3.47455 15.3937 3.35826 14.8639 3.3033 14.2576C3.24998 13.6693 3.24999 12.94 3.25 12.0358V11.9642C3.24999 11.06 3.24999 10.3307 3.30331 9.74239C3.35826 9.13604 3.47456 8.60624 3.75241 8.12499C4.08154 7.55492 4.55493 7.08154 5.125 6.75241C5.60625 6.47456 6.13605 6.35826 6.7424 6.3033C7.33069 6.24998 8.05997 6.24999 8.96421 6.25L18.1893 6.25L16.4697 4.53033C16.1768 4.23744 16.1768 3.76256 16.4697 3.46967Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'undo-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.4697 3.46967C16.1768 3.76256 16.1768 4.23744 16.4697 4.53033L18.9393 7L16.4697 9.46967C16.1768 9.76256 16.1768 10.2374 16.4697 10.5303C16.7626 10.8232 17.2374 10.8232 17.5303 10.5303L20.5303 7.53033C20.8232 7.23744 20.8232 6.76256 20.5303 6.46967L17.5303 3.46967C17.2374 3.17678 16.7626 3.17678 16.4697 3.46967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.9393 7L18.1893 6.25H8.96422C8.05998 6.24999 7.33069 6.24998 6.7424 6.3033C6.13605 6.35826 5.60625 6.47456 5.125 6.75241C4.55493 7.08154 4.08154 7.55492 3.75241 8.12499C3.47456 8.60624 3.35826 9.13604 3.3033 9.74239C3.24998 10.3307 3.24999 11.06 3.25 11.9643V12.0358C3.24999 12.94 3.24998 13.6693 3.3033 14.2576C3.35826 14.8639 3.47455 15.3938 3.75241 15.875C4.08154 16.4451 4.55493 16.9185 5.125 17.2476C5.60625 17.5254 6.13605 17.6417 6.7424 17.6967C7.33069 17.75 8.05998 17.75 8.96423 17.75H16C16.4142 17.75 16.75 17.4142 16.75 17C16.75 16.5858 16.4142 16.25 16 16.25H9C8.05158 16.25 7.39041 16.2493 6.87779 16.2028C6.37549 16.1573 6.0899 16.0726 5.875 15.9486C5.53296 15.7511 5.24892 15.467 5.05144 15.125C4.92737 14.9101 4.84271 14.6245 4.79718 14.1222C4.75072 13.6096 4.75 12.9484 4.75 12C4.75 11.0516 4.75072 10.3904 4.79718 9.87779C4.84271 9.37548 4.92738 9.0899 5.05145 8.87499C5.24893 8.53296 5.53296 8.24892 5.875 8.05145C6.0899 7.92737 6.37549 7.84271 6.8778 7.79718C7.39042 7.75072 8.05159 7.75 9.00001 7.75H18.1893L18.9393 7Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'undo-right',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 7H9.00001C7.13077 7 6.19615 7 5.5 7.40193C5.04395 7.66523 4.66524 8.04394 4.40193 8.49999C4 9.19615 4 10.1308 4 12C4 13.8692 4 14.8038 4.40192 15.5C4.66523 15.9561 5.04394 16.3348 5.5 16.5981C6.19615 17 7.13077 17 9 17H16M17 10L20 7L17 4" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'undo-right',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20 7H9.00001C7.13077 7 6.19615 7 5.5 7.40193C5.04395 7.66523 4.66524 8.04394 4.40193 8.49999C4 9.19615 4 10.1308 4 12C4 13.8692 4 14.8038 4.40192 15.5C4.66523 15.9561 5.04394 16.3348 5.5 16.5981C6.19615 17 7.13077 17 9 17H16M17 10L20 7L17 4" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'undo-right',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M17 4L20 7L17 10" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 7H9.00001C7.13077 7 6.19615 7 5.5 7.40193C5.04395 7.66523 4.66524 8.04394 4.40193 8.49999C4 9.19615 4 10.1308 4 12C4 13.8692 4 14.8038 4.40192 15.5C4.66523 15.9561 5.04394 16.3348 5.5 16.5981C6.19615 17 7.13077 17 9 17H16" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'undo-right',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.4697 3.46967C16.7626 3.17678 17.2374 3.17678 17.5303 3.46967L20.5303 6.46967C20.8232 6.76256 20.8232 7.23744 20.5303 7.53033L17.5303 10.5303C17.2374 10.8232 16.7626 10.8232 16.4697 10.5303C16.1768 10.2374 16.1768 9.76256 16.4697 9.46967L18.1893 7.75H9.00001C8.05159 7.75 7.39042 7.75072 6.8778 7.79718C6.37549 7.84271 6.0899 7.92737 5.875 8.05144C5.53296 8.24892 5.24893 8.53295 5.05145 8.87499C4.92738 9.0899 4.84271 9.37548 4.79718 9.87779C4.75072 10.3904 4.75 11.0516 4.75 12C4.75 12.9484 4.75072 13.6096 4.79718 14.1222C4.84271 14.6245 4.92737 14.9101 5.05144 15.125C5.24892 15.467 5.53296 15.7511 5.875 15.9486C6.0899 16.0726 6.37549 16.1573 6.87779 16.2028C7.39041 16.2493 8.05158 16.25 9 16.25H16C16.4142 16.25 16.75 16.5858 16.75 17C16.75 17.4142 16.4142 17.75 16 17.75H8.96423C8.05998 17.75 7.3307 17.75 6.7424 17.6967C6.13605 17.6417 5.60625 17.5254 5.125 17.2476C4.55493 16.9185 4.08154 16.4451 3.75241 15.875C3.47455 15.3937 3.35826 14.8639 3.3033 14.2576C3.24998 13.6693 3.24999 12.94 3.25 12.0358V11.9642C3.24999 11.06 3.24999 10.3307 3.30331 9.74239C3.35826 9.13604 3.47456 8.60624 3.75241 8.12499C4.08154 7.55492 4.55493 7.08154 5.125 6.75241C5.60625 6.47456 6.13605 6.35826 6.7424 6.3033C7.33069 6.24998 8.05997 6.24999 8.96421 6.25L18.1893 6.25L16.4697 4.53033C16.1768 4.23744 16.1768 3.76256 16.4697 3.46967Z" fill="currentColor"/>''',
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
