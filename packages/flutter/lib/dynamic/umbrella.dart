// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `umbrella` icon in every style.
///
/// Prefer the static widgets (e.g. `UmbrellaLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class UmbrellaIcon extends StatelessWidget {
  /// Creates the `umbrella` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const UmbrellaIcon({
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
    name: 'umbrella',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M2.47619 12C2.2132 12 2 11.7868 2 11.5238C2 7.07824 5.04593 3.34408 9.16469 2.29445C9.01255 2.48707 8.87137 2.69028 8.74065 2.89955C8.00482 4.0776 7.49337 5.60532 7.13421 7.07156C6.77232 8.54901 6.5522 10.0191 6.42246 11.1149C6.38321 11.4464 6.35211 11.7448 6.3278 12H2.47619Z" fill="currentColor"/>
<path d="M22 11.5238C22 11.7868 21.7868 12 21.5238 12H17.6722C17.6479 11.7448 17.6168 11.4464 17.5775 11.1149C17.4478 10.0191 17.2277 8.54901 16.8658 7.07156C16.5066 5.60532 15.9952 4.0776 15.2593 2.89955C15.1286 2.69028 14.9875 2.48706 14.8353 2.29445C18.9541 3.34408 22 7.07824 22 11.5238Z" fill="currentColor"/>
<path d="M11.25 20V12H7.83487C7.85586 11.7886 7.88135 11.5506 7.91205 11.2913C8.03759 10.2309 8.24881 8.82599 8.59114 7.42844C8.93621 6.01968 9.40187 4.6724 10.0129 3.6942C10.6292 2.7074 11.2887 2.25 12 2.25C12.7113 2.25 13.3708 2.7074 13.9871 3.6942C14.5981 4.6724 15.0638 6.01968 15.4089 7.42844C15.7512 8.82599 15.9624 10.2309 16.0879 11.2913C16.1186 11.5506 16.1441 11.7886 16.1651 12H12.75V20C12.75 21.5188 11.5188 22.75 10 22.75C8.48122 22.75 7.25 21.5188 7.25 20V19C7.25 18.5858 7.58579 18.25 8 18.25C8.41421 18.25 8.75 18.5858 8.75 19V20C8.75 20.6904 9.30964 21.25 10 21.25C10.6904 21.25 11.25 20.6904 11.25 20Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'umbrella',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 20C12.75 21.5188 11.5188 22.75 10 22.75C8.48122 22.75 7.25 21.5188 7.25 20V19C7.25 18.5858 7.58579 18.25 8 18.25C8.41421 18.25 8.75 18.5858 8.75 19V20C8.75 20.6904 9.30964 21.25 10 21.25C10.6904 21.25 11.25 20.6904 11.25 20V12H12.75V20Z" fill="currentColor"/>
<path d="M12.4766 2C13.0993 2.00002 13.7084 2.05968 14.2979 2.17383C14.4785 2.33519 14.6466 2.51292 14.8037 2.70117C15.4922 3.52633 16.0064 4.61793 16.3945 5.7373C17.1729 7.98179 17.5189 10.5512 17.6602 11.9229L17.6689 12H16.1602C16.0175 10.6457 15.6834 8.26687 14.9766 6.22852C14.6154 5.18719 14.1747 4.28817 13.6523 3.66211C13.1385 3.04627 12.5974 2.75 12 2.75C11.4027 2.75009 10.8624 3.04637 10.3486 3.66211C9.82622 4.28821 9.38463 5.18701 9.02344 6.22852C8.31658 8.26689 7.98247 10.6457 7.83984 12H6.33203L6.33984 11.9229C6.48109 10.5512 6.8281 7.98183 7.60645 5.7373C7.99458 4.6181 8.50794 3.52626 9.19629 2.70117C9.35343 2.51284 9.52237 2.33525 9.70312 2.17383C10.2923 2.05976 10.9009 2.00003 11.5234 2H12.4766Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M21.5238 12H12H2.47619C2.2132 12 2 11.7868 2 11.5238C2 6.26396 6.26395 2 11.5238 2H12.4762C17.736 2 22 6.26396 22 11.5238C22 11.7868 21.7868 12 21.5238 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'umbrella',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 19V20C8 21.1046 8.89543 22 10 22C11.1046 22 12 21.1046 12 20C12 20 12 17.5621 12 16M21.5238 12H12H2.47619C2.2132 12 2 11.7868 2 11.5238C2 6.26396 6.26395 2 11.5238 2H12.4762C17.736 2 22 6.26396 22 11.5238C22 11.7868 21.7868 12 21.5238 12Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.9143 12C16.6351 9.28874 15.5541 2 12 2C8.44586 2 7.36486 9.28874 7.08569 12" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'umbrella',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 12H21.5238C21.7868 12 22 11.7868 22 11.5238C22 6.26396 17.736 2 12.4762 2H11.5238C6.26395 2 2 6.26396 2 11.5238C2 11.7868 2.2132 12 2.47619 12H12ZM12 12V20C12 21.1046 11.1046 22 10 22C8.89543 22 8 21.1046 8 20V19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.9145 12C16.6354 9.28874 15.5544 2 12.0002 2C8.4461 2 7.3651 9.28874 7.08594 12" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'umbrella',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 12H21.5238C21.7868 12 22 11.7868 22 11.5238C22 6.26396 17.736 2 12.4762 2H11.5238C6.26395 2 2 6.26396 2 11.5238C2 11.7868 2.2132 12 2.47619 12H12ZM12 12V20C12 21.1046 11.1046 22 10 22C8.89543 22 8 21.1046 8 20V19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.9145 12C16.6354 9.28874 15.5544 2 12.0002 2C8.4461 2 7.3651 9.28874 7.08594 12" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'umbrella',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5238 1.25C5.84974 1.25 1.25 5.84974 1.25 11.5238C1.25 12.201 1.79898 12.75 2.47619 12.75H11.25V20C11.25 20.6904 10.6904 21.25 10 21.25C9.30964 21.25 8.75 20.6904 8.75 20V19C8.75 18.5858 8.41421 18.25 8 18.25C7.58579 18.25 7.25 18.5858 7.25 19V20C7.25 21.5188 8.48122 22.75 10 22.75C11.5188 22.75 12.75 21.5188 12.75 20V12.75H21.5238C22.201 12.75 22.75 12.201 22.75 11.5238C22.75 5.84974 18.1503 1.25 12.4762 1.25H11.5238ZM8.84386 3.16683C5.39174 4.27297 2.87041 7.4588 2.75419 11.25H6.41544C6.59146 9.80771 6.94148 7.65426 7.60615 5.73755C7.92504 4.81796 8.32834 3.91674 8.84386 3.16683ZM7.92709 11.25C8.10314 9.86814 8.43343 7.93018 9.02335 6.229C9.38457 5.18734 9.82539 4.28791 10.3479 3.66173C10.8617 3.04589 11.4026 2.75 12 2.75C12.5974 2.75 13.1383 3.04589 13.6521 3.66173C14.1746 4.28791 14.6154 5.18734 14.9767 6.229C15.5666 7.93018 15.8969 9.86814 16.0729 11.25H7.92709ZM17.5846 11.25C17.4086 9.80771 17.0585 7.65426 16.3939 5.73755C16.075 4.81796 15.6717 3.91675 15.1562 3.16684C18.6083 4.27298 21.1296 7.45881 21.2458 11.25H17.5846Z" fill="currentColor"/>''',
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
