// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `record-minimalistic` icon in every style.
///
/// Prefer the static widgets (e.g. `RecordMinimalisticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class RecordMinimalisticIcon extends StatelessWidget {
  /// Creates the `record-minimalistic` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const RecordMinimalisticIcon({
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
    name: 'record-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.88889 16C3.74111 16 2 14.2091 2 12C2 9.79086 3.74111 8 5.88889 8C8.03666 8 9.77778 9.79086 9.77778 12C9.77778 12.8499 9.5201 13.6378 9.08073 14.2857H14.9193C14.4799 13.6378 14.2222 12.8499 14.2222 12C14.2222 9.79086 15.9633 8 18.1111 8C20.2589 8 22 9.79086 22 12C22 14.2091 20.2589 16 18.1111 16H5.88889Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'record-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M22 12C22 14.2091 20.2091 16 18 16C15.7909 16 14 14.2091 14 12C14 9.79086 15.7909 8 18 8C20.2091 8 22 9.79086 22 12Z" fill="currentColor"/>
<path d="M10 12C10 14.2091 8.20914 16 6 16C3.79086 16 2 14.2091 2 12C2 9.79086 3.79086 8 6 8C8.20914 8 10 9.79086 10 12Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M6 16H18C16.9856 16 16.0593 15.6224 15.3542 15H8.64582C7.94069 15.6224 7.01445 16 6 16Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'record-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21 11.5C21 13.433 19.433 15 17.5 15C15.567 15 14 13.433 14 11.5C14 9.567 15.567 8 17.5 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 11.5C10 13.433 8.433 15 6.5 15C4.567 15 3 13.433 3 11.5C3 9.567 4.567 8 6.5 8C8.433 8 10 9.567 10 11.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.5 15H17.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'record-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 12C22 14.2091 20.2091 16 18 16C15.7909 16 14 14.2091 14 12C14 9.79086 15.7909 8 18 8C20.2091 8 22 9.79086 22 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 12C10 14.2091 8.20914 16 6 16C3.79086 16 2 14.2091 2 12C2 9.79086 3.79086 8 6 8C8.20914 8 10 9.79086 10 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 16H18" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'record-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21 11.5C21 13.433 19.433 15 17.5 15C15.567 15 14 13.433 14 11.5C14 9.567 15.567 8 17.5 8C19.433 8 21 9.567 21 11.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 11.5C10 13.433 8.433 15 6.5 15C4.567 15 3 13.433 3 11.5C3 9.567 4.567 8 6.5 8C8.433 8 10 9.567 10 11.5Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6.5 15H17.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'record-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.46412 15.25C10.2616 14.4003 10.75 13.2572 10.75 12C10.75 9.37665 8.62335 7.25 6 7.25C3.37665 7.25 1.25 9.37665 1.25 12C1.25 14.6234 3.37665 16.75 6 16.75H18C20.6234 16.75 22.75 14.6234 22.75 12C22.75 9.37665 20.6234 7.25 18 7.25C15.3766 7.25 13.25 9.37665 13.25 12C13.25 13.2572 13.7384 14.4003 14.5359 15.25H9.46412ZM6 8.75C4.20507 8.75 2.75 10.2051 2.75 12C2.75 13.7949 4.20507 15.25 6 15.25C7.79493 15.25 9.25 13.7949 9.25 12C9.25 10.2051 7.79493 8.75 6 8.75ZM18 15.25C19.7949 15.25 21.25 13.7949 21.25 12C21.25 10.2051 19.7949 8.75 18 8.75C16.2051 8.75 14.75 10.2051 14.75 12C14.75 13.7949 16.2051 15.25 18 15.25Z" fill="currentColor"/>''',
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
