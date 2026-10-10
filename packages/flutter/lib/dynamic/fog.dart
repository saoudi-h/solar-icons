// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `fog` icon in every style.
///
/// Prefer the static widgets (e.g. `FogLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class FogIcon extends StatelessWidget {
  /// Creates the `fog` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const FogIcon({
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
    name: 'fog',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M6.7619 7.64706C6.7619 4.52827 9.32028 2 12.4762 2C15.4159 2 17.8371 4.19371 18.1551 7.01498C20.393 7.78024 22 9.88113 22 12.3529C22 13.412 21.705 14.403 21.1917 15.25H22C22.4142 15.25 22.75 15.5858 22.75 16C22.75 16.4142 22.4142 16.75 22 16.75H2C1.58579 16.75 1.25 16.4142 1.25 16C1.25 15.5858 1.58579 15.25 2 15.25H2.27095C2.09578 14.7878 2 14.2873 2 13.7647C2 11.4256 3.91878 9.52941 6.28571 9.52941C6.56983 9.52941 6.8475 9.55673 7.11616 9.60887C6.88706 8.9978 6.7619 8.33687 6.7619 7.64706Z" fill="currentColor"/>
<path d="M5 18.25C4.58579 18.25 4.25 18.5858 4.25 19C4.25 19.4142 4.58579 19.75 5 19.75H19C19.4142 19.75 19.75 19.4142 19.75 19C19.75 18.5858 19.4142 18.25 19 18.25H5Z" fill="currentColor"/>
<path d="M8 21.25C7.58579 21.25 7.25 21.5858 7.25 22C7.25 22.4142 7.58579 22.75 8 22.75H16C16.4142 22.75 16.75 22.4142 16.75 22C16.75 21.5858 16.4142 21.25 16 21.25H8Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'fog',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16 21.25C16.4142 21.25 16.75 21.5858 16.75 22C16.75 22.4142 16.4142 22.75 16 22.75H8C7.58579 22.75 7.25 22.4142 7.25 22C7.25 21.5858 7.58579 21.25 8 21.25H16Z" fill="currentColor"/>
<path d="M22 15.249C22.4142 15.249 22.75 15.5848 22.75 15.999C22.75 16.4132 22.4142 16.749 22 16.749H2C1.58579 16.749 1.25 16.4132 1.25 15.999C1.25013 15.5849 1.58586 15.249 2 15.249H22Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M19 18.25C19.4142 18.25 19.75 18.5858 19.75 19C19.75 19.4142 19.4142 19.75 19 19.75H5C4.58579 19.75 4.25 19.4142 4.25 19C4.25 18.5858 4.58579 18.25 5 18.25H19Z" fill="currentColor"/>
<path d="M12.4766 2C15.416 2.00019 17.8372 4.19365 18.1553 7.01465C20.393 7.77989 21.9998 9.88092 22 12.3525C22 13.4116 21.7047 14.403 21.1914 15.25H2.27051C2.09538 14.7879 2 14.2872 2 13.7646C2.00003 11.4256 3.91922 9.5293 6.28613 9.5293C6.57009 9.52932 6.84769 9.5563 7.11621 9.6084C6.88725 8.99756 6.76177 8.33698 6.76172 7.64746C6.76172 4.52868 9.32065 2 12.4766 2Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'fog',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 12.3529C22 13.7432 21.4916 15.0161 20.6486 16M14.381 7.02721C14.9767 6.81911 15.6178 6.70588 16.2857 6.70588C16.9404 6.70588 17.5693 6.81468 18.1551 7.01498M8.66667 10.2426C8.20528 9.9374 7.68059 9.71839 7.11616 9.60887C6.8475 9.55673 6.56983 9.52941 6.28571 9.52941C3.91878 9.52941 2 11.4256 2 13.7647C2 14.5852 2.2361 15.3512 2.64482 16M7.11616 9.60887C6.88706 8.9978 6.7619 8.33687 6.7619 7.64706C6.7619 4.52827 9.32028 2 12.4762 2C15.4159 2 17.8371 4.19371 18.1551 7.01498M18.1551 7.01498C18.8381 7.24853 19.4623 7.60648 20 8.06141" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 22H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 19H11M19 19H15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 16H22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'fog',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14.381 7.02721C14.9767 6.81911 15.6178 6.70588 16.2857 6.70588C16.9404 6.70588 17.5693 6.81468 18.1551 7.01498M8.66667 10.2426C8.20528 9.9374 7.68059 9.71839 7.11616 9.60887C6.8475 9.55673 6.56983 9.52941 6.28571 9.52941C3.91878 9.52941 2 11.4256 2 13.7647C2 14.5852 2.2361 15.3512 2.64482 16M7.11616 9.60887C6.88706 8.9978 6.7619 8.33687 6.7619 7.64706C6.7619 4.52827 9.32028 2 12.4762 2C15.4159 2 17.8371 4.19371 18.1551 7.01498M18.1551 7.01498C20.393 7.78024 22 9.88113 22 12.3529C22 13.7432 21.4916 15.0161 20.6486 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 22H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 19H19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 16H22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'fog',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 22H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 16H22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.381 7.02721C14.9767 6.81911 15.6178 6.70588 16.2857 6.70588C16.9404 6.70588 17.5693 6.81468 18.1551 7.01498M8.66667 10.2426C8.20528 9.9374 7.68059 9.71839 7.11616 9.60887C6.8475 9.55673 6.56983 9.52941 6.28571 9.52941C3.91878 9.52941 2 11.4256 2 13.7647C2 14.5852 2.2361 15.3512 2.64482 16M7.11616 9.60887C6.88706 8.9978 6.7619 8.33687 6.7619 7.64706C6.7619 4.52827 9.32028 2 12.4762 2C15.4159 2 17.8371 4.19371 18.1551 7.01498M18.1551 7.01498C20.393 7.78024 22 9.88113 22 12.3529C22 13.7432 21.4916 15.0161 20.6486 16" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5 19H19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'fog',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.4762 2.75C9.7261 2.75 7.5119 4.95083 7.5119 7.64706C7.5119 8.10922 7.5766 8.55551 7.69729 8.97813C8.19449 9.12162 8.65991 9.3389 9.08045 9.61709C9.42592 9.84561 9.52072 10.3109 9.29219 10.6564C9.06366 11.0019 8.59835 11.0967 8.25288 10.8681C7.87207 10.6162 7.43917 10.4355 6.9733 10.3451C6.75147 10.3021 6.52165 10.2794 6.28571 10.2794C4.3246 10.2794 2.75 11.8482 2.75 13.7647C2.75 14.2966 2.87042 14.7997 3.08603 15.25H20.2886C20.8937 14.438 21.25 13.4369 21.25 12.3529C21.25 10.2162 19.8607 8.39087 17.9124 7.72463C17.4038 7.55072 16.8568 7.45588 16.2857 7.45588C15.7031 7.45588 15.1455 7.55458 14.6283 7.73526C14.2372 7.87185 13.8095 7.66557 13.6729 7.27453C13.5363 6.88348 13.7426 6.45575 14.1336 6.31916C14.8079 6.08364 15.5326 5.95588 16.2857 5.95588C16.5812 5.95588 16.8723 5.97555 17.1577 6.01367C16.477 4.11631 14.6422 2.75 12.4762 2.75ZM18.8314 6.47127C18.2724 3.49369 15.6343 1.25 12.4762 1.25C8.91446 1.25 6.0119 4.10572 6.0119 7.64706C6.0119 8.03413 6.04673 8.41355 6.11351 8.78228C3.41987 8.87207 1.25 11.0605 1.25 13.7647C1.25 14.3422 1.34944 14.8973 1.53223 15.4137C1.36021 15.5511 1.25 15.7627 1.25 16C1.25 16.4142 1.58579 16.75 2 16.75H2.6334C2.64148 16.7501 2.64956 16.7501 2.65765 16.75H20.6437C20.6467 16.75 20.6498 16.75 20.6528 16.75H22C22.4142 16.75 22.75 16.4142 22.75 16C22.75 15.6025 22.4407 15.2772 22.0496 15.2516C22.4972 14.3816 22.75 13.3963 22.75 12.3529C22.75 9.70929 21.1313 7.44751 18.8314 6.47127ZM4.25 19C4.25 18.5858 4.58579 18.25 5 18.25H19C19.4142 18.25 19.75 18.5858 19.75 19C19.75 19.4142 19.4142 19.75 19 19.75H5C4.58579 19.75 4.25 19.4142 4.25 19ZM7.25 22C7.25 21.5858 7.58579 21.25 8 21.25H16C16.4142 21.25 16.75 21.5858 16.75 22C16.75 22.4142 16.4142 22.75 16 22.75H8C7.58579 22.75 7.25 22.4142 7.25 22Z" fill="currentColor"/>''',
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
