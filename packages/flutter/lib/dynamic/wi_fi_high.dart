// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-high` icon in every style.
///
/// Prefer the static widgets (e.g. `WiFiHighLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class WiFiHighIcon extends StatelessWidget {
  /// Creates the `wi-fi-high` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const WiFiHighIcon({
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
    name: 'wi-fi-high',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.0183 18.7148C12.4323 18.7151 12.7683 19.0507 12.7683 19.4648C12.768 19.8786 12.4321 20.2145 12.0183 20.2148C11.6042 20.2148 11.2685 19.8788 11.2683 19.4648C11.2683 19.0506 11.604 18.7148 12.0183 18.7148Z" fill="currentColor"/>
<path d="M8.11787 15.3828C10.2556 13.076 13.7469 13.0757 15.8845 15.3828C16.1657 15.6863 16.1475 16.1607 15.8444 16.4423C15.5406 16.7238 15.0654 16.7061 14.7839 16.4023C13.2399 14.736 10.7616 14.7361 9.21748 16.4023C8.93595 16.706 8.4617 16.7238 8.15791 16.4423C7.85435 16.1608 7.83646 15.6865 8.11787 15.3828Z" fill="currentColor"/>
<path d="M4.78389 11.7851C8.76264 7.49105 15.2389 7.49076 19.2175 11.7851C19.4987 12.0889 19.48 12.5632 19.1765 12.8447C18.8727 13.1261 18.3984 13.1084 18.1169 12.8046C14.7319 9.15097 9.26858 9.15107 5.8835 12.8046C5.60202 13.1083 5.12773 13.126 4.82393 12.8447C4.52033 12.5631 4.50246 12.0889 4.78389 11.7851Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'wi-fi-high',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.0176 18.7144C12.4318 18.7144 12.7676 19.0501 12.7676 19.4644C12.7676 19.8786 12.4318 20.2144 12.0176 20.2144C11.6034 20.2144 11.2676 19.8786 11.2676 19.4644C11.2676 19.0501 11.6034 18.7144 12.0176 18.7144Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M8.1169 15.3828C10.2547 13.076 13.7459 13.0757 15.8835 15.3828C16.1648 15.6863 16.1466 16.1607 15.8435 16.4423C15.5396 16.7238 15.0644 16.7061 14.7829 16.4023C13.2389 14.736 10.7606 14.7361 9.21651 16.4023C8.93497 16.706 8.46073 16.7238 8.15693 16.4423C7.85337 16.1608 7.83548 15.6865 8.1169 15.3828Z" fill="currentColor"/>
<path d="M4.78291 11.7851C8.76166 7.49105 15.2379 7.49076 19.2165 11.7851C19.4977 12.0889 19.479 12.5632 19.1755 12.8447C18.8717 13.1261 18.3974 13.1084 18.1159 12.8046C14.7309 9.15097 9.26761 9.15107 5.88252 12.8046C5.60104 13.1083 5.12676 13.126 4.82295 12.8447C4.51935 12.5631 4.50148 12.0889 4.78291 11.7851Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'wi-fi-high',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.33301 12.295C7.39361 10.0709 10.1707 9.09151 12.8624 9.35689" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.6313 10.624C17.3601 11.0681 18.0457 11.625 18.6664 12.2949" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.66699 15.893C9.2104 15.3065 9.85347 14.8931 10.5374 14.6528" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.376 14.623C14.0924 14.8582 14.7672 15.2815 15.3337 15.8929" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'wi-fi-high',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8.66699 15.8931C10.5079 13.9061 13.4927 13.9061 15.3337 15.8931" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.33301 12.295C9.01491 8.32093 14.9844 8.32093 18.6663 12.295" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'wi-fi-high',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.66699 15.8931C10.5079 13.9061 13.4927 13.9061 15.3337 15.8931" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5.33301 12.295C9.01491 8.32093 14.9844 8.32093 18.6663 12.295" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'wi-fi-high',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.0183 18.7148C12.4323 18.7151 12.7683 19.0507 12.7683 19.4648C12.768 19.8786 12.4321 20.2145 12.0183 20.2148C11.6042 20.2148 11.2685 19.8788 11.2683 19.4648C11.2683 19.0506 11.604 18.7148 12.0183 18.7148Z" fill="currentColor"/>
<path d="M8.11787 15.3828C10.2556 13.076 13.7469 13.0757 15.8845 15.3828C16.1657 15.6863 16.1475 16.1607 15.8444 16.4423C15.5406 16.7238 15.0654 16.7061 14.7839 16.4023C13.2399 14.736 10.7616 14.7361 9.21748 16.4023C8.93595 16.706 8.4617 16.7238 8.15791 16.4423C7.85435 16.1608 7.83646 15.6865 8.11787 15.3828Z" fill="currentColor"/>
<path d="M4.78389 11.7851C8.76264 7.49105 15.2389 7.49076 19.2175 11.7851C19.4987 12.0889 19.48 12.5632 19.1765 12.8447C18.8727 13.1261 18.3984 13.1084 18.1169 12.8046C14.7319 9.15097 9.26858 9.15107 5.8835 12.8046C5.60202 13.1083 5.12773 13.126 4.82393 12.8447C4.52033 12.5631 4.50246 12.0889 4.78389 11.7851Z" fill="currentColor"/>''',
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
