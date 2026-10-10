// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `women` icon in every style.
///
/// Prefer the static widgets (e.g. `WomenLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class WomenIcon extends StatelessWidget {
  /// Creates the `women` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const WomenIcon({
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
    name: 'women',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.7497 15.9603C16.2632 15.5862 19 12.6127 19 9C19 5.13401 15.866 2 12 2C8.13401 2 5 5.13401 5 9C5 12.6125 7.73654 15.5859 11.2497 15.9603V17.75H9.5C9.08579 17.75 8.75 18.0858 8.75 18.5C8.75 18.9142 9.08579 19.25 9.5 19.25H11.2498L11.25 22.0001C11.25 22.4143 11.5858 22.75 12.0001 22.75C12.4143 22.75 12.75 22.4142 12.75 21.9999L12.7498 19.25H14.5C14.9142 19.25 15.25 18.9142 15.25 18.5C15.25 18.0858 14.9142 17.75 14.5 17.75H12.7497V15.9603Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'women',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.25 15.96V17.7497H9.5C9.08579 17.7497 8.75 18.0855 8.75 18.4997C8.75 18.9139 9.08579 19.2497 9.5 19.2497H11.25V21.9997C11.25 22.4139 11.5858 22.7497 12 22.7497C12.4142 22.7497 12.75 22.4139 12.75 21.9997V19.2497H14.5C14.9142 19.2497 15.25 18.9139 15.25 18.4997C15.25 18.0855 14.9142 17.7497 14.5 17.7497L12.75 17.7497V15.96C12.5036 15.9862 12.2534 15.9997 12 15.9997C11.7466 15.9997 11.4964 15.9862 11.25 15.96Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="9" r="7" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'women',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M11.9997 16V18.5M11.9997 18.5H9.5M11.9997 18.5H14.5M11.9997 18.5L12 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8.5 2.93648C9.52961 2.34088 10.725 2 12 2C15.866 2 19 5.13401 19 9C19 12.866 15.866 16 12 16C8.13401 16 5 12.866 5 9C5 7.72499 5.34088 6.52961 5.93648 5.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'women',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M11.9997 16V18.5M11.9997 18.5H9.5M11.9997 18.5H14.5M11.9997 18.5L12 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 9C19 12.866 15.866 16 12 16C8.13401 16 5 12.866 5 9C5 5.13401 8.13401 2 12 2C15.866 2 19 5.13401 19 9Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'women',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M19 9C19 12.866 15.866 16 12 16C8.13401 16 5 12.866 5 9C5 5.13401 8.13401 2 12 2C15.866 2 19 5.13401 19 9Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.9997 16V18.5M11.9997 18.5H9.5M11.9997 18.5H14.5M11.9997 18.5L12 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'women',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C8.54822 2.75 5.75 5.54822 5.75 9C5.75 12.4518 8.54802 15.25 11.9998 15.25C15.4516 15.25 18.25 12.4517 18.25 9C18.25 5.54822 15.4518 2.75 12 2.75ZM4.25 9C4.25 4.71979 7.71979 1.25 12 1.25C16.2802 1.25 19.75 4.71979 19.75 9C19.75 13.0272 16.6781 16.337 12.7498 16.7142V17.75H14.5C14.9142 17.75 15.25 18.0858 15.25 18.5C15.25 18.9142 14.9142 19.25 14.5 19.25H12.7498L12.75 21.9999C12.7501 22.4142 12.4143 22.75 12.0001 22.75C11.5859 22.75 11.2501 22.4143 11.25 22.0001L11.2498 19.25H9.50003C9.08582 19.25 8.75003 18.9142 8.75003 18.5C8.75003 18.0858 9.08582 17.75 9.50003 17.75H11.2498V16.7142C7.32147 16.3369 4.25 13.0272 4.25 9Z" fill="currentColor"/>''',
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
