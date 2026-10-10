// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `text-selection` icon in every style.
///
/// Prefer the static widgets (e.g. `TextSelectionLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class TextSelectionIcon extends StatelessWidget {
  /// Creates the `text-selection` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const TextSelectionIcon({
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
    name: 'text-selection',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.25 9C8.25 8.58579 8.58579 8.25 9 8.25H15C15.4142 8.25 15.75 8.58579 15.75 9C15.75 9.41421 15.4142 9.75 15 9.75H12.75V15C12.75 15.4142 12.4142 15.75 12 15.75C11.5858 15.75 11.25 15.4142 11.25 15V9.75H9C8.58579 9.75 8.25 9.41421 8.25 9Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M5.85986 3.26307C5.56645 2.5232 4.84432 2 4 2C2.89543 2 2 2.89543 2 4C2 4.84433 2.5232 5.56645 3.26307 5.85986C3.25449 5.90526 3.25 5.9521 3.25 6L3.25 18C3.25 18.0479 3.25449 18.0947 3.26307 18.1401C2.5232 18.4335 2 19.1557 2 20C2 21.1046 2.89543 22 4 22C4.84433 22 5.56645 21.4768 5.85986 20.7369C5.90526 20.7455 5.9521 20.75 6 20.75H18C18.0479 20.75 18.0947 20.7455 18.1401 20.7369C18.4335 21.4768 19.1557 22 20 22C21.1046 22 22 21.1046 22 20C22 19.1557 21.4768 18.4335 20.7369 18.1401C20.7455 18.0947 20.75 18.0479 20.75 18L20.75 6C20.75 5.9521 20.7455 5.90526 20.7369 5.85986C21.4768 5.56645 22 4.84433 22 4C22 2.89543 21.1046 2 20 2C19.1557 2 18.4335 2.5232 18.1401 3.26307C18.0947 3.25449 18.0479 3.25 18 3.25H6C5.9521 3.25 5.90526 3.25449 5.85986 3.26307ZM4.73693 5.85986C4.74551 5.90526 4.75 5.9521 4.75 6L4.75 18C4.75 18.0479 4.74551 18.0947 4.73693 18.1401C5.24875 18.3431 5.65689 18.7512 5.85986 19.2631C5.90526 19.2545 5.9521 19.25 6 19.25H18C18.0479 19.25 18.0947 19.2545 18.1401 19.2631C18.3431 18.7512 18.7512 18.3431 19.2631 18.1401C19.2545 18.0947 19.25 18.0479 19.25 18V6C19.25 5.9521 19.2545 5.90526 19.2631 5.85986C18.7512 5.65689 18.3431 5.24875 18.1401 4.73693C18.0947 4.74551 18.0479 4.75 18 4.75H6C5.9521 4.75 5.90526 4.74551 5.85986 4.73693C5.65689 5.24875 5.24875 5.65689 4.73693 5.85986Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'text-selection',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M4 18C5.10457 18 6 18.8954 6 20C6 21.1046 5.10457 22 4 22C2.89543 22 2 21.1046 2 20C2 18.8954 2.89543 18 4 18Z" fill="currentColor"/>
<path d="M20 18C21.1046 18 22 18.8954 22 20C22 21.1046 21.1046 22 20 22C18.8954 22 18 21.1046 18 20C18 18.8954 18.8954 18 20 18Z" fill="currentColor"/>
<path d="M15 8.25C15.4142 8.25 15.75 8.58579 15.75 9C15.75 9.41421 15.4142 9.75 15 9.75H12.75V15C12.75 15.4142 12.4142 15.75 12 15.75C11.5858 15.75 11.25 15.4142 11.25 15V9.75H9C8.58579 9.75 8.25 9.41421 8.25 9C8.25 8.58579 8.58579 8.25 9 8.25H15Z" fill="currentColor"/>
<path d="M4 2C5.10457 2 6 2.89543 6 4C6 5.10457 5.10457 6 4 6C2.89543 6 2 5.10457 2 4C2 2.89543 2.89543 2 4 2Z" fill="currentColor"/>
<path d="M20 2C21.1046 2 22 2.89543 22 4C22 5.10457 21.1046 6 20 6C18.8954 6 18 5.10457 18 4C18 2.89543 18.8954 2 20 2Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M4.75 5.85462C4.51839 5.94837 4.26523 6 4 6C3.73477 6 3.48161 5.94837 3.25 5.85462V18.1454C3.48161 18.0516 3.73477 18 4 18C4.26523 18 4.51839 18.0516 4.75 18.1454V5.85462Z" fill="currentColor"/>
<path d="M5.85462 4.75H18.1454C18.0516 4.51839 18 4.26523 18 4C18 3.73477 18.0516 3.48161 18.1454 3.25H5.85462C5.94837 3.48161 6 3.73477 6 4C6 4.26523 5.94837 4.51839 5.85462 4.75Z" fill="currentColor"/>
<path d="M19.25 5.85462C19.4816 5.94837 19.7348 6 20 6C20.2652 6 20.5184 5.94837 20.75 5.85462V18.1454C20.5184 18.0516 20.2652 18 20 18C19.7348 18 19.4816 18.0516 19.25 18.1454V5.85462Z" fill="currentColor"/>
<path d="M18.1454 19.25H5.85462C5.94837 19.4816 6 19.7348 6 20C6 20.2652 5.94837 20.5184 5.85462 20.75H18.1454C18.0516 20.5184 18 20.2652 18 20C18 19.7348 18.0516 19.4816 18.1454 19.25Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'text-selection',
    style: SolarIconStyle.broken,
    body: r'''<path d="M9 9H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 15L12 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 4C6 5.10457 5.10457 6 4 6C2.89543 6 2 5.10457 2 4C2 2.89543 2.89543 2 4 2C5.10457 2 6 2.89543 6 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 20C6 21.1046 5.10457 22 4 22C2.89543 22 2 21.1046 2 20C2 18.8954 2.89543 18 4 18C5.10457 18 6 18.8954 6 20Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 4C22 5.10457 21.1046 6 20 6C18.8954 6 18 5.10457 18 4C18 2.89543 18.8954 2 20 2C21.1046 2 22 2.89543 22 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 20C22 21.1046 21.1046 22 20 22C18.8954 22 18 21.1046 18 20C18 18.8954 18.8954 18 20 18C21.1046 18 22 18.8954 22 20Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 4H6" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 18L20 12M20 6V8" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 20L12 20M6 20L8 20" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 6L4 18" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'text-selection',
    style: SolarIconStyle.linear,
    body: r'''<path d="M9 9H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 15L12 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 4C6 5.10457 5.10457 6 4 6C2.89543 6 2 5.10457 2 4C2 2.89543 2.89543 2 4 2C5.10457 2 6 2.89543 6 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 20C6 21.1046 5.10457 22 4 22C2.89543 22 2 21.1046 2 20C2 18.8954 2.89543 18 4 18C5.10457 18 6 18.8954 6 20Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 4C22 5.10457 21.1046 6 20 6C18.8954 6 18 5.10457 18 4C18 2.89543 18.8954 2 20 2C21.1046 2 22 2.89543 22 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 20C22 21.1046 21.1046 22 20 22C18.8954 22 18 21.1046 18 20C18 18.8954 18.8954 18 20 18C21.1046 18 22 18.8954 22 20Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 20H18" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 4H6" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 18L20 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 6L4 18" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'text-selection',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M9 9H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 15L12 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 4C6 5.10457 5.10457 6 4 6C2.89543 6 2 5.10457 2 4C2 2.89543 2.89543 2 4 2C5.10457 2 6 2.89543 6 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 20C6 21.1046 5.10457 22 4 22C2.89543 22 2 21.1046 2 20C2 18.8954 2.89543 18 4 18C5.10457 18 6 18.8954 6 20Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 4C22 5.10457 21.1046 6 20 6C18.8954 6 18 5.10457 18 4C18 2.89543 18.8954 2 20 2C21.1046 2 22 2.89543 22 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 20C22 21.1046 21.1046 22 20 22C18.8954 22 18 21.1046 18 20C18 18.8954 18.8954 18 20 18C21.1046 18 22 18.8954 22 20Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6 20H18" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M18 4H6" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20 18L20 6" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M4 6L4 18" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'text-selection',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M9 8.25C8.58579 8.25 8.25 8.58579 8.25 9C8.25 9.41421 8.58579 9.75 9 9.75H11.25L11.25 15C11.25 15.4142 11.5858 15.75 12 15.75C12.4142 15.75 12.75 15.4142 12.75 15L12.75 9.75H15C15.4142 9.75 15.75 9.41421 15.75 9C15.75 8.58579 15.4142 8.25 15 8.25H9Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M3.25 6.64648C2.09575 6.32002 1.25 5.25878 1.25 4C1.25 2.48122 2.48122 1.25 4 1.25C5.25878 1.25 6.32002 2.09575 6.64648 3.25H17.3535C17.68 2.09575 18.7412 1.25 20 1.25C21.5188 1.25 22.75 2.48122 22.75 4C22.75 5.25878 21.9043 6.32002 20.75 6.64648V17.3535C21.9043 17.68 22.75 18.7412 22.75 20C22.75 21.5188 21.5188 22.75 20 22.75C18.7412 22.75 17.68 21.9043 17.3535 20.75H6.64648C6.32002 21.9043 5.25878 22.75 4 22.75C2.48122 22.75 1.25 21.5188 1.25 20C1.25 18.7412 2.09575 17.68 3.25 17.3535L3.25 6.64648ZM4 2.75C3.30964 2.75 2.75 3.30964 2.75 4C2.75 4.69036 3.30964 5.25 4 5.25C4.69036 5.25 5.25 4.69036 5.25 4C5.25 3.30964 4.69036 2.75 4 2.75ZM4.75 17.3535L4.75 6.64648C5.66584 6.38745 6.38745 5.66584 6.64648 4.75H17.3535C17.6125 5.66584 18.3342 6.38745 19.25 6.64648V17.3535C18.3342 17.6125 17.6125 18.3342 17.3535 19.25H6.64648C6.38745 18.3342 5.66584 17.6125 4.75 17.3535ZM4 18.75C3.30964 18.75 2.75 19.3096 2.75 20C2.75 20.6904 3.30964 21.25 4 21.25C4.69036 21.25 5.25 20.6904 5.25 20C5.25 19.3096 4.69036 18.75 4 18.75ZM21.25 4C21.25 4.69036 20.6904 5.25 20 5.25C19.3096 5.25 18.75 4.69036 18.75 4C18.75 3.30964 19.3096 2.75 20 2.75C20.6904 2.75 21.25 3.30964 21.25 4ZM18.75 20C18.75 19.3096 19.3096 18.75 20 18.75C20.6904 18.75 21.25 19.3096 21.25 20C21.25 20.6904 20.6904 21.25 20 21.25C19.3096 21.25 18.75 20.6904 18.75 20Z" fill="currentColor"/>''',
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
