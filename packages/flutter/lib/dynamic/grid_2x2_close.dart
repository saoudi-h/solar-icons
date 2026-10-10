// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grid-2x2-close` icon in every style.
///
/// Prefer the static widgets (e.g. `Grid2x2CloseLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Grid2x2CloseIcon extends StatelessWidget {
  /// Creates the `grid-2x2-close` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Grid2x2CloseIcon({
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
    name: 'grid-2x2-close',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.25 21.998C7.03168 21.9939 4.84949 21.9198 3.46484 20.5352C2.07966 19.15 2.00504 16.9666 2.00098 12.7451H11.25V21.998Z" fill="currentColor"/>
<path d="M19.0908 14.8486C19.3837 14.5557 19.8595 14.5557 20.1523 14.8486C20.4448 15.1415 20.445 15.6164 20.1523 15.9092L18.5605 17.5L20.1523 19.0908C20.445 19.3836 20.4448 19.8585 20.1523 20.1514C19.8595 20.4443 19.3837 20.4443 19.0908 20.1514L17.5 18.5605L15.9092 20.1514C15.6163 20.4443 15.1415 20.4443 14.8486 20.1514C14.5558 19.8585 14.5558 19.3837 14.8486 19.0908L16.4395 17.5L14.8486 15.9092C14.5558 15.6163 14.5559 15.1415 14.8486 14.8486C15.1415 14.5557 15.6163 14.5557 15.9092 14.8486L17.5 16.4395L19.0908 14.8486Z" fill="currentColor"/>
<path d="M11.25 11.2451H2.00098C2.00514 7.03 2.08073 4.84896 3.46484 3.46484C4.84949 2.08019 7.03168 2.00509 11.25 2.00098V11.2451Z" fill="currentColor"/>
<path d="M12.75 2.00098C16.9683 2.00509 19.1505 2.08019 20.5352 3.46484C21.9193 4.84896 21.9949 7.03 21.999 11.2451H12.75V2.00098Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'grid-2x2-close',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 2.00098V11.2451H21.999C21.9993 11.4898 22 11.7414 22 12C22 12.2552 21.9993 12.5035 21.999 12.7451H12.75V21.998C12.5068 21.9983 12.2569 22 12 22C11.7431 22 11.4932 21.9983 11.25 21.998V12.7451H2.00098C2.00074 12.5035 2 12.2552 2 12C2 11.7414 2.00073 11.4898 2.00098 11.2451H11.25V2.00098C11.4932 2.00074 11.7431 2 12 2C12.2569 2 12.5068 2.00074 12.75 2.00098Z" fill="currentColor"/>
<path d="M19.0908 14.8486C19.3837 14.5557 19.8595 14.5557 20.1523 14.8486C20.4448 15.1415 20.445 15.6164 20.1523 15.9092L18.5605 17.5L20.1523 19.0908C20.445 19.3836 20.4448 19.8585 20.1523 20.1514C19.8595 20.4443 19.3837 20.4443 19.0908 20.1514L17.5 18.5605L15.9092 20.1514C15.6163 20.4443 15.1415 20.4443 14.8486 20.1514C14.5558 19.8585 14.5558 19.3837 14.8486 19.0908L16.4395 17.5L14.8486 15.9092C14.5558 15.6163 14.5559 15.1415 14.8486 14.8486C15.1415 14.5557 15.6163 14.5557 15.9092 14.8486L17.5 16.4395L19.0908 14.8486Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.46447 20.5355C4.92893 22 7.28595 22 12 22L12.0049 11.9951H22C22 7.28433 21.9995 4.92843 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'grid-2x2-close',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15.3786 15.3787L17.5 17.5M17.5 17.5L19.6213 19.6213M17.5 17.5L19.6213 15.3787M17.5 17.5L15.3786 19.6213" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5501 2.08856C15.3375 2 13.8503 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M22.0001 11.9999C22.0001 7.28584 22.0001 4.92882 20.5356 3.46436" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12H10M2 12H6" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0049 22.0049L12.0049 2.00488" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'grid-2x2-close',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22L12 2.00003" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.00488 11.9951L22.0048 11.9951" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.3786 15.3787L17.5 17.5M17.5 17.5L19.6213 19.6213M17.5 17.5L19.6213 15.3787M17.5 17.5L15.3786 19.6213" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'grid-2x2-close',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15.3786 15.3787L17.5 17.5M17.5 17.5L19.6213 19.6213M17.5 17.5L19.6213 15.3787M17.5 17.5L15.3786 19.6213" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22L12 2M2.00488 11.9951H22.0048" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'grid-2x2-close',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C14.3356 1.25 16.1628 1.24817 17.5859 1.43945C19.0307 1.63369 20.1706 2.03976 21.0654 2.93457C21.9602 3.82938 22.3663 4.96933 22.5605 6.41406C22.7494 7.81887 22.749 9.61747 22.749 11.9102C22.7522 11.9381 22.7549 11.9663 22.7549 11.9951C22.7549 12.4093 22.4191 12.7451 22.0049 12.7451H12.75V22C12.75 22.4142 12.4142 22.75 12 22.75C9.66439 22.75 7.83717 22.7518 6.41406 22.5605C4.96933 22.3663 3.82938 21.9602 2.93457 21.0654C2.03976 20.1706 1.63369 19.0307 1.43945 17.5859C1.24817 16.1628 1.25 14.3356 1.25 12C1.25 9.66439 1.24817 7.83717 1.43945 6.41406C1.63369 4.96933 2.03976 3.82938 2.93457 2.93457C3.82938 2.03976 4.96933 1.63369 6.41406 1.43945C7.83717 1.24817 9.66439 1.25 12 1.25ZM2.75098 12.7451C2.75312 14.7413 2.7708 16.2267 2.92676 17.3867C3.09865 18.6649 3.42551 19.4353 3.99512 20.0049C4.56472 20.5745 5.33508 20.9014 6.61328 21.0732C7.77237 21.2291 9.25623 21.2459 11.25 21.248V12.7451H2.75098ZM11.25 2.75098C9.25623 2.75315 7.77237 2.77092 6.61328 2.92676C5.33508 3.09865 4.56472 3.42551 3.99512 3.99512C3.42551 4.56472 3.09865 5.33508 2.92676 6.61328C2.77105 7.77142 2.75317 9.25381 2.75098 11.2451H11.25V2.75098ZM12.75 11.2451H21.249C21.2468 9.25381 21.229 7.77142 21.0732 6.61328C20.9014 5.33508 20.5745 4.56472 20.0049 3.99512C19.4353 3.42551 18.6649 3.09865 17.3867 2.92676C16.2276 2.77092 14.7438 2.75315 12.75 2.75098V11.2451Z" fill="currentColor"/>
<path d="M19.0908 14.8486C19.3837 14.5557 19.8595 14.5557 20.1523 14.8486C20.4448 15.1415 20.445 15.6164 20.1523 15.9092L18.5605 17.5L20.1523 19.0908C20.445 19.3836 20.4448 19.8585 20.1523 20.1514C19.8595 20.4443 19.3837 20.4443 19.0908 20.1514L17.5 18.5605L15.9092 20.1514C15.6163 20.4443 15.1415 20.4443 14.8486 20.1514C14.5558 19.8585 14.5558 19.3837 14.8486 19.0908L16.4395 17.5L14.8486 15.9092C14.5558 15.6163 14.5559 15.1415 14.8486 14.8486C15.1415 14.5557 15.6163 14.5557 15.9092 14.8486L17.5 16.4395L19.0908 14.8486Z" fill="currentColor"/>''',
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
