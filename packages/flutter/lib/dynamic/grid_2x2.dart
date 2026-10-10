// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grid-2x2` icon in every style.
///
/// Prefer the static widgets (e.g. `Grid2x2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Grid2x2Icon extends StatelessWidget {
  /// Creates the `grid-2x2` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Grid2x2Icon({
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
    name: 'grid-2x2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.25 12.7451V21.998C7.03168 21.9939 4.84949 21.9198 3.46484 20.5352C2.07966 19.15 2.00504 16.9666 2.00098 12.7451H11.25Z" fill="currentColor"/>
<path d="M21.999 12.7451C21.995 16.9666 21.9203 19.15 20.5352 20.5352C19.1505 21.9198 16.9683 21.9939 12.75 21.998V12.7451H21.999Z" fill="currentColor"/>
<path d="M12.75 2.00098C16.9683 2.00509 19.1505 2.08019 20.5352 3.46484C21.9193 4.84896 21.9949 7.03 21.999 11.2451H12.75V2.00098Z" fill="currentColor"/>
<path d="M11.25 11.2451H2.00098C2.00514 7.03 2.08073 4.84896 3.46484 3.46484C4.84949 2.08019 7.03168 2.00509 11.25 2.00098V11.2451Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'grid-2x2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 2.00098V11.2451H21.999C21.9993 11.4898 22 11.7414 22 12C22 12.2552 21.9993 12.5035 21.999 12.7451H12.75V21.998C12.5068 21.9983 12.2569 22 12 22C11.7431 22 11.4932 21.9983 11.25 21.998V12.7451H2.00098C2.00074 12.5035 2 12.2552 2 12C2 11.7414 2.00073 11.4898 2.00098 11.2451H11.25V2.00098C11.4932 2.00074 11.7431 2 12 2C12.2569 2 12.5068 2.00074 12.75 2.00098Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'grid-2x2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 22L12 2.00003" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C21.5093 4.43821 21.8356 5.80655 21.9449 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12H10M2 12H6" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'grid-2x2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22L12 2.00003" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.00488 11.9951L22.0048 11.9951" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'grid-2x2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22L12 2M2.00488 11.9951H22.0048" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'grid-2x2',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12 1.25C14.3356 1.25 16.1628 1.24817 17.5859 1.43945C19.0307 1.63369 20.1706 2.03976 21.0654 2.93457C21.9602 3.82938 22.3663 4.96933 22.5605 6.41406C22.7494 7.81887 22.749 9.61747 22.749 11.9102C22.7522 11.9381 22.7549 11.9663 22.7549 11.9951C22.7549 12.0236 22.7521 12.0515 22.749 12.0791C22.749 14.3769 22.7497 16.1789 22.5605 17.5859C22.3663 19.0307 21.9602 20.1706 21.0654 21.0654C20.1706 21.9602 19.0307 22.3663 17.5859 22.5605C16.1628 22.7518 14.3356 22.75 12 22.75C9.66439 22.75 7.83717 22.7518 6.41406 22.5605C4.96933 22.3663 3.82938 21.9602 2.93457 21.0654C2.03976 20.1706 1.63369 19.0307 1.43945 17.5859C1.24817 16.1628 1.25 14.3356 1.25 12C1.25 9.66439 1.24817 7.83717 1.43945 6.41406C1.63369 4.96933 2.03976 3.82938 2.93457 2.93457C3.82938 2.03976 4.96933 1.63369 6.41406 1.43945C7.83717 1.24817 9.66439 1.25 12 1.25ZM2.75098 12.7451C2.75312 14.7413 2.7708 16.2267 2.92676 17.3867C3.09865 18.6649 3.42551 19.4353 3.99512 20.0049C4.56472 20.5745 5.33508 20.9014 6.61328 21.0732C7.77237 21.2291 9.25623 21.2459 11.25 21.248V12.7451H2.75098ZM12.75 12.7451V21.248C14.7438 21.2459 16.2276 21.2291 17.3867 21.0732C18.6649 20.9014 19.4353 20.5745 20.0049 20.0049C20.5745 19.4353 20.9014 18.6649 21.0732 17.3867C21.2292 16.2267 21.2469 14.7413 21.249 12.7451H12.75ZM11.25 2.75098C9.25623 2.75315 7.77237 2.77092 6.61328 2.92676C5.33508 3.09865 4.56472 3.42551 3.99512 3.99512C3.42551 4.56472 3.09865 5.33508 2.92676 6.61328C2.77105 7.77142 2.75317 9.25381 2.75098 11.2451H11.25V2.75098ZM12.75 11.2451H21.249C21.2468 9.25381 21.229 7.77142 21.0732 6.61328C20.9014 5.33508 20.5745 4.56472 20.0049 3.99512C19.4353 3.42551 18.6649 3.09865 17.3867 2.92676C16.2276 2.77092 14.7438 2.75315 12.75 2.75098V11.2451Z" fill="currentColor"/>''',
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
