// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `dislike` icon in every style.
///
/// Prefer the static widgets (e.g. `DislikeLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class DislikeIcon extends StatelessWidget {
  /// Creates the `dislike` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const DislikeIcon({
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
    name: 'dislike',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M13.2451 2.75C16.7264 2.75 19.6972 5.17591 20.2695 8.48535L20.9756 12.5645C21.1518 13.5834 20.3679 14.5156 19.335 14.5156H14.1543C13.6408 14.5156 13.2489 14.9771 13.332 15.4844L13.9951 19.5283C14.1028 20.1854 14.0725 20.8585 13.9053 21.5029C13.7667 22.0367 13.3541 22.4647 12.8125 22.6387L12.668 22.6855C12.3406 22.7907 11.9834 22.7659 11.6748 22.6172C11.3351 22.4535 11.0863 22.155 10.9941 21.7998L10.5186 19.9658C10.3672 19.3825 10.1465 18.8192 9.8623 18.2871C9.44695 17.5096 8.80421 16.8877 8.13672 16.3125L6.69824 15.0723C6.29282 14.7228 6.07997 14.1996 6.12598 13.666L6.93848 4.27246C7.01321 3.41117 7.73307 2.75 8.59668 2.75H13.2451Z" fill="currentColor"/>
<path d="M3.48633 2C4.21226 2 4.78108 2.62201 4.71875 3.34375L3.74707 14.5801C3.71247 14.9802 3.369 15.2819 2.96777 15.2646C2.56651 15.2473 2.25 14.9173 2.25 14.5156V3.2373C2.25 2.55491 2.80269 2.0002 3.48633 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'dislike',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.2694 8.48505L20.9749 12.5648C21.1511 13.5838 20.3675 14.5158 19.3345 14.5158H14.1534C13.6399 14.5158 13.2489 14.9767 13.332 15.484L13.9947 19.5286C14.1024 20.1857 14.0716 20.858 13.9044 21.5025C13.7659 22.0364 13.354 22.465 12.8123 22.6391L12.6673 22.6856C12.3399 22.7908 11.9826 22.7663 11.6739 22.6176C11.3342 22.4539 11.0856 22.1553 10.9935 21.8001L10.5178 19.9663C10.3664 19.3828 10.146 18.8195 9.8617 18.2874C9.44634 17.5098 8.80416 16.8875 8.13663 16.3123L6.69789 15.0725C6.29223 14.7229 6.07919 14.1994 6.12535 13.6656L6.93752 4.27293C7.01201 3.41139 7.73231 2.75 8.59609 2.75H13.2447C16.726 2.75 19.697 5.17561 20.2694 8.48505Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2.96767 15.2651C3.36893 15.2824 3.71261 14.9806 3.74721 14.5804L4.71881 3.34389C4.78122 2.6221 4.21268 2 3.48671 2C2.80289 2 2.25 2.55474 2.25 3.23726V14.5158C2.25 14.9174 2.5664 15.2478 2.96767 15.2651Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'dislike',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3 2.48733V13.7659" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 13.7658L3.9716 2.52928C3.99621 2.24466 3.77207 2 3.48671 2C3.21791 2 3 2.21815 3 2.48726" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9951 18.7785C14.1027 19.4356 14.072 20.108 13.9048 20.7524" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.59634 2C7.73256 2 7.01226 2.66139 6.93776 3.52293L6.1256 12.9156C6.07944 13.4494 6.29247 13.973 6.69813 14.3225L8.13687 15.5623C8.8044 16.1375 9.44659 16.7598 9.86194 17.5374C10.1462 18.0695 10.3667 18.6328 10.518 19.2163L10.9938 21.0501C11.0859 21.4053 11.3344 21.7039 11.6742 21.8676C11.9829 22.0163 12.3402 22.0408 12.6676 21.9356L12.8126 21.8891C13.3543 21.715 13.7662 21.2864 13.9047 20.7525" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9949 18.7787L13.3322 14.7341C13.2491 14.2268 13.6401 13.7659 14.1536 13.7659H19.3347" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.3349 13.7658C20.3678 13.7658 21.1515 12.8338 20.9752 11.8148L20.2697 7.73505C19.6974 4.42561 16.7263 2 13.2451 2H8.59644" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'dislike',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3 2.48733V13.7659" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 13.7658L3.9716 2.52928C3.99621 2.24466 3.77207 2 3.48671 2C3.21791 2 3 2.21815 3 2.48726" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9951 18.7785C14.1027 19.4356 14.072 20.108 13.9048 20.7524" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.59609 2C7.73231 2 7.01201 2.66139 6.93752 3.52293L6.12535 12.9156C6.07919 13.4494 6.29223 13.973 6.69789 14.3225L8.13663 15.5623C8.80416 16.1375 9.44635 16.7598 9.8617 17.5374C10.146 18.0695 10.3664 18.6328 10.5178 19.2163L10.9935 21.0501C11.0856 21.4053 11.3342 21.7039 11.6739 21.8676C11.9826 22.0163 12.3399 22.0408 12.6673 21.9356L12.8123 21.8891C13.354 21.715 13.7659 21.2864 13.9044 20.7525" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9951 18.7787L13.3325 14.7341C13.2493 14.2268 13.6404 13.7659 14.1539 13.7659H19.335" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.3351 13.7658C20.3681 13.7658 21.1517 12.8338 20.9755 11.8148L20.27 7.73505C19.6976 4.42561 16.7266 2 13.2453 2H8.59668" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'dislike',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13.9951 18.7785C14.1027 19.4356 14.072 20.108 13.9048 20.7524" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.59634 2C7.73256 2 7.01226 2.66139 6.93776 3.52293L6.1256 12.9156C6.07944 13.4494 6.29247 13.973 6.69813 14.3225L8.13687 15.5623C8.8044 16.1375 9.44659 16.7598 9.86194 17.5374C10.1462 18.0695 10.3667 18.6328 10.518 19.2163L10.9938 21.0501C11.0859 21.4053 11.3344 21.7039 11.6742 21.8676C11.9829 22.0163 12.3402 22.0408 12.6676 21.9356L12.8126 21.8891C13.3543 21.715 13.7662 21.2864 13.9047 20.7525" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9949 18.7787L13.3322 14.7341C13.2491 14.2268 13.6401 13.7659 14.1536 13.7659H19.3347" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.3349 13.7658C20.3678 13.7658 21.1515 12.8338 20.9752 11.8148L20.2697 7.73505C19.6974 4.42561 16.7263 2 13.2451 2H8.59644" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<g opacity="0.5">
<path d="M3 2.48733V13.7659" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 13.7658L3.9716 2.52928C3.99621 2.24466 3.77207 2 3.48671 2C3.21791 2 3 2.21815 3 2.48726" stroke="currentColor" stroke-linecap="round"/>
</g>''',
  );

  static const outline = SolarIconData(
    name: 'dislike',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.4382 21.2216C12.2931 21.2682 12.1345 21.2569 11.9998 21.192C11.8523 21.1209 11.7548 20.9968 11.7197 20.8618L11.244 19.0279C11.0777 18.3866 10.8354 17.768 10.5235 17.184C10.0392 16.2773 9.30632 15.58 8.62647 14.9942L7.18773 13.7544C6.96475 13.5622 6.8474 13.2742 6.87282 12.9802L7.68498 3.58754C7.72601 3.11303 8.12244 2.75 8.59635 2.75H13.245C16.3813 2.75 19.0238 4.93226 19.5306 7.86285L20.2361 11.9426C20.3332 12.5041 19.9014 13.0158 19.3348 13.0158H14.1537C13.1766 13.0158 12.4344 13.8924 12.5921 14.8553L13.2548 18.8998C13.3456 19.4539 13.3197 20.0208 13.1787 20.5642C13.1072 20.8399 12.8896 21.0766 12.5832 21.175L12.4382 21.2216L12.6676 21.9356L12.4382 21.2216ZM11.3486 22.5433C11.8312 22.7758 12.3873 22.8135 12.897 22.6497L13.042 22.6031L12.8126 21.8891L13.042 22.6031C13.819 22.3535 14.4252 21.7328 14.6307 20.9408C14.8241 20.1952 14.8596 19.4174 14.7351 18.6573L14.0724 14.6128C14.0639 14.561 14.1038 14.5158 14.1537 14.5158H19.3348C20.8341 14.5158 21.9695 13.1635 21.7142 11.687L21.0087 7.60725C20.3708 3.91896 17.0712 1.25 13.245 1.25H8.59635C7.3427 1.25 6.29852 2.20975 6.19056 3.45832L5.3784 12.851C5.31149 13.6247 5.62022 14.3837 6.20855 14.8907L7.64729 16.1305C8.3025 16.6951 8.85404 17.2423 9.20042 17.8908C9.45699 18.3711 9.65573 18.8789 9.79208 19.4046L10.2678 21.2384C10.417 21.8137 10.8166 22.2869 11.3486 22.5433ZM2.96767 14.5151C3.36893 14.5324 3.71261 14.2306 3.74721 13.8304L4.71881 2.59389C4.78122 1.8721 4.21268 1.25 3.48671 1.25C2.80289 1.25 2.25 1.80474 2.25 2.48726V13.7658C2.25 14.1674 2.5664 14.4978 2.96767 14.5151Z" fill="currentColor"/>''',
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
