// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-down-from-line` icon in every style.
///
/// Prefer the static widgets (e.g. `ArrowDownFromLineLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ArrowDownFromLineIcon extends StatelessWidget {
  /// Creates the `arrow-down-from-line` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ArrowDownFromLineIcon({
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
    name: 'arrow-down-from-line',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 7.25C12.4142 7.25 12.75 7.58579 12.75 8V19.0684L15.4463 16.1191C15.7257 15.8135 16.2002 15.792 16.5059 16.0713C16.8115 16.3507 16.833 16.8252 16.5537 17.1309L12.5537 21.5059C12.4116 21.6613 12.2106 21.75 12 21.75C11.7894 21.75 11.5884 21.6613 11.4463 21.5059L7.44629 17.1309C7.167 16.8252 7.18851 16.3507 7.49414 16.0713C7.79985 15.792 8.27428 15.8135 8.55371 16.1191L11.25 19.0684V8C11.25 7.58579 11.5858 7.25 12 7.25Z" fill="currentColor"/>
<path d="M20 2.25C20.4142 2.25 20.75 2.58579 20.75 3C20.75 3.41421 20.4142 3.75 20 3.75H4C3.58579 3.75 3.25 3.41421 3.25 3C3.25 2.58579 3.58579 2.25 4 2.25H20Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'arrow-down-from-line',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20 3.75C20.4142 3.75 20.75 3.41421 20.75 3C20.75 2.58579 20.4142 2.25 20 2.25L4 2.25C3.58579 2.25 3.25 2.58579 3.25 3C3.25 3.41421 3.58579 3.75 4 3.75L20 3.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.7501 8L12.7501 19.0684L15.4464 16.1191C15.7258 15.8135 16.2002 15.792 16.506 16.0713C16.8116 16.3507 16.8331 16.8252 16.5538 17.1309L12.5538 21.5059C12.4117 21.6613 12.2107 21.75 12.0001 21.75C11.7895 21.75 11.5885 21.6613 11.4464 21.5059L7.44639 17.1309C7.16709 16.8251 7.18861 16.3507 7.49424 16.0713C7.79995 15.792 8.27437 15.8135 8.55381 16.1191L11.2501 19.0684L11.2501 8C11.2501 7.58579 11.5859 7.25 12.0001 7.25C12.4143 7.25 12.7501 7.58579 12.7501 8Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'arrow-down-from-line',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 3L16 3M12 3L4 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 8L12 21M16 16.625L12 21L8 16.625" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'arrow-down-from-line',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20 3L4 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 8L12 21M16 16.625L12 21L8 16.625" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'arrow-down-from-line',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M20 3L4 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 8L12 21M16 16.625L12 21L8 16.625" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'arrow-down-from-line',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12 7.25C12.4142 7.25 12.75 7.58579 12.75 8V19.0684L15.4463 16.1191C15.7257 15.8135 16.2002 15.792 16.5059 16.0713C16.8115 16.3507 16.833 16.8252 16.5537 17.1309L12.5537 21.5059C12.4116 21.6613 12.2106 21.75 12 21.75C11.7894 21.75 11.5884 21.6613 11.4463 21.5059L7.44629 17.1309C7.167 16.8252 7.18851 16.3507 7.49414 16.0713C7.79985 15.792 8.27428 15.8135 8.55371 16.1191L11.25 19.0684V8C11.25 7.58579 11.5858 7.25 12 7.25Z" fill="currentColor"/>
<path d="M20 2.25C20.4142 2.25 20.75 2.58579 20.75 3C20.75 3.41421 20.4142 3.75 20 3.75H4C3.58579 3.75 3.25 3.41421 3.25 3C3.25 2.58579 3.58579 2.25 4 2.25H20Z" fill="currentColor"/>''',
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
