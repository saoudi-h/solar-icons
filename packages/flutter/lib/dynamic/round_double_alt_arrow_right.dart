// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-double-alt-arrow-right` icon in every style.
///
/// Prefer the static widgets (e.g. `RoundDoubleAltArrowRightLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class RoundDoubleAltArrowRightIcon extends StatelessWidget {
  /// Creates the `round-double-alt-arrow-right` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const RoundDoubleAltArrowRightIcon({
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
    name: 'round-double-alt-arrow-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12ZM13.0303 8.46967C12.7374 8.17678 12.2626 8.17678 11.9697 8.46967C11.6768 8.76256 11.6768 9.23744 11.9697 9.53033L14.4393 12L11.9697 14.4697C11.6768 14.7626 11.6768 15.2374 11.9697 15.5303C12.2626 15.8232 12.7374 15.8232 13.0303 15.5303L16.0303 12.5303C16.3232 12.2374 16.3232 11.7626 16.0303 11.4697L13.0303 8.46967ZM7.96967 8.46967C8.26256 8.17678 8.73744 8.17678 9.03033 8.46967L12.0303 11.4697C12.3232 11.7626 12.3232 12.2374 12.0303 12.5303L9.03033 15.5303C8.73744 15.8232 8.26256 15.8232 7.96967 15.5303C7.67678 15.2374 7.67678 14.7626 7.96967 14.4697L10.4393 12L7.96967 9.53033C7.67678 9.23744 7.67678 8.76256 7.96967 8.46967Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'round-double-alt-arrow-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.03033 15.5303C8.73744 15.8232 8.26256 15.8232 7.96967 15.5303C7.67678 15.2374 7.67678 14.7626 7.96967 14.4697L10.4393 12L7.96967 9.53033C7.67678 9.23744 7.67678 8.76256 7.96967 8.46967C8.26256 8.17678 8.73744 8.17678 9.03033 8.46967L12.0303 11.4697C12.3232 11.7626 12.3232 12.2374 12.0303 12.5303L9.03033 15.5303Z" fill="currentColor"/>
<path d="M13.0303 15.5303C12.7374 15.8232 12.2626 15.8232 11.9697 15.5303C11.6768 15.2374 11.6768 14.7626 11.9697 14.4697L14.4393 12L11.9697 9.53033C11.6768 9.23744 11.6768 8.76256 11.9697 8.46967C12.2626 8.17678 12.7374 8.17678 13.0303 8.46967L16.0303 11.4697C16.3232 11.7626 16.3232 12.2374 16.0303 12.5303L13.0303 15.5303Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'round-double-alt-arrow-right',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8.5 9L11.5 12L8.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.5 9L15.5 12L12.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'round-double-alt-arrow-right',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 9L11.5 12L8.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.5 9L15.5 12L12.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'round-double-alt-arrow-right',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8.5 9L11.5 12L8.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.5 9L15.5 12L12.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'round-double-alt-arrow-right',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM7.96967 8.46967C8.26256 8.17678 8.73744 8.17678 9.03033 8.46967L12.0303 11.4697C12.3232 11.7626 12.3232 12.2374 12.0303 12.5303L9.03033 15.5303C8.73744 15.8232 8.26256 15.8232 7.96967 15.5303C7.67678 15.2374 7.67678 14.7626 7.96967 14.4697L10.4393 12L7.96967 9.53033C7.67678 9.23744 7.67678 8.76256 7.96967 8.46967ZM11.9697 8.46967C12.2626 8.17678 12.7374 8.17678 13.0303 8.46967L16.0303 11.4697C16.3232 11.7626 16.3232 12.2374 16.0303 12.5303L13.0303 15.5303C12.7374 15.8232 12.2626 15.8232 11.9697 15.5303C11.6768 15.2374 11.6768 14.7626 11.9697 14.4697L14.4393 12L11.9697 9.53033C11.6768 9.23744 11.6768 8.76256 11.9697 8.46967Z" fill="currentColor"/>''',
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
