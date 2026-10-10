// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rows-3` icon in every style.
///
/// Prefer the static widgets (e.g. `Rows3LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Rows3Icon extends StatelessWidget {
  /// Creates the `rows-3` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const Rows3Icon({
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
    name: 'rows-3',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3.00098 14.583C3.0008 14.3938 3 14.1996 3 14L3 10C3 9.80044 3.0008 9.60616 3.00098 9.41699L21 9.41699L21 14.583L3.00098 14.583Z" fill="currentColor"/>
<path d="M3.01367 7.91699C3.0525 5.489 3.23937 4.10438 4.17187 3.17187C5.34345 2.0003 7.22876 2 11 2L13 2C16.7712 2 18.6566 2.0003 19.8281 3.17187C20.7606 4.10438 20.9485 5.48899 20.9873 7.91699L3.01367 7.91699Z" fill="currentColor"/>
<path d="M20.9873 16.083C20.9485 18.511 20.7606 19.8956 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22L11 22C7.22876 22 5.34345 21.9997 4.17187 20.8281C3.23937 19.8956 3.0525 18.511 3.01367 16.083L20.9873 16.083Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'rows-3',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.9873 16.083L3.01367 16.083C3.0063 15.622 3.0005 15.1233 3 14.583L21 14.583C20.9995 15.1233 20.9947 15.622 20.9873 16.083Z" fill="currentColor"/>
<path d="M3.00098 9.41601C3.00147 8.87568 3.00629 8.37707 3.01367 7.91601L20.9873 7.91602C20.9947 8.37706 20.9995 8.87569 21 9.41602L3.00098 9.41601Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'rows-3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3 8.6665L21 8.6665" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 2L11 2C7.22876 2 5.34315 2 4.17157 3.17157C3 4.34315 3 6.22876 3 10L3 14C3 17.7712 3 19.6569 4.17157 20.8284C5.34315 22 7.22876 22 11 22L13 22C16.7712 22 18.6569 22 19.8284 20.8284C21 19.6569 21 17.7712 21 14L21 10C21 6.22876 21 4.34315 19.8284 3.17157C19.1752 2.51839 18.3001 2.22937 17 2.10149" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 15.333L11 15.333M7 15.333L3 15.333" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'rows-3',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3 15.333L21 15.333" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 8.6665L21 8.6665" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'rows-3',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 15.333L21 15.333" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M3 8.6665L21 8.6665" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'rows-3',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.9995 1.25C14.8638 1.25 16.338 1.24863 17.4888 1.40332C18.661 1.56095 19.6096 1.8934 20.3579 2.6416C21.1062 3.3899 21.4385 4.33846 21.5962 5.51074C21.7103 6.35928 21.7391 7.3835 21.7466 8.61035C21.748 8.62892 21.7495 8.64807 21.7495 8.66699C21.7495 8.67946 21.7482 8.69179 21.7476 8.7041C21.7497 9.11348 21.7495 9.54512 21.7495 10V14C21.7495 14.4545 21.7497 14.8858 21.7476 15.2949C21.7482 15.3076 21.7495 15.3202 21.7495 15.333C21.7495 15.3518 21.7479 15.3703 21.7466 15.3887C21.7391 16.616 21.7103 17.6405 21.5962 18.4893C21.4385 19.6615 21.1062 20.6101 20.3579 21.3584C19.6096 22.1066 18.661 22.439 17.4888 22.5967C16.338 22.7514 14.8638 22.75 12.9995 22.75H10.9995C9.13524 22.75 7.66104 22.7514 6.51025 22.5967C5.33809 22.439 4.38936 22.1066 3.64111 21.3584C2.89291 20.6101 2.56046 19.6615 2.40283 18.4893C2.28939 17.6455 2.26109 16.6279 2.25342 15.4102C2.25083 15.3848 2.24951 15.359 2.24951 15.333C2.24951 15.314 2.25007 15.2951 2.25147 15.2764C2.24945 14.8728 2.24951 14.4477 2.24951 14V10C2.24951 9.55163 2.24944 9.12583 2.25147 8.72168C2.25015 8.70363 2.24952 8.68538 2.24951 8.66699C2.24951 8.64079 2.2508 8.61438 2.25342 8.58887C2.2611 7.37156 2.28942 6.35431 2.40283 5.51074C2.56046 4.33852 2.89292 3.38989 3.64111 2.6416C4.38936 1.89336 5.33809 1.56098 6.51025 1.40332C7.66104 1.2486 9.13524 1.25 10.9995 1.25H12.9995ZM3.76318 16.083C3.77732 16.9629 3.80767 17.6829 3.88916 18.2891C4.02441 19.295 4.27854 19.8747 4.70166 20.2979C5.12483 20.721 5.70455 20.9751 6.71045 21.1104C7.73805 21.2485 9.09292 21.25 10.9995 21.25H12.9995C14.9061 21.25 16.261 21.2485 17.2886 21.1104C18.2945 20.9751 18.8742 20.721 19.2974 20.2979C19.7206 19.8746 19.9746 19.2951 20.1099 18.2891C20.1914 17.6829 20.2227 16.9629 20.2368 16.083H3.76318ZM3.75049 9.41699C3.7503 9.60541 3.74951 9.79966 3.74951 10V14C3.74951 14.2003 3.7503 14.3946 3.75049 14.583H20.2485C20.2487 14.3946 20.2495 14.2003 20.2495 14V10C20.2495 9.79966 20.2487 9.60541 20.2485 9.41699H3.75049ZM10.9995 2.75C9.09292 2.75 7.73805 2.7515 6.71045 2.88965C5.70455 3.02492 5.12483 3.27898 4.70166 3.70215C4.27854 4.12535 4.02441 4.70497 3.88916 5.71094C3.80767 6.31709 3.77732 7.03711 3.76318 7.91699H20.2368C20.2227 7.03709 20.1914 6.3171 20.1099 5.71094C19.9746 4.70487 19.7206 4.12535 19.2974 3.70215C18.8742 3.27903 18.2945 3.0249 17.2886 2.88965C16.261 2.75154 14.9061 2.75 12.9995 2.75H10.9995Z" fill="currentColor"/>''',
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
