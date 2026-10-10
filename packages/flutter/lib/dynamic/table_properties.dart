// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `table-properties` icon in every style.
///
/// Prefer the static widgets (e.g. `TablePropertiesLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class TablePropertiesIcon extends StatelessWidget {
  /// Creates the `table-properties` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const TablePropertiesIcon({
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
    name: 'table-properties',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M14.25 16.0828V21.9978C13.858 21.9997 13.4419 21.9998 13 21.9998H11C7.22917 21.9998 5.34348 22.0001 4.17188 20.8289C3.23934 19.8963 3.05152 18.5109 3.0127 16.0828H14.25Z" fill="currentColor"/>
<path d="M20.9873 16.0828C20.9485 18.5109 20.7607 19.8963 19.8281 20.8289C18.9846 21.6721 17.7708 21.9063 15.75 21.9724V16.0828H20.9873Z" fill="currentColor"/>
<path d="M21 9.99976V13.9998C21 14.1992 20.9992 14.3937 20.999 14.5828H15.75V9.41675H20.999C20.9992 9.60592 21 9.8002 21 9.99976Z" fill="currentColor"/>
<path d="M14.25 9.41675V14.5828H3.00098C3.0008 14.3937 3 14.1992 3 13.9998V9.99976C3 9.8002 3.0008 9.60592 3.00098 9.41675H14.25Z" fill="currentColor"/>
<path d="M15.75 2.02612C17.7711 2.09225 18.9846 2.32818 19.8281 3.17163C20.7606 4.10411 20.9485 5.48888 20.9873 7.91675H15.75V2.02612Z" fill="currentColor"/>
<path d="M14.25 2.00171V7.91675H3.0127C3.05153 5.48888 3.2394 4.10411 4.17188 3.17163C5.34346 2.00017 7.22888 1.99976 11 1.99976H13C13.4419 1.99976 13.858 1.99982 14.25 2.00171Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'table-properties',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.25 2.00098C14.7947 2.0036 15.293 2.01141 15.75 2.02637V7.91699H20.9873C20.9947 8.37805 20.9985 8.87667 20.999 9.41699H15.75V14.583H20.999C20.9985 15.1233 20.9947 15.622 20.9873 16.083H15.75V21.9727C15.293 21.9876 14.7947 21.9954 14.25 21.998V16.083H3.0127C3.00532 15.622 3.00147 15.1233 3.00098 14.583H14.25V9.41699H3.00098C3.00147 8.87667 3.00532 8.37805 3.0127 7.91699H14.25V2.00098Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'table-properties',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3 15.333L21 15.333" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 8.6665L21 8.6665" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 2.00873L15 21.9913" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22H11C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14V10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2H13C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'table-properties',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3 15.333L21 15.333" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 8.6665L21 8.6665" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 2.00873L15 21.9913" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'table-properties',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 15.333H21M3 8.6665H21M15 2.00873L15 21.9913" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'table-properties',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.9995 1.25C13.7079 1.25 14.3601 1.25251 14.9595 1.26074C14.9727 1.26004 14.9861 1.25879 14.9995 1.25879C15.0231 1.25879 15.0468 1.25959 15.0698 1.26172C16.0006 1.27633 16.8022 1.31104 17.4888 1.40332C18.661 1.56095 19.6096 1.8934 20.3579 2.6416C21.1062 3.3899 21.4385 4.33846 21.5962 5.51074C21.7103 6.35928 21.7391 7.3835 21.7466 8.61035C21.748 8.62892 21.7495 8.64807 21.7495 8.66699C21.7495 8.67946 21.7482 8.69179 21.7476 8.7041C21.7497 9.11348 21.7495 9.54512 21.7495 10V14C21.7495 14.4545 21.7497 14.8858 21.7476 15.2949C21.7482 15.3076 21.7495 15.3202 21.7495 15.333C21.7495 15.3518 21.7479 15.3703 21.7466 15.3887C21.7391 16.616 21.7103 17.6405 21.5962 18.4893C21.4385 19.6615 21.1062 20.6101 20.3579 21.3584C19.6096 22.1066 18.661 22.439 17.4888 22.5967C16.8022 22.689 16.0006 22.7227 15.0698 22.7373C15.0468 22.7394 15.0231 22.7412 14.9995 22.7412C14.986 22.7412 14.9728 22.739 14.9595 22.7383C14.3601 22.7465 13.7079 22.75 12.9995 22.75H10.9995C9.13524 22.75 7.66104 22.7514 6.51025 22.5967C5.33809 22.439 4.38936 22.1066 3.64111 21.3584C2.89291 20.6101 2.56046 19.6615 2.40283 18.4893C2.28939 17.6455 2.26109 16.6279 2.25342 15.4102C2.25083 15.3848 2.24951 15.359 2.24951 15.333C2.24951 15.314 2.25007 15.2951 2.25147 15.2764C2.24945 14.8728 2.24951 14.4477 2.24951 14V10C2.24951 9.55163 2.24944 9.12583 2.25147 8.72168C2.25015 8.70363 2.24952 8.68538 2.24951 8.66699C2.24951 8.64079 2.2508 8.61438 2.25342 8.58887C2.2611 7.37156 2.28942 6.35431 2.40283 5.51074C2.56046 4.33852 2.89291 3.38989 3.64111 2.6416C4.38936 1.89336 5.33809 1.56098 6.51025 1.40332C7.66104 1.2486 9.13524 1.25 10.9995 1.25H12.9995ZM3.76318 16.083C3.77732 16.9629 3.80767 17.6829 3.88916 18.2891C4.02441 19.295 4.27854 19.8747 4.70166 20.2979C5.12483 20.721 5.70455 20.9751 6.71045 21.1104C7.73805 21.2485 9.09292 21.25 10.9995 21.25H12.9995C13.4453 21.25 13.8612 21.2499 14.2495 21.248V16.083H3.76318ZM15.7495 16.083V21.2227C16.3362 21.2031 16.8431 21.1702 17.2886 21.1104C18.2945 20.9751 18.8742 20.721 19.2974 20.2979C19.7206 19.8746 19.9746 19.2951 20.1099 18.2891C20.1914 17.6829 20.2227 16.9629 20.2368 16.083H15.7495ZM15.7495 9.41699V14.583H20.2485C20.2487 14.3946 20.2495 14.2003 20.2495 14V10C20.2495 9.79966 20.2487 9.60541 20.2485 9.41699H15.7495ZM3.74951 10V14C3.74951 14.2003 3.7503 14.3946 3.75049 14.583H14.2495V9.41699H3.75049C3.7503 9.60541 3.74951 9.79966 3.74951 10ZM15.7495 7.91699H20.2368C20.2227 7.03709 20.1914 6.3171 20.1099 5.71094C19.9746 4.70487 19.7206 4.12535 19.2974 3.70215C18.8742 3.27903 18.2945 3.0249 17.2886 2.88965C16.8431 2.82978 16.3362 2.7959 15.7495 2.77637V7.91699ZM10.9995 2.75C9.09292 2.75 7.73805 2.7515 6.71045 2.88965C5.70455 3.02492 5.12483 3.27898 4.70166 3.70215C4.27854 4.12535 4.02441 4.70497 3.88916 5.71094C3.80767 6.31709 3.77732 7.03711 3.76318 7.91699H14.2495V2.75098C13.8612 2.74909 13.4453 2.75 12.9995 2.75H10.9995Z" fill="currentColor"/>''',
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
