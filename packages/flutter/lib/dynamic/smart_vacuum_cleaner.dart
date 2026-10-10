// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smart-vacuum-cleaner` icon in every style.
///
/// Prefer the static widgets (e.g. `SmartVacuumCleanerLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class SmartVacuumCleanerIcon extends StatelessWidget {
  /// Creates the `smart-vacuum-cleaner` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const SmartVacuumCleanerIcon({
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
    name: 'smart-vacuum-cleaner',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M9.75 9C9.75 7.75736 10.7574 6.75 12 6.75C13.2426 6.75 14.25 7.75736 14.25 9C14.25 10.2426 13.2426 11.25 12 11.25C10.7574 11.25 9.75 10.2426 9.75 9Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M21.2093 15.904C21.7184 14.7045 22 13.3852 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 13.385 2.28157 14.7043 2.79059 15.9036L2.70455 15.9998C2.1112 16.6627 1.74951 17.54 1.74951 18.5C1.74951 20.571 3.42844 22.25 5.49951 22.25C6.45947 22.25 7.33675 21.8883 7.9997 21.2949L8.09559 21.2091C9.29517 21.7183 10.6147 22 12 22C13.3852 22 14.7046 21.7184 15.9041 21.2092L15.9998 21.2949C16.6628 21.8883 17.54 22.25 18.5 22.25C20.5711 22.25 22.25 20.571 22.25 18.5C22.25 17.54 21.8883 16.6627 21.295 15.9998L21.2093 15.904ZM20.442 17.3627C19.6539 18.6008 18.6008 19.6538 17.3627 20.442C17.6964 20.6379 18.0846 20.75 18.5 20.75C19.7426 20.75 20.75 19.7426 20.75 18.5C20.75 18.0846 20.638 17.6963 20.442 17.3627ZM6.63705 20.4418C5.39891 19.6536 4.34587 18.6005 3.55776 17.3623C3.36165 17.696 3.24951 18.0844 3.24951 18.5C3.24951 19.7426 4.25687 20.75 5.49951 20.75C5.91499 20.75 6.30335 20.6379 6.63705 20.4418ZM12 5.25C9.92893 5.25 8.25 6.92893 8.25 9C8.25 11.0711 9.92893 12.75 12 12.75C14.0711 12.75 15.75 11.0711 15.75 9C15.75 6.92893 14.0711 5.25 12 5.25ZM12 15.25C12.4142 15.25 12.75 15.5858 12.75 16V18C12.75 18.4142 12.4142 18.75 12 18.75C11.5858 18.75 11.25 18.4142 11.25 18V16C11.25 15.5858 11.5858 15.25 12 15.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'smart-vacuum-cleaner',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 1.75C17.5228 1.75 22 6.22715 22 11.75C22 17.2728 17.5228 21.75 12 21.75C6.47715 21.75 2 17.2728 2 11.75C2 6.22715 6.47715 1.75 12 1.75ZM12 15C11.5858 15 11.25 15.3358 11.25 15.75V17.75C11.25 18.1642 11.5858 18.5 12 18.5C12.4142 18.5 12.75 18.1642 12.75 17.75V15.75C12.75 15.3358 12.4142 15 12 15ZM12 5C9.92893 5 8.25 6.67893 8.25 8.75C8.25 10.8211 9.92893 12.5 12 12.5C14.0711 12.5 15.75 10.8211 15.75 8.75C15.75 6.67893 14.0711 5 12 5ZM12 6.5C13.2426 6.5 14.25 7.50736 14.25 8.75C14.25 9.99264 13.2426 11 12 11C10.7574 11 9.75 9.99264 9.75 8.75C9.75 7.50736 10.7574 6.5 12 6.5Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M4.32324 16.1909L7.55859 19.4272L8.55859 20.5444L8 21.0444C7.33705 21.6378 6.45996 21.9995 5.5 21.9995C3.42893 21.9995 1.75 20.3206 1.75 18.2495C1.75011 17.2897 2.11182 16.4124 2.70508 15.7495L3.20508 15.1909L4.32324 16.1909Z" fill="currentColor"/>
<path d="M21.2949 15.7495C21.8882 16.4124 22.2499 17.2897 22.25 18.2495C22.25 20.3206 20.5711 21.9995 18.5 21.9995C17.5402 21.9994 16.6628 21.6377 16 21.0444L15.4414 20.5444L16.4414 19.4272L19.6777 16.1909L20.7949 15.1909L21.2949 15.7495Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'smart-vacuum-cleaner',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 9C15 7.34315 13.6569 6 12 6C10.3431 6 9 7.34315 9 9C9 10.6569 10.3431 12 12 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 18V16" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.6451 20.8579C17.1555 21.26 17.7998 21.4999 18.5 21.4999C20.1569 21.4999 21.5 20.1568 21.5 18.4999C21.5 17.7997 21.2601 17.1555 20.858 16.645" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.35462 20.8579C6.84413 21.2601 6.19984 21.5001 5.49951 21.5001C3.84266 21.5001 2.49951 20.1569 2.49951 18.5001C2.49951 17.7996 2.73954 17.1553 3.14183 16.6448" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'smart-vacuum-cleaner',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 9C15 10.6569 13.6569 12 12 12C10.3431 12 9 10.6569 9 9C9 7.34315 10.3431 6 12 6C13.6569 6 15 7.34315 15 9Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.6451 20.8579C17.1555 21.26 17.7998 21.4999 18.5 21.4999C20.1569 21.4999 21.5 20.1568 21.5 18.4999C21.5 17.7997 21.2601 17.1555 20.858 16.645" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.35462 20.8579C6.84413 21.2601 6.19984 21.5001 5.49951 21.5001C3.84266 21.5001 2.49951 20.1569 2.49951 18.5001C2.49951 17.7996 2.73954 17.1553 3.14183 16.6448" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 18V16" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 13.6768 21.5873 15.2571 20.858 16.6451C19.9144 18.4408 18.4408 19.9144 16.6451 20.858C15.2571 21.5873 13.6768 22 12 22C10.3231 22 8.74265 21.5873 7.35462 20.8578C5.55894 19.9142 4.08536 18.4405 3.14183 16.6447C2.41261 15.2568 2 13.6766 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'smart-vacuum-cleaner',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 9C15 10.6569 13.6569 12 12 12C10.3431 12 9 10.6569 9 9C9 7.34315 10.3431 6 12 6C13.6569 6 15 7.34315 15 9Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.6451 20.8579C17.1555 21.26 17.7998 21.4999 18.5 21.4999C20.1569 21.4999 21.5 20.1568 21.5 18.4999C21.5 17.7997 21.2601 17.1555 20.858 16.645" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M7.35462 20.8579C6.84413 21.2601 6.19984 21.5001 5.49951 21.5001C3.84266 21.5001 2.49951 20.1569 2.49951 18.5001C2.49951 17.7996 2.73954 17.1553 3.14183 16.6448" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 18V16" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'smart-vacuum-cleaner',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 13.6405 22.3825 15.1952 21.7254 16.5862C22.0584 17.1465 22.25 17.8014 22.25 18.5C22.25 20.5711 20.5711 22.25 18.5 22.25C17.8014 22.25 17.1465 22.0584 16.5862 21.7254C15.1952 22.3825 13.6405 22.75 12 22.75C10.3594 22.75 8.80463 22.3825 7.41353 21.7253C6.85319 22.0584 6.19828 22.25 5.49956 22.25C3.42849 22.25 1.74956 20.5711 1.74956 18.5C1.74956 17.8012 1.94122 17.1462 2.2744 16.5858C1.6174 15.1949 1.25 13.6403 1.25 12ZM3.26185 18.263C3.25372 18.3408 3.24956 18.4199 3.24956 18.5C3.24956 19.7426 4.25692 20.75 5.49956 20.75C5.57959 20.75 5.65861 20.7458 5.73643 20.7377C4.7831 20.0531 3.94639 19.2164 3.26185 18.263ZM18.2635 20.7378C18.3412 20.7459 18.4201 20.75 18.5 20.75C19.7426 20.75 20.75 19.7426 20.75 18.5C20.75 18.4201 20.7459 18.3412 20.7378 18.2635C20.0533 19.2167 19.2167 20.0533 18.2635 20.7378ZM12 6.75C10.7574 6.75 9.75 7.75736 9.75 9C9.75 10.2426 10.7574 11.25 12 11.25C13.2426 11.25 14.25 10.2426 14.25 9C14.25 7.75736 13.2426 6.75 12 6.75ZM8.25 9C8.25 6.92893 9.92893 5.25 12 5.25C14.0711 5.25 15.75 6.92893 15.75 9C15.75 11.0711 14.0711 12.75 12 12.75C9.92893 12.75 8.25 11.0711 8.25 9ZM12 15.25C12.4142 15.25 12.75 15.5858 12.75 16V18C12.75 18.4142 12.4142 18.75 12 18.75C11.5858 18.75 11.25 18.4142 11.25 18V16C11.25 15.5858 11.5858 15.25 12 15.25Z" fill="currentColor"/>''',
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
