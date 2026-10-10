// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `transmission` icon in every style.
///
/// Prefer the static widgets (e.g. `TransmissionLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class TransmissionIcon extends StatelessWidget {
  /// Creates the `transmission` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const TransmissionIcon({
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
    name: 'transmission',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M20.2861 14.25C21.6614 14.2502 22.75 15.3841 22.75 16.75C22.75 17.8285 22.0711 18.7621 21.1084 19.1074L22.6396 21.6084C22.8559 21.9617 22.7449 22.4234 22.3916 22.6396C22.0383 22.8559 21.5766 22.7449 21.3604 22.3916L19.4365 19.25H18.75V22C18.75 22.4142 18.4142 22.75 18 22.75C17.5858 22.75 17.25 22.4142 17.25 22V15C17.25 14.5858 17.5858 14.25 18 14.25H20.2861ZM18.75 17.75H20.2861C20.804 17.7498 21.25 17.3168 21.25 16.75C21.25 16.1832 20.804 15.7502 20.2861 15.75H18.75V17.75Z" fill="currentColor"/>
<path d="M20 2C21.1046 2 22 2.89543 22 4C22 4.83933 21.4829 5.55779 20.75 5.85449V8.05176C20.75 8.95024 20.7499 9.70014 20.6699 10.2949C20.5855 10.9225 20.3997 11.489 19.9443 11.9443C19.489 12.3997 18.9225 12.5855 18.2949 12.6699C17.7001 12.7499 16.9502 12.75 16.0518 12.75H12.75V18.1455C13.4829 18.4422 14 19.1607 14 20C14 21.1046 13.1046 22 12 22C10.8954 22 10 21.1046 10 20C10 19.1607 10.5171 18.4422 11.25 18.1455V12.75H4.75V18.1455C5.48293 18.4422 6 19.1607 6 20C6 21.1046 5.10457 22 4 22C2.89543 22 2 21.1046 2 20C2 19.1607 2.51707 18.4422 3.25 18.1455V5.85449C2.51707 5.55779 2 4.83933 2 4C2 2.89543 2.89543 2 4 2C5.10457 2 6 2.89543 6 4C6 4.83933 5.48293 5.55779 4.75 5.85449V11.25H11.25V5.85449C10.5171 5.55779 10 4.83933 10 4C10 2.89543 10.8954 2 12 2C13.1046 2 14 2.89543 14 4C14 4.83933 13.4829 5.55779 12.75 5.85449V11.25H16C16.964 11.25 17.6117 11.2485 18.0947 11.1836C18.5561 11.1215 18.7535 11.0141 18.8838 10.8838C19.0141 10.7535 19.1215 10.5561 19.1836 10.0947C19.2485 9.61169 19.25 8.96401 19.25 8V5.85449C18.5171 5.55779 18 4.83933 18 4C18 2.89543 18.8954 2 20 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'transmission',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M2 4C2 2.89543 2.89543 2 4 2C5.10457 2 6 2.89543 6 4C6 4.83934 5.48296 5.55793 4.75 5.85462V11.25H11.25V5.85462C10.517 5.55793 10 4.83934 10 4C10 2.89543 10.8954 2 12 2C13.1046 2 14 2.89543 14 4C14 4.83934 13.483 5.55793 12.75 5.85462V11.25H16C16.964 11.25 17.6116 11.2484 18.0946 11.1835C18.5561 11.1214 18.7536 11.0142 18.8839 10.8839C19.0142 10.7536 19.1214 10.5561 19.1835 10.0946C19.2484 9.61157 19.25 8.96401 19.25 8V5.85462C18.517 5.55793 18 4.83934 18 4C18 2.89543 18.8954 2 20 2C21.1046 2 22 2.89543 22 4C22 4.83934 21.483 5.55793 20.75 5.85462V8.05199C20.75 8.95048 20.7501 9.6997 20.6701 10.2945C20.5857 10.9223 20.4 11.4891 19.9445 11.9445C19.4891 12.4 18.9223 12.5857 18.2945 12.6701C17.6997 12.7501 16.9505 12.75 16.052 12.75L12.75 12.75L12.75 18.1454C13.483 18.4421 14 19.1607 14 20C14 21.1046 13.1046 22 12 22C10.8954 22 10 21.1046 10 20C10 19.1607 10.517 18.4421 11.25 18.1454V12.75H4.75V18.1454C5.48296 18.4421 6 19.1607 6 20C6 21.1046 5.10457 22 4 22C2.89543 22 2 21.1046 2 20C2 19.1607 2.51704 18.4421 3.25 18.1454V5.85462C2.51704 5.55793 2 4.83934 2 4Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M17.25 15C17.25 14.5858 17.5858 14.25 18 14.25H20.2857C21.6612 14.25 22.75 15.3839 22.75 16.75C22.75 17.8285 22.0713 18.7624 21.1086 19.1077L22.6396 21.6084C22.8559 21.9616 22.7449 22.4234 22.3916 22.6396C22.0384 22.8559 21.5766 22.7449 21.3604 22.3916L19.4369 19.25H18.75V22C18.75 22.4142 18.4142 22.75 18 22.75C17.5858 22.75 17.25 22.4142 17.25 22V15ZM18.75 17.75H20.2857C20.8038 17.75 21.25 17.3169 21.25 16.75C21.25 16.1831 20.8038 15.75 20.2857 15.75H18.75V17.75Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'transmission',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M6 4C6 5.10457 5.10457 6 4 6C2.89543 6 2 5.10457 2 4C2 2.89543 2.89543 2 4 2C5.10457 2 6 2.89543 6 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 20C6 21.1046 5.10457 22 4 22C2.89543 22 2 21.1046 2 20C2 18.8954 2.89543 18 4 18C5.10457 18 6 18.8954 6 20Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 20C14 21.1046 13.1046 22 12 22C10.8954 22 10 21.1046 10 20C10 18.8954 10.8954 18 12 18C13.1046 18 14 18.8954 14 20Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 4C14 5.10457 13.1046 6 12 6C10.8954 6 10 5.10457 10 4C10 2.89543 10.8954 2 12 2C13.1046 2 14 2.89543 14 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 4C22 5.10457 21.1046 6 20 6C18.8954 6 18 5.10457 18 4C18 2.89543 18.8954 2 20 2C21.1046 2 22 2.89543 22 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6V13M12 18V16" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 18V11M4 6V8" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 6V8C20 9.88562 20 10.8284 19.4142 11.4142C18.8284 12 17.8856 12 16 12H10M4 12H6" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.8571 18.5H20.2857C21.2325 18.5 22 17.7165 22 16.75C22 15.7835 21.2325 15 20.2857 15H18V18.5M19.8571 18.5H18M19.8571 18.5L22 22M18 18.5V22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'transmission',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6 4C6 5.10457 5.10457 6 4 6C2.89543 6 2 5.10457 2 4C2 2.89543 2.89543 2 4 2C5.10457 2 6 2.89543 6 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 20C6 21.1046 5.10457 22 4 22C2.89543 22 2 21.1046 2 20C2 18.8954 2.89543 18 4 18C5.10457 18 6 18.8954 6 20Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 20C14 21.1046 13.1046 22 12 22C10.8954 22 10 21.1046 10 20C10 18.8954 10.8954 18 12 18C13.1046 18 14 18.8954 14 20Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 4C14 5.10457 13.1046 6 12 6C10.8954 6 10 5.10457 10 4C10 2.89543 10.8954 2 12 2C13.1046 2 14 2.89543 14 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 4C22 5.10457 21.1046 6 20 6C18.8954 6 18 5.10457 18 4C18 2.89543 18.8954 2 20 2C21.1046 2 22 2.89543 22 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 6V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 6V8C20 9.88562 20 10.8284 19.4142 11.4142C18.8284 12 17.8856 12 16 12H4" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.8571 18.5H20.2857C21.2325 18.5 22 17.7165 22 16.75C22 15.7835 21.2325 15 20.2857 15H18V18.5M19.8571 18.5H18M19.8571 18.5L22 22M18 18.5V22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'transmission',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M6 4C6 5.10457 5.10457 6 4 6C2.89543 6 2 5.10457 2 4C2 2.89543 2.89543 2 4 2C5.10457 2 6 2.89543 6 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 20C6 21.1046 5.10457 22 4 22C2.89543 22 2 21.1046 2 20C2 18.8954 2.89543 18 4 18C5.10457 18 6 18.8954 6 20Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 20C14 21.1046 13.1046 22 12 22C10.8954 22 10 21.1046 10 20C10 18.8954 10.8954 18 12 18C13.1046 18 14 18.8954 14 20Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 4C14 5.10457 13.1046 6 12 6C10.8954 6 10 5.10457 10 4C10 2.89543 10.8954 2 12 2C13.1046 2 14 2.89543 14 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 4C22 5.10457 21.1046 6 20 6C18.8954 6 18 5.10457 18 4C18 2.89543 18.8954 2 20 2C21.1046 2 22 2.89543 22 4Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.8571 18.5H20.2857C21.2325 18.5 22 17.7165 22 16.75C22 15.7835 21.2325 15 20.2857 15H18V18.5M19.8571 18.5H18M19.8571 18.5L22 22M18 18.5V22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 6V18M12 6V18M20 6V8C20 9.88562 20 10.8284 19.4142 11.4142C18.8284 12 17.8856 12 16 12H4" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'transmission',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4 2.75C3.30964 2.75 2.75 3.30964 2.75 4C2.75 4.69036 3.30964 5.25 4 5.25C4.69036 5.25 5.25 4.69036 5.25 4C5.25 3.30964 4.69036 2.75 4 2.75ZM1.25 4C1.25 2.48122 2.48122 1.25 4 1.25C5.51878 1.25 6.75 2.48122 6.75 4C6.75 5.25878 5.90425 6.32002 4.75 6.64648V11.25H11.25V6.64648C10.0957 6.32002 9.25 5.25878 9.25 4C9.25 2.48122 10.4812 1.25 12 1.25C13.5188 1.25 14.75 2.48122 14.75 4C14.75 5.25878 13.9043 6.32002 12.75 6.64648V11.25H16C16.964 11.25 17.6116 11.2484 18.0946 11.1835C18.5561 11.1214 18.7536 11.0142 18.8839 10.8839C19.0142 10.7536 19.1214 10.5561 19.1835 10.0946C19.2484 9.61157 19.25 8.96401 19.25 8V6.64648C18.0957 6.32002 17.25 5.25878 17.25 4C17.25 2.48122 18.4812 1.25 20 1.25C21.5188 1.25 22.75 2.48122 22.75 4C22.75 5.25878 21.9043 6.32002 20.75 6.64648V8.05199C20.75 8.95048 20.7501 9.6997 20.6701 10.2945C20.5857 10.9223 20.4 11.4891 19.9445 11.9445C19.4891 12.4 18.9223 12.5857 18.2945 12.6701C17.6997 12.7501 16.9505 12.75 16.052 12.75L12.75 12.75V17.3535C13.9043 17.68 14.75 18.7412 14.75 20C14.75 21.5188 13.5188 22.75 12 22.75C10.4812 22.75 9.25 21.5188 9.25 20C9.25 18.7412 10.0957 17.68 11.25 17.3535V12.75H4.75V17.3535C5.90425 17.68 6.75 18.7412 6.75 20C6.75 21.5188 5.51878 22.75 4 22.75C2.48122 22.75 1.25 21.5188 1.25 20C1.25 18.7412 2.09575 17.68 3.25 17.3535V6.64648C2.09575 6.32002 1.25 5.25878 1.25 4ZM12 2.75C11.3096 2.75 10.75 3.30964 10.75 4C10.75 4.69036 11.3096 5.25 12 5.25C12.6904 5.25 13.25 4.69036 13.25 4C13.25 3.30964 12.6904 2.75 12 2.75ZM20 2.75C19.3096 2.75 18.75 3.30964 18.75 4C18.75 4.69036 19.3096 5.25 20 5.25C20.6904 5.25 21.25 4.69036 21.25 4C21.25 3.30964 20.6904 2.75 20 2.75ZM17.25 15C17.25 14.5858 17.5858 14.25 18 14.25H20.2857C21.6612 14.25 22.75 15.3839 22.75 16.75C22.75 17.8285 22.0713 18.7624 21.1086 19.1077L22.6396 21.6084C22.8559 21.9616 22.7449 22.4234 22.3916 22.6396C22.0384 22.8559 21.5766 22.7449 21.3604 22.3916L19.4369 19.25H18.75V22C18.75 22.4142 18.4142 22.75 18 22.75C17.5858 22.75 17.25 22.4142 17.25 22V15ZM18.75 17.75H20.2857C20.8038 17.75 21.25 17.3169 21.25 16.75C21.25 16.1831 20.8038 15.75 20.2857 15.75H18.75V17.75ZM4 18.75C3.30964 18.75 2.75 19.3096 2.75 20C2.75 20.6904 3.30964 21.25 4 21.25C4.69036 21.25 5.25 20.6904 5.25 20C5.25 19.3096 4.69036 18.75 4 18.75ZM12 18.75C11.3096 18.75 10.75 19.3096 10.75 20C10.75 20.6904 11.3096 21.25 12 21.25C12.6904 21.25 13.25 20.6904 13.25 20C13.25 19.3096 12.6904 18.75 12 18.75Z" fill="currentColor"/>''',
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
