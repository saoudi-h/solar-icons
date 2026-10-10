// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cosmetic` icon in every style.
///
/// Prefer the static widgets (e.g. `CosmeticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class CosmeticIcon extends StatelessWidget {
  /// Creates the `cosmetic` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const CosmeticIcon({
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
    name: 'cosmetic',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M7.5 12.0003C7.77614 12.0003 8 12.2242 8 12.5003V18.0003C7.99974 19.6569 6.65669 21.0003 5 21.0003C3.34331 21.0003 2.00026 19.6569 2 18.0003V12.4993C2.00026 12.2234 2.22402 12.0003 2.5 12.0003H7.5Z" fill="currentColor"/>
<path d="M17.25 19.5003H19.5C19.9142 19.5003 20.25 19.8361 20.25 20.2503C20.2498 20.6644 19.9141 21.0003 19.5 21.0003H13.5C13.0859 21.0003 12.7502 20.6644 12.75 20.2503C12.75 19.8361 13.0858 19.5003 13.5 19.5003H15.75V17.7103C15.9964 17.7365 16.2466 17.7503 16.5 17.7503C16.7534 17.7503 17.0036 17.7365 17.25 17.7103V19.5003Z" fill="currentColor"/>
<path d="M16.5 5.00031C19.5376 5.00031 22 7.46274 22 10.5003C21.9997 13.5377 19.5374 16.0003 16.5 16.0003C13.4626 16.0003 11.0003 13.5377 11 10.5003C11 7.46274 13.4624 5.00031 16.5 5.00031Z" fill="currentColor"/>
<path d="M5.55273 5.1048C6.21751 4.77252 6.99978 5.25618 7 5.99933V10.5003H3V6.99933C3.00012 6.62068 3.21404 6.27415 3.55273 6.1048L5.55273 5.1048Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'cosmetic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.5 5.00031C19.5376 5.00031 22 7.46274 22 10.5003C21.9997 13.5377 19.5374 16.0003 16.5 16.0003C13.4626 16.0003 11.0003 13.5377 11 10.5003C11 7.46274 13.4624 5.00031 16.5 5.00031Z" fill="currentColor"/>
<path d="M5.55273 5.1048C6.21751 4.77252 6.99978 5.25618 7 5.99933V11.0003H3V6.99933C3.00012 6.62068 3.21404 6.27415 3.55273 6.1048L5.55273 5.1048Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M7.5 11C7.77614 11 8 11.2239 8 11.5V18C8 19.6569 6.65685 21 5 21C3.34315 21 2 19.6569 2 18V11.5C2 11.2239 2.22386 11 2.5 11H7.5Z" fill="currentColor"/>
<path d="M17.25 19.5H19.5C19.9142 19.5 20.25 19.8358 20.25 20.25C20.25 20.6642 19.9142 21 19.5 21H13.5C13.0858 21 12.75 20.6642 12.75 20.25C12.75 19.8358 13.0858 19.5 13.5 19.5H15.75V15.9492C15.9952 15.9827 16.2456 16 16.5 16C16.7544 16 17.0048 15.9827 17.25 15.9492V19.5Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'cosmetic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16.5 16C13.4624 16 11 13.5376 11 10.5C11 7.46243 13.4624 5 16.5 5C19.5376 5 22 7.46243 22 10.5C22 12.0347 21.3714 13.4227 20.3576 14.4203" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 20V16M16.5 20H19.5M16.5 20H13.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 11H8" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 11V13" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 17C8 18.6569 6.65685 20 5 20C3.34315 20 2 18.6569 2 17V11" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 11H7V5.61799C7 4.87461 6.21769 4.39111 5.55279 4.72356L3.55279 5.72356C3.214 5.89295 3 6.23922 3 6.61799V11Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'cosmetic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M11 10.5C11 7.46243 13.4624 5 16.5 5C19.5376 5 22 7.46243 22 10.5C22 13.5376 19.5376 16 16.5 16C13.4624 16 11 13.5376 11 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 20V16M16.5 20H19.5M16.5 20H13.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3 11H7V5.61799C7 4.87461 6.21769 4.39111 5.55279 4.72356L3.55279 5.72356C3.214 5.89295 3 6.23922 3 6.61799V11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 11V17C8 18.6569 6.65685 20 5 20C3.34315 20 2 18.6569 2 17V11" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11H8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'cosmetic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11 10.5C11 7.46243 13.4624 5 16.5 5C19.5376 5 22 7.46243 22 10.5C22 13.5376 19.5376 16 16.5 16C13.4624 16 11 13.5376 11 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 11V17C8 18.6569 6.65685 20 5 20C3.34315 20 2 18.6569 2 17V11" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11H8" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.5 20V16M16.5 20H19.5M16.5 20H13.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M3 11H7V5.61799C7 4.87461 6.21769 4.39111 5.55279 4.72356L3.55279 5.72356C3.214 5.89295 3 6.23922 3 6.61799V11Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'cosmetic',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.75 5.61798C7.75 4.31706 6.38095 3.47094 5.21738 4.05273L3.21738 5.05273C2.6245 5.34917 2.25 5.95513 2.25 6.61798V10.2499H2C1.58579 10.2499 1.25 10.5857 1.25 10.9999V16.9999C1.25 19.071 2.92893 20.7499 5 20.7499C7.07107 20.7499 8.75 19.071 8.75 16.9999V10.9999C8.75 10.5857 8.41421 10.2499 8 10.2499H7.75V5.61798ZM2.75 11.7499H7.25V16.9999C7.25 18.2426 6.24264 19.2499 5 19.2499C3.75736 19.2499 2.75 18.2426 2.75 16.9999V11.7499ZM6.25 10.2499V5.61798C6.25 5.43213 6.05442 5.31126 5.8882 5.39437L3.8882 6.39437C3.8035 6.43672 3.75 6.52329 3.75 6.61798V10.2499H6.25Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 4.24994C13.0482 4.24994 10.25 7.04816 10.25 10.4999C10.25 13.6979 12.6518 16.3349 15.75 16.7054V19.2499H13.5C13.0858 19.2499 12.75 19.5857 12.75 19.9999C12.75 20.4142 13.0858 20.7499 13.5 20.7499H19.5C19.9142 20.7499 20.25 20.4142 20.25 19.9999C20.25 19.5857 19.9142 19.2499 19.5 19.2499H17.25V16.7054C20.3482 16.3349 22.75 13.6979 22.75 10.4999C22.75 7.04816 19.9518 4.24994 16.5 4.24994ZM16.5 15.2499C19.1234 15.2499 21.25 13.1233 21.25 10.4999C21.25 7.87659 19.1234 5.74994 16.5 5.74994C13.8766 5.74994 11.75 7.87659 11.75 10.4999C11.75 13.1233 13.8766 15.2499 16.5 15.2499Z" fill="currentColor"/>''',
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
