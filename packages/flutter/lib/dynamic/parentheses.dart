// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `parentheses` icon in every style.
///
/// Prefer the static widgets (e.g. `ParenthesesLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ParenthesesIcon extends StatelessWidget {
  /// Creates the `parentheses` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ParenthesesIcon({
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
    name: 'parentheses',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8.625 1.35061C8.98369 1.14353 9.44229 1.26636 9.64941 1.62502C9.85651 1.98372 9.73367 2.44231 9.375 2.64944C6.54195 4.2851 3.75002 7.64306 3.75 12C3.75 16.357 6.54195 19.7149 9.375 21.3506C9.73368 21.5577 9.85649 22.0163 9.64941 22.375C9.4423 22.7337 8.9837 22.8565 8.625 22.6494C5.45807 20.821 2.25 17.0279 2.25 12C2.25002 6.97212 5.45808 3.17905 8.625 1.35061Z" fill="currentColor"/>
<path d="M14.3506 1.62502C14.5577 1.26636 15.0163 1.14355 15.375 1.35061C18.5419 3.17905 21.75 6.97212 21.75 12C21.75 17.0279 18.5419 20.821 15.375 22.6494C15.0163 22.8565 14.5577 22.7337 14.3506 22.375C14.1435 22.0163 14.2663 21.5577 14.625 21.3506C17.4581 19.7149 20.25 16.357 20.25 12C20.25 7.64306 17.458 4.2851 14.625 2.64944C14.2663 2.44231 14.1435 1.98371 14.3506 1.62502Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'parentheses',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.75 12C21.75 6.97211 18.5419 3.17907 15.375 1.35062C15.0163 1.14352 14.5577 1.26635 14.3506 1.62504C14.1435 1.98374 14.2663 2.44233 14.625 2.64945C17.4581 4.28511 20.25 7.64305 20.25 12C20.25 16.357 17.4581 19.715 14.625 21.3506C14.2663 21.5577 14.1435 22.0163 14.3506 22.375C14.5577 22.7337 15.0163 22.8565 15.375 22.6495C18.5419 20.821 21.75 17.028 21.75 12Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.25 12C2.25 6.97211 5.45807 3.17907 8.625 1.35062C8.9837 1.14352 9.4423 1.26635 9.64941 1.62504C9.85651 1.98374 9.73368 2.44233 9.375 2.64945C6.54195 4.28511 3.75 7.64305 3.75 12C3.75 16.357 6.54195 19.715 9.375 21.3506C9.73368 21.5577 9.85651 22.0163 9.64941 22.375C9.4423 22.7337 8.9837 22.8565 8.625 22.6495C5.45807 20.821 2.25 17.028 2.25 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'parentheses',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 22C6 20.268 3 16.6925 3 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.2229 7C5.37375 4.76691 7.18685 3.04679 8.99994 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 22C18 20.268 21 16.6925 21 12C21 7.30754 18 3.73205 15 2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'parentheses',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9 22C6 20.268 3 16.6925 3 12C3 7.30754 6 3.73205 9 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 22C18 20.268 21 16.6925 21 12C21 7.30754 18 3.73205 15 2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'parentheses',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15 22C18 20.268 21 16.6925 21 12C21 7.30754 18 3.73205 15 2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 22C6 20.268 3 16.6925 3 12C3 7.30754 6 3.73205 9 2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'parentheses',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M8.625 1.35061C8.98369 1.14353 9.44229 1.26636 9.64941 1.62502C9.85651 1.98372 9.73367 2.44231 9.375 2.64944C6.54195 4.2851 3.75002 7.64306 3.75 12C3.75 16.357 6.54195 19.7149 9.375 21.3506C9.73368 21.5577 9.85649 22.0163 9.64941 22.375C9.4423 22.7337 8.9837 22.8565 8.625 22.6494C5.45807 20.821 2.25 17.0279 2.25 12C2.25002 6.97212 5.45808 3.17905 8.625 1.35061Z" fill="currentColor"/>
<path d="M14.3506 1.62502C14.5577 1.26636 15.0163 1.14355 15.375 1.35061C18.5419 3.17905 21.75 6.97212 21.75 12C21.75 17.0279 18.5419 20.821 15.375 22.6494C15.0163 22.8565 14.5577 22.7337 14.3506 22.375C14.1435 22.0163 14.2663 21.5577 14.625 21.3506C17.4581 19.7149 20.25 16.357 20.25 12C20.25 7.64306 17.458 4.2851 14.625 2.64944C14.2663 2.44231 14.1435 1.98371 14.3506 1.62502Z" fill="currentColor"/>''',
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
