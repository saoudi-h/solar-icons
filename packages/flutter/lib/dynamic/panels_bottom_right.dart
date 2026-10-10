// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panels-bottom-right` icon in every style.
///
/// Prefer the static widgets (e.g. `PanelsBottomRightLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class PanelsBottomRightIcon extends StatelessWidget {
  /// Creates the `panels-bottom-right` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const PanelsBottomRightIcon({
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
    name: 'panels-bottom-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M2.75391 13.75C2.75048 13.2102 2.75 12.6285 2.75 12C2.75 9.62177 2.75198 7.91326 2.92676 6.61328C3.09865 5.33508 3.42551 4.56472 3.99512 3.99512C4.56472 3.42551 5.33508 3.09864 6.61328 2.92676C7.91326 2.75198 9.62178 2.75 12 2.75C12.8274 2.75 13.5737 2.75404 14.25 2.76172L14.25 13.75L2.75391 13.75Z" fill="currentColor"/>
<path d="M15.75 13.75L15.75 2.79492C16.3613 2.8209 16.9024 2.86164 17.3867 2.92676C18.6649 3.09865 19.4353 3.42551 20.0049 3.99512C20.5745 4.56472 20.9014 5.33508 21.0732 6.61328C21.248 7.91326 21.25 9.62177 21.25 12C21.25 12.6285 21.2495 13.2102 21.2461 13.75L15.75 13.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 21.25C9.62177 21.25 7.91326 21.248 6.61328 21.0732C5.33508 20.9014 4.56472 20.5745 3.99512 20.0049C3.42551 19.4353 3.09865 18.6649 2.92676 17.3867C2.84442 16.7743 2.80084 16.0711 2.77734 15.25L21.2227 15.25C21.1992 16.0711 21.1556 16.7743 21.0732 17.3867C20.9014 18.6649 20.5745 19.4353 20.0049 20.0049C19.4353 20.5745 18.6649 20.9014 17.3867 21.0732C16.0867 21.248 14.3782 21.25 12 21.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'panels-bottom-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M2.00293 13.75C1.99954 13.2056 2 12.6234 2 12C2 7.28595 2.00038 4.92931 3.46484 3.46484C4.92931 2.00038 7.28596 2 12 2C12.8185 2 14.316 2.00015 15 2.00781L15 14.5L2 14.5L2.00293 13.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M21.9736 14.5L21.9736 15.25C21.8993 17.8894 21.6154 19.4549 20.5351 20.5352C19.0707 21.9996 16.714 22 12 22C7.28597 22 4.92928 21.9996 3.46482 20.5352C2.38459 19.4549 2.1007 17.8893 2.02635 15.25L1.99998 14.5L15 14.5L15 2L15.75 2.04394C18.0903 2.14114 19.5249 2.45463 20.5351 3.46484C21.9996 4.92931 22 7.28597 22 12C22 12.6234 22.0004 13.2056 21.9971 13.75L21.9736 14.5Z" fill="currentColor"/>

<path opacity="0.5" d="M15 14.5L15 2L15.75 2.04394C18.0903 2.14114 19.5249 2.45463 20.5351 3.46484C21.9996 4.92931 22 7.28597 22 12C22 12.6234 22.0004 13.2056 21.997 13.75L21.9736 14.5L15 14.5Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'panels-bottom-right',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 2.02008L15 14.4999" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.9893 14.5L11.005 14.5M7.00497 14.5L2.01111 14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2.49073 4.43821 2.16444 5.80655 2.0551 8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'panels-bottom-right',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46446C4.92893 2 7.28596 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 14.5L2 14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 2.02008L15 14.4999" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'panels-bottom-right',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46446C4.92893 2 7.28596 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 14.4999L2 14.4999M15 2.02002L15 14.4999" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'panels-bottom-right',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C13.1029 1.25 14.0924 1.2508 14.9795 1.27051C14.9863 1.27033 14.9931 1.27051 15 1.27051C15.0144 1.27051 15.0287 1.27068 15.043 1.27149C16.008 1.29411 16.8509 1.34065 17.5859 1.43945C19.0307 1.63369 20.1706 2.03976 21.0654 2.93457C21.9602 3.82938 22.3663 4.96933 22.5605 6.41406C22.7518 7.83717 22.75 9.66439 22.75 12C22.75 12.8552 22.7454 13.6422 22.7363 14.3662C22.7442 14.4097 22.75 14.4542 22.75 14.5C22.75 14.553 22.7429 14.6044 22.7324 14.6543C22.7137 15.7835 22.6724 16.7539 22.5605 17.5859C22.3663 19.0307 21.9602 20.1706 21.0654 21.0654C20.1706 21.9602 19.0307 22.3663 17.5859 22.5605C16.1628 22.7518 14.3356 22.75 12 22.75C9.66439 22.75 7.83717 22.7518 6.41406 22.5605C4.96933 22.3663 3.82938 21.9602 2.93457 21.0654C2.03976 20.1706 1.63369 19.0307 1.43945 17.5859C1.32761 16.7538 1.28537 15.7835 1.2666 14.6543C1.25617 14.6045 1.25 14.5529 1.25 14.5C1.25 14.4543 1.25486 14.4097 1.2627 14.3662C1.25362 13.6422 1.25 12.8552 1.25 12C1.25 9.6644 1.24817 7.83717 1.43945 6.41406C1.63369 4.96933 2.03976 3.82938 2.93457 2.93457C3.82938 2.03976 4.96933 1.63369 6.41406 1.43945C7.83717 1.24817 9.6644 1.25 12 1.25ZM2.77734 15.25C2.80084 16.0711 2.84442 16.7743 2.92676 17.3867C3.09865 18.6649 3.42551 19.4353 3.99512 20.0049C4.56472 20.5745 5.33508 20.9014 6.61328 21.0732C7.91326 21.248 9.62178 21.25 12 21.25C14.3782 21.25 16.0867 21.248 17.3867 21.0732C18.6649 20.9014 19.4353 20.5745 20.0049 20.0049C20.5745 19.4353 20.9014 18.6649 21.0732 17.3867C21.1556 16.7743 21.1992 16.0711 21.2227 15.25H2.77734ZM15.75 13.75H21.2461C21.2495 13.2102 21.25 12.6285 21.25 12C21.25 9.62178 21.248 7.91326 21.0732 6.61328C20.9014 5.33508 20.5745 4.56472 20.0049 3.99512C19.4353 3.42551 18.6649 3.09865 17.3867 2.92676C16.9024 2.86164 16.3613 2.81993 15.75 2.79395V13.75ZM12 2.75C9.62178 2.75 7.91326 2.75198 6.61328 2.92676C5.33508 3.09865 4.56472 3.42551 3.99512 3.99512C3.42551 4.56472 3.09865 5.33508 2.92676 6.61328C2.75198 7.91326 2.75 9.62178 2.75 12C2.75 12.6285 2.75048 13.2102 2.75391 13.75H14.25V2.76074C13.5737 2.75307 12.8274 2.75 12 2.75Z" fill="currentColor"/>''',
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
