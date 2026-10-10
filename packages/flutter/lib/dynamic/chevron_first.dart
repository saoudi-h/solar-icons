// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevron-first` icon in every style.
///
/// Prefer the static widgets (e.g. `ChevronFirstLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ChevronFirstIcon extends StatelessWidget {
  /// Creates the `chevron-first` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ChevronFirstIcon({
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
    name: 'chevron-first',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M7.5 4.25C7.91421 4.25 8.25 4.58579 8.25 5V19C8.25 19.4142 7.9142 19.75 7.5 19.75C7.08579 19.75 6.75 19.4142 6.75 19V5C6.75 4.58579 7.08579 4.25 7.5 4.25Z" fill="currentColor"/>
<path d="M15.9307 4.51172C16.2003 4.19737 16.6738 4.16114 16.9883 4.43066C17.3026 4.70025 17.3389 5.17384 17.0693 5.48828L11.4883 12L17.0693 18.5117C17.3389 18.8262 17.3026 19.2997 16.9883 19.5693C16.6738 19.8389 16.2003 19.8026 15.9307 19.4883L9.93066 12.4883C9.68992 12.2074 9.68992 11.7926 9.93066 11.5117L15.9307 4.51172Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'chevron-first',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.25 19C8.25 19.4142 7.9142 19.75 7.5 19.75C7.08579 19.75 6.75 19.4142 6.75 19L6.75 5C6.75 4.58579 7.08579 4.25 7.5 4.25C7.91421 4.25 8.25 4.58579 8.25 5L8.25 19Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.9306 4.51167C16.2002 4.19735 16.6737 4.1611 16.9882 4.43061C17.3024 4.70021 17.3387 5.17382 17.0692 5.48823L11.4882 12L17.0692 18.5117C17.3387 18.8261 17.3025 19.2997 16.9882 19.5693C16.6738 19.8388 16.2002 19.8025 15.9306 19.4882L9.93056 12.4882C9.68981 12.2074 9.68981 11.7925 9.93056 11.5117L15.9306 4.51167Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'chevron-first',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 10.25L10.5 12L16.5 19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15 6.75L16.5 5" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.5 5L7.49998 19.0004" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'chevron-first',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16.5 19L10.5 12L16.5 5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7.5 5L7.49998 19.0004" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'chevron-first',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7.5 5L7.49998 19.0004" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.5 19L10.5 12L16.5 5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'chevron-first',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M7.5 4.25C7.91421 4.25 8.25 4.58579 8.25 5V19C8.25 19.4142 7.9142 19.75 7.5 19.75C7.08579 19.75 6.75 19.4142 6.75 19V5C6.75 4.58579 7.08579 4.25 7.5 4.25Z" fill="currentColor"/>
<path d="M15.9307 4.51172C16.2003 4.19737 16.6738 4.16114 16.9883 4.43066C17.3026 4.70025 17.3389 5.17384 17.0693 5.48828L11.4883 12L17.0693 18.5117C17.3389 18.8262 17.3026 19.2997 16.9883 19.5693C16.6738 19.8389 16.2003 19.8026 15.9307 19.4883L9.93066 12.4883C9.68992 12.2074 9.68992 11.7926 9.93066 11.5117L15.9307 4.51172Z" fill="currentColor"/>''',
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
