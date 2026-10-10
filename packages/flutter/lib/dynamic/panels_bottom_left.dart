// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panels-bottom-left` icon in every style.
///
/// Prefer the static widgets (e.g. `PanelsBottomLeftLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class PanelsBottomLeftIcon extends StatelessWidget {
  /// Creates the `panels-bottom-left` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const PanelsBottomLeftIcon({
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
    name: 'panels-bottom-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21.2461 13.75C21.2495 13.2102 21.25 12.6285 21.25 12C21.25 9.62177 21.248 7.91326 21.0732 6.61328C20.9014 5.33508 20.5745 4.56472 20.0049 3.99512C19.4353 3.42551 18.6649 3.09864 17.3867 2.92676C16.0867 2.75198 14.3782 2.75 12 2.75C11.1726 2.75 10.4263 2.75404 9.75 2.76172L9.75 13.75L21.2461 13.75Z" fill="currentColor"/>
<path d="M8.25 13.75L8.25 2.79492C7.63871 2.8209 7.09763 2.86164 6.61328 2.92676C5.33508 3.09865 4.56472 3.42551 3.99512 3.99512C3.42551 4.56472 3.09865 5.33508 2.92676 6.61328C2.75198 7.91326 2.75 9.62177 2.75 12C2.75 12.6285 2.75048 13.2102 2.75391 13.75L8.25 13.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 21.25C14.3782 21.25 16.0867 21.248 17.3867 21.0732C18.6649 20.9014 19.4353 20.5745 20.0049 20.0049C20.5745 19.4353 20.9014 18.6649 21.0732 17.3867C21.1556 16.7743 21.1992 16.0711 21.2227 15.25L2.77734 15.25C2.80084 16.0711 2.84442 16.7743 2.92676 17.3867C3.09865 18.6649 3.42551 19.4353 3.99512 20.0049C4.56472 20.5745 5.33508 20.9014 6.61328 21.0732C7.91326 21.248 9.62178 21.25 12 21.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'panels-bottom-left',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.9971 13.75C22.0005 13.2056 22 12.6234 22 12C22 7.28595 21.9996 4.92931 20.5352 3.46484C19.0707 2.00038 16.714 2 12 2C11.1815 2 9.68405 2.00015 9 2.00781L9 14.5L22 14.5L21.9971 13.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.02639 14.5L2.02639 15.25C2.10074 17.8894 2.38461 19.4549 3.46486 20.5352C4.92933 21.9996 7.28601 22 12 22C16.714 22 19.0707 21.9996 20.5352 20.5352C21.6154 19.4549 21.8993 17.8893 21.9737 15.25L22 14.5L9.00002 14.5L9.00002 2L8.25002 2.04394C5.90966 2.14114 4.47508 2.45463 3.46486 3.46484C2.00041 4.92931 2.00002 7.28597 2.00002 12C2.00002 12.6234 1.99956 13.2056 2.00295 13.75L2.02639 14.5Z" fill="currentColor"/>

<path opacity="0.5" d="M9.00002 14.5L9.00002 2L8.25002 2.04394C5.90966 2.14114 4.47508 2.45463 3.46486 3.46484C2.00041 4.92931 2.00002 7.28597 2.00002 12C2.00002 12.6234 1.99956 13.2056 2.00295 13.75L2.02639 14.5L9.00002 14.5Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'panels-bottom-left',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 2.02008L9 14.4999" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.01099 14.5L12.9953 14.5M16.9953 14.5L21.9891 14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2.49073 4.43821 2.16444 5.80655 2.0551 8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'panels-bottom-left',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46446C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46446 3.46447C2 4.92893 2 7.28595 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 14.5L2 14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 2.02008L9 14.4999" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'panels-bottom-left',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46446C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46446 3.46447C2 4.92893 2 7.28595 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 14.4999L2 14.4999M9 2.02002L9 14.4999" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'panels-bottom-left',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C14.3356 1.25 16.1628 1.24817 17.5859 1.43945C19.0307 1.63369 20.1706 2.03976 21.0654 2.93457C21.9602 3.82938 22.3663 4.96933 22.5605 6.41406C22.7518 7.83717 22.75 9.6644 22.75 12C22.75 12.8552 22.7454 13.6422 22.7363 14.3662C22.7442 14.4097 22.75 14.4542 22.75 14.5C22.75 14.553 22.7429 14.6044 22.7324 14.6543C22.7137 15.7835 22.6724 16.7539 22.5605 17.5859C22.3663 19.0307 21.9602 20.1706 21.0654 21.0654C20.1706 21.9602 19.0307 22.3663 17.5859 22.5605C16.1628 22.7518 14.3356 22.75 12 22.75C9.66439 22.75 7.83717 22.7518 6.41406 22.5605C4.96933 22.3663 3.82938 21.9602 2.93457 21.0654C2.03976 20.1706 1.63369 19.0307 1.43945 17.5859C1.32761 16.7538 1.28537 15.7835 1.2666 14.6543C1.25617 14.6045 1.25 14.5529 1.25 14.5C1.25 14.4543 1.25486 14.4097 1.2627 14.3662C1.25362 13.6422 1.25 12.8552 1.25 12C1.25 9.66439 1.24817 7.83717 1.43945 6.41406C1.63369 4.96933 2.03976 3.82938 2.93457 2.93457C3.82938 2.03976 4.96933 1.63369 6.41406 1.43945C7.14886 1.34069 7.99142 1.29412 8.95606 1.27149C8.9706 1.27064 8.98524 1.27051 9 1.27051C9.00653 1.27051 9.01304 1.27034 9.01953 1.27051C9.90692 1.25078 10.8967 1.25 12 1.25ZM2.77734 15.25C2.80084 16.0711 2.84442 16.7743 2.92676 17.3867C3.09865 18.6649 3.42551 19.4353 3.99512 20.0049C4.56472 20.5745 5.33508 20.9014 6.61328 21.0732C7.91326 21.248 9.62178 21.25 12 21.25C14.3782 21.25 16.0867 21.248 17.3867 21.0732C18.6649 20.9014 19.4353 20.5745 20.0049 20.0049C20.5745 19.4353 20.9014 18.6649 21.0732 17.3867C21.1556 16.7743 21.1992 16.0711 21.2227 15.25H2.77734ZM12 2.75C11.1726 2.75 10.4263 2.75307 9.75 2.76074V13.75H21.2461C21.2495 13.2102 21.25 12.6285 21.25 12C21.25 9.62178 21.248 7.91326 21.0732 6.61328C20.9014 5.33508 20.5745 4.56472 20.0049 3.99512C19.4353 3.42551 18.6649 3.09865 17.3867 2.92676C16.0867 2.75198 14.3782 2.75 12 2.75ZM8.25 2.79395C7.6387 2.81993 7.09764 2.86164 6.61328 2.92676C5.33508 3.09865 4.56472 3.42551 3.99512 3.99512C3.42551 4.56472 3.09865 5.33508 2.92676 6.61328C2.75198 7.91326 2.75 9.62178 2.75 12C2.75 12.6285 2.75048 13.2102 2.75391 13.75H8.25V2.79395Z" fill="currentColor"/>''',
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
