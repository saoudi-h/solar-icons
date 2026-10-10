// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `record-circle` icon in every style.
///
/// Prefer the static widgets (e.g. `RecordCircleLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class RecordCircleIcon extends StatelessWidget {
  /// Creates the `record-circle` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const RecordCircleIcon({
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
    name: 'record-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M14.25 12C14.25 11.0335 15.0335 10.25 16 10.25C16.9665 10.25 17.75 11.0335 17.75 12C17.75 12.9665 16.9665 13.75 16 13.75C15.0335 13.75 14.25 12.9665 14.25 12Z" fill="currentColor"/>
<path d="M8 13.75C8.9665 13.75 9.75 12.9665 9.75 12C9.75 11.0335 8.9665 10.25 8 10.25C7.0335 10.25 6.25 11.0335 6.25 12C6.25 12.9665 7.0335 13.75 8 13.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22ZM13.2609 13.75C12.9375 13.2449 12.75 12.6443 12.75 12C12.75 10.2051 14.2051 8.75 16 8.75C17.7949 8.75 19.25 10.2051 19.25 12C19.25 13.7949 17.7949 15.25 16 15.25H8C6.20507 15.25 4.75 13.7949 4.75 12C4.75 10.2051 6.20507 8.75 8 8.75C9.79493 8.75 11.25 10.2051 11.25 12C11.25 12.6443 11.0625 13.2449 10.7391 13.75H13.2609Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'record-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.75 12C12.75 12.6443 12.9375 13.2449 13.2609 13.75H10.7391C11.0625 13.2449 11.25 12.6443 11.25 12C11.25 10.2051 9.79493 8.75 8 8.75C6.20507 8.75 4.75 10.2051 4.75 12C4.75 13.7949 6.20507 15.25 8 15.25H16C17.7949 15.25 19.25 13.7949 19.25 12C19.25 10.2051 17.7949 8.75 16 8.75C14.2051 8.75 12.75 10.2051 12.75 12ZM14.25 12C14.25 11.0335 15.0335 10.25 16 10.25C16.9665 10.25 17.75 11.0335 17.75 12C17.75 12.9665 16.9665 13.75 16 13.75C15.0335 13.75 14.25 12.9665 14.25 12ZM9.75 12C9.75 12.9665 8.9665 13.75 8 13.75C7.0335 13.75 6.25 12.9665 6.25 12C6.25 11.0335 7.0335 10.25 8 10.25C8.9665 10.25 9.75 11.0335 9.75 12Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'record-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M18.5002 12C18.5002 13.3807 17.381 14.5 16.0002 14.5C14.6195 14.5 13.5002 13.3807 13.5002 12C13.5002 10.6193 14.6195 9.5 16.0002 9.5C17.381 9.5 18.5002 10.6193 18.5002 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 12C10.5 13.3807 9.38071 14.5 8 14.5C6.61929 14.5 5.5 13.3807 5.5 12C5.5 10.6193 6.61929 9.5 8 9.5C9.38071 9.5 10.5 10.6193 10.5 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 14.5H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'record-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18.5 12C18.5 13.3807 17.3807 14.5 16 14.5C14.6193 14.5 13.5 13.3807 13.5 12C13.5 10.6193 14.6193 9.5 16 9.5C17.3807 9.5 18.5 10.6193 18.5 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 12C10.5 13.3807 9.38071 14.5 8 14.5C6.61929 14.5 5.5 13.3807 5.5 12C5.5 10.6193 6.61929 9.5 8 9.5C9.38071 9.5 10.5 10.6193 10.5 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 14.5H16" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'record-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M18.5002 12C18.5002 13.3807 17.381 14.5 16.0002 14.5C14.6195 14.5 13.5002 13.3807 13.5002 12C13.5002 10.6193 14.6195 9.5 16.0002 9.5C17.381 9.5 18.5002 10.6193 18.5002 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 12C10.5 13.3807 9.38071 14.5 8 14.5C6.61929 14.5 5.5 13.3807 5.5 12C5.5 10.6193 6.61929 9.5 8 9.5C9.38071 9.5 10.5 10.6193 10.5 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 14.5H16" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'record-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M13.2609 13.75C12.9375 13.2449 12.75 12.6443 12.75 12C12.75 10.2051 14.2051 8.75 16 8.75C17.7949 8.75 19.25 10.2051 19.25 12C19.25 13.7949 17.7949 15.25 16 15.25H8C6.20507 15.25 4.75 13.7949 4.75 12C4.75 10.2051 6.20507 8.75 8 8.75C9.79493 8.75 11.25 10.2051 11.25 12C11.25 12.6443 11.0625 13.2449 10.7391 13.75H13.2609ZM14.25 12C14.25 11.0335 15.0335 10.25 16 10.25C16.9665 10.25 17.75 11.0335 17.75 12C17.75 12.9665 16.9665 13.75 16 13.75C15.0335 13.75 14.25 12.9665 14.25 12ZM8 13.75C8.9665 13.75 9.75 12.9665 9.75 12C9.75 11.0335 8.9665 10.25 8 10.25C7.0335 10.25 6.25 11.0335 6.25 12C6.25 12.9665 7.0335 13.75 8 13.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25ZM2.75 12C2.75 6.89137 6.89137 2.75 12 2.75C17.1086 2.75 21.25 6.89137 21.25 12C21.25 17.1086 17.1086 21.25 12 21.25C6.89137 21.25 2.75 17.1086 2.75 12Z" fill="currentColor"/>''',
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
