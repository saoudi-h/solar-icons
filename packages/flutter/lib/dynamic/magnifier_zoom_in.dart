// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `magnifier-zoom-in` icon in every style.
///
/// Prefer the static widgets (e.g. `MagnifierZoomInLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MagnifierZoomInIcon extends StatelessWidget {
  /// Creates the `magnifier-zoom-in` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const MagnifierZoomInIcon({
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
    name: 'magnifier-zoom-in',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21.7883 21.7883C22.0706 21.506 22.0706 21.0483 21.7883 20.7659L18.1224 17.1001C19.4885 15.5006 20.3133 13.4249 20.3133 11.1566C20.3133 6.09956 16.2137 2 11.1566 2C6.09956 2 2 6.09956 2 11.1566C2 16.2137 6.09956 20.3133 11.1566 20.3133C13.4249 20.3133 15.5006 19.4885 17.1001 18.1224L20.7659 21.7883C21.0483 22.0706 21.506 22.0706 21.7883 21.7883ZM11.1566 8.0241C11.5559 8.0241 11.8795 8.34775 11.8795 8.74699V10.4337H13.5663C13.9655 10.4337 14.2892 10.7574 14.2892 11.1566C14.2892 11.5559 13.9655 11.8795 13.5663 11.8795H11.8795V13.5663C11.8795 13.9655 11.5559 14.2892 11.1566 14.2892C10.7574 14.2892 10.4337 13.9655 10.4337 13.5663V11.8795H8.74699C8.34775 11.8795 8.0241 11.5559 8.0241 11.1566C8.0241 10.7574 8.34775 10.4337 8.74699 10.4337H10.4337V8.74699C10.4337 8.34775 10.7574 8.0241 11.1566 8.0241Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'magnifier-zoom-in',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.7886 20.7656C22.0709 21.0479 22.0709 21.5058 21.7886 21.7881C21.5063 22.0704 21.0484 22.0704 20.7661 21.7881L17.1001 18.1221C17.4671 17.8086 17.8091 17.4666 18.1226 17.0996L21.7886 20.7656Z" fill="currentColor"/>
<path d="M11.1567 8.02441C11.5558 8.02457 11.8793 8.34803 11.8794 8.74707V10.4336H13.5659C13.9652 10.4336 14.2886 10.758 14.2886 11.1572C14.2884 11.5563 13.9651 11.8799 13.5659 11.8799H11.8794V13.5664C11.8794 13.9656 11.5559 14.2889 11.1567 14.2891C10.7575 14.2891 10.4331 13.9656 10.4331 13.5664V11.8799H8.74658C8.34754 11.8798 8.02408 11.5563 8.02393 11.1572C8.02393 10.7581 8.34745 10.4337 8.74658 10.4336H10.4331V8.74707C10.4332 8.34794 10.7576 8.02441 11.1567 8.02441Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M11.1566 20.3133C16.2137 20.3133 20.3133 16.2137 20.3133 11.1566C20.3133 6.09956 16.2137 2 11.1566 2C6.09956 2 2 6.09956 2 11.1566C2 16.2137 6.09956 20.3133 11.1566 20.3133Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'magnifier-zoom-in',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 11.5H11.5M11.5 11.5H14M11.5 11.5V14M11.5 11.5V9" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.75 3.27093C8.14732 2.46262 9.76964 2 11.5 2C16.7467 2 21 6.25329 21 11.5C21 16.7467 16.7467 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 9.76964 2.46262 8.14732 3.27093 6.75" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'magnifier-zoom-in',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 11.5H11.5M11.5 11.5H14M11.5 11.5V14M11.5 11.5V9" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'magnifier-zoom-in',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 11.5H11.5M11.5 11.5H14M11.5 11.5V14M11.5 11.5V9" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'magnifier-zoom-in',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 2.75C6.66751 2.75 2.75 6.66751 2.75 11.5C2.75 16.3325 6.66751 20.25 11.5 20.25C16.3325 20.25 20.25 16.3325 20.25 11.5C20.25 6.66751 16.3325 2.75 11.5 2.75ZM1.25 11.5C1.25 5.83908 5.83908 1.25 11.5 1.25C17.1609 1.25 21.75 5.83908 21.75 11.5C21.75 14.0605 20.8111 16.4017 19.2589 18.1982L22.5303 21.4697C22.8232 21.7626 22.8232 22.2374 22.5303 22.5303C22.2374 22.8232 21.7626 22.8232 21.4697 22.5303L18.1982 19.2589C16.4017 20.8111 14.0605 21.75 11.5 21.75C5.83908 21.75 1.25 17.1609 1.25 11.5ZM11.5 8.25C11.9142 8.25 12.25 8.58579 12.25 9V10.75H14C14.4142 10.75 14.75 11.0858 14.75 11.5C14.75 11.9142 14.4142 12.25 14 12.25H12.25V14C12.25 14.4142 11.9142 14.75 11.5 14.75C11.0858 14.75 10.75 14.4142 10.75 14V12.25H9C8.58579 12.25 8.25 11.9142 8.25 11.5C8.25 11.0858 8.58579 10.75 9 10.75H10.75V9C10.75 8.58579 11.0858 8.25 11.5 8.25Z" fill="currentColor"/>''',
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
