// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `transmission-circle` icon in every style.
///
/// Prefer the static widgets (e.g. `TransmissionCircleLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class TransmissionCircleIcon extends StatelessWidget {
  /// Creates the `transmission-circle` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const TransmissionCircleIcon({
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
    name: 'transmission-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12ZM8 8.25C8.41421 8.25 8.75 8.58579 8.75 9V11.25H11.25V9C11.25 8.58579 11.5858 8.25 12 8.25C12.4142 8.25 12.75 8.58579 12.75 9V11.25H13C13.4762 11.25 13.7958 11.2496 14.0433 11.2327C14.284 11.2163 14.4012 11.1868 14.4784 11.1548C14.7846 11.028 15.028 10.7846 15.1549 10.4784C15.1868 10.4012 15.2163 10.284 15.2327 10.0433C15.2496 9.79579 15.25 9.4762 15.25 9C15.25 8.58579 15.5858 8.25 16 8.25C16.4142 8.25 16.75 8.58579 16.75 9V9.02526C16.75 9.46972 16.75 9.84075 16.7292 10.1454C16.7076 10.4625 16.661 10.762 16.5407 11.0524C16.2616 11.7262 15.7262 12.2616 15.0524 12.5407C14.762 12.661 14.4625 12.7076 14.1454 12.7292C13.8408 12.75 13.4697 12.75 13.0253 12.75H12.75V15C12.75 15.4142 12.4142 15.75 12 15.75C11.5858 15.75 11.25 15.4142 11.25 15V12.75H8.75V15C8.75 15.4142 8.41421 15.75 8 15.75C7.58579 15.75 7.25 15.4142 7.25 15V9C7.25 8.58579 7.58579 8.25 8 8.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'transmission-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8 8.25C8.41421 8.25 8.75 8.58579 8.75 9V11.25H11.25V9C11.25 8.58579 11.5858 8.25 12 8.25C12.4142 8.25 12.75 8.58579 12.75 9V11.25H13C13.4762 11.25 13.7958 11.2496 14.0433 11.2327C14.284 11.2163 14.4012 11.1868 14.4784 11.1548C14.7846 11.028 15.028 10.7846 15.1549 10.4784C15.1868 10.4012 15.2163 10.284 15.2327 10.0433C15.2496 9.79579 15.25 9.4762 15.25 9C15.25 8.58579 15.5858 8.25 16 8.25C16.4142 8.25 16.75 8.58579 16.75 9V9.02526C16.75 9.46972 16.75 9.84075 16.7292 10.1454C16.7076 10.4625 16.661 10.762 16.5407 11.0524C16.2616 11.7262 15.7262 12.2616 15.0524 12.5407C14.762 12.661 14.4625 12.7076 14.1454 12.7292C13.8408 12.75 13.4697 12.75 13.0253 12.75H13.0253H12.75V15C12.75 15.4142 12.4142 15.75 12 15.75C11.5858 15.75 11.25 15.4142 11.25 15V12.75H8.75V15C8.75 15.4142 8.41421 15.75 8 15.75C7.58579 15.75 7.25 15.4142 7.25 15V9C7.25 8.58579 7.58579 8.25 8 8.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'transmission-circle',
    style: SolarIconStyle.broken,
    body: r'''<path d="M8 9V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 9V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 12H13C13.9319 12 14.3978 12 14.7654 11.8478C15.2554 11.6448 15.6448 11.2554 15.8478 10.7654C16 10.3978 16 9.93188 16 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'transmission-circle',
    style: SolarIconStyle.linear,
    body: r'''<path d="M8 9V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 9V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 12H13C13.9319 12 14.3978 12 14.7654 11.8478C15.2554 11.6448 15.6448 11.2554 15.8478 10.7654C16 10.3978 16 9.93188 16 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'transmission-circle',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M8 9V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 9V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 12H13C13.9319 12 14.3978 12 14.7654 11.8478C15.2554 11.6448 15.6448 11.2554 15.8478 10.7654C16 10.3978 16 9.93188 16 9" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'transmission-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM8 8.25C8.41421 8.25 8.75 8.58579 8.75 9V11.25H11.25V9C11.25 8.58579 11.5858 8.25 12 8.25C12.4142 8.25 12.75 8.58579 12.75 9V11.25H13C13.4762 11.25 13.7958 11.2496 14.0433 11.2327C14.284 11.2163 14.4012 11.1868 14.4784 11.1549C14.7846 11.028 15.028 10.7846 15.1548 10.4784C15.1868 10.4012 15.2163 10.284 15.2327 10.0433C15.2496 9.79579 15.25 9.4762 15.25 9C15.25 8.58579 15.5858 8.25 16 8.25C16.4142 8.25 16.75 8.58579 16.75 9V9.02526C16.75 9.46972 16.75 9.84075 16.7292 10.1454C16.7076 10.4625 16.661 10.762 16.5407 11.0524C16.2616 11.7262 15.7262 12.2616 15.0524 12.5407C14.762 12.661 14.4625 12.7076 14.1454 12.7292C13.8408 12.75 13.4697 12.75 13.0253 12.75H12.75V15C12.75 15.4142 12.4142 15.75 12 15.75C11.5858 15.75 11.25 15.4142 11.25 15V12.75H8.75V15C8.75 15.4142 8.41421 15.75 8 15.75C7.58579 15.75 7.25 15.4142 7.25 15V9C7.25 8.58579 7.58579 8.25 8 8.25Z" fill="currentColor"/>''',
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
