// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-sort-vertical` icon in every style.
///
/// Prefer the static widgets (e.g. `RoundSortVerticalLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class RoundSortVerticalIcon extends StatelessWidget {
  /// Creates the `round-sort-vertical` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const RoundSortVerticalIcon({
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
    name: 'round-sort-vertical',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12ZM14.5 7.25C14.7113 7.25 14.9128 7.33914 15.055 7.4955L17.555 10.2455C17.8336 10.552 17.811 11.0263 17.5045 11.305C17.198 11.5836 16.7237 11.561 16.445 11.2545L15.25 9.93996L15.25 16C15.25 16.4142 14.9142 16.75 14.5 16.75C14.0858 16.75 13.75 16.4142 13.75 16V9.93996L12.555 11.2545C12.2763 11.561 11.802 11.5836 11.4955 11.305C11.189 11.0263 11.1664 10.552 11.445 10.2455L13.945 7.4955C14.0872 7.33914 14.2887 7.25 14.5 7.25ZM9.5 7.25C9.91421 7.25 10.25 7.58579 10.25 8V14.06L11.445 12.7455C11.7237 12.439 12.198 12.4164 12.5045 12.695C12.811 12.9737 12.8336 13.448 12.555 13.7545L10.055 16.5045C9.91281 16.6609 9.71131 16.75 9.5 16.75C9.28869 16.75 9.08719 16.6609 8.94504 16.5045L6.44504 13.7545C6.16641 13.448 6.189 12.9737 6.49549 12.695C6.80199 12.4164 7.27632 12.439 7.55495 12.7455L8.75 14.06L8.75 8C8.75 7.58579 9.08579 7.25 9.5 7.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'round-sort-vertical',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.4451 10.2455C11.1664 10.552 11.189 11.0263 11.4955 11.305C11.802 11.5836 12.2763 11.561 12.555 11.2545L13.75 9.93995V16C13.75 16.4142 14.0858 16.75 14.5 16.75C14.9142 16.75 15.25 16.4142 15.25 16V9.93995L16.4451 11.2545C16.7237 11.561 17.198 11.5836 17.5045 11.305C17.811 11.0263 17.8336 10.552 17.555 10.2455L15.055 7.4955C14.9128 7.33914 14.7113 7.25 14.5 7.25C14.2887 7.25 14.0872 7.33914 13.945 7.4955L11.4451 10.2455Z" fill="currentColor"/>
<path d="M7.55496 12.7455C7.27633 12.439 6.80199 12.4164 6.4955 12.695C6.18901 12.9737 6.16642 13.448 6.44505 13.7545L8.94505 16.5045C9.08719 16.6609 9.2887 16.75 9.50001 16.75C9.71131 16.75 9.91282 16.6609 10.055 16.5045L12.555 13.7545C12.8336 13.448 12.811 12.9737 12.5045 12.695C12.198 12.4164 11.7237 12.439 11.4451 12.7455L10.25 14.06V8C10.25 7.58579 9.91422 7.25 9.50001 7.25C9.08579 7.25 8.75001 7.58579 8.75001 8L8.75001 14.06L7.55496 12.7455Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'round-sort-vertical',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.5 8L9.5 16M12 13.25L9.5 16L7 13.25" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.5 16L14.5 8M17 10.75L14.5 8L12 10.75" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'round-sort-vertical',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.5 8L9.5 16M12 13.25L9.5 16L7 13.25" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.5 16L14.5 8M17 10.75L14.5 8L12 10.75" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'round-sort-vertical',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9.5 8L9.5 16M12 13.25L9.5 16L7 13.25" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.5 16L14.5 8M17 10.75L14.5 8L12 10.75" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'round-sort-vertical',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M6.49549 12.695C6.80199 12.4164 7.27632 12.439 7.55495 12.7455L8.75 14.06V8C8.75 7.58579 9.08579 7.25 9.5 7.25C9.91421 7.25 10.25 7.58579 10.25 8V14.06L11.445 12.7455C11.7237 12.439 12.198 12.4164 12.5045 12.695C12.811 12.9737 12.8336 13.448 12.555 13.7545L10.055 16.5045C9.91281 16.6609 9.71131 16.75 9.5 16.75C9.28869 16.75 9.08719 16.6609 8.94504 16.5045L6.44504 13.7545C6.16641 13.448 6.189 12.9737 6.49549 12.695Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.4955 11.305C11.802 11.5836 12.2763 11.561 12.555 11.2545L13.75 9.93995L13.75 16C13.75 16.4142 14.0858 16.75 14.5 16.75C14.9142 16.75 15.25 16.4142 15.25 16L15.25 9.93995L16.445 11.2545C16.7237 11.561 17.198 11.5836 17.5045 11.305C17.811 11.0263 17.8336 10.552 17.555 10.2455L15.055 7.49549C14.9128 7.33914 14.7113 7.25 14.5 7.25C14.2887 7.25 14.0872 7.33914 13.945 7.49549L11.445 10.2455C11.1664 10.552 11.189 11.0263 11.4955 11.305Z" fill="currentColor"/>''',
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
