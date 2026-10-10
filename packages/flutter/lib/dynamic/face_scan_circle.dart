// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `face-scan-circle` icon in every style.
///
/// Prefer the static widgets (e.g. `FaceScanCircleLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class FaceScanCircleIcon extends StatelessWidget {
  /// Creates the `face-scan-circle` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const FaceScanCircleIcon({
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
    name: 'face-scan-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.8011 2.56967C10.8792 2.95444 10.6305 3.32966 10.2458 3.40776C6.81159 4.10481 4.10481 6.81156 3.40771 10.2457C3.3296 10.6305 2.95437 10.8791 2.56961 10.801C2.18484 10.7229 1.93624 10.3477 2.01435 9.9629C2.82504 5.96912 5.96917 2.82503 9.96297 2.0144C10.3477 1.9363 10.723 2.1849 10.8011 2.56967Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M2.56976 13.199C2.95452 13.1209 3.32975 13.3695 3.40786 13.7543C4.10496 17.1885 6.81174 19.8952 10.2459 20.5923C10.6307 20.6704 10.8793 21.0456 10.8012 21.4304C10.7231 21.8151 10.3479 22.0638 9.96312 21.9857C5.96932 21.175 2.82519 18.0309 2.0145 14.0371C1.9364 13.6524 2.18499 13.2772 2.56976 13.199Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.1989 2.56962C13.277 2.18485 13.6523 1.93625 14.037 2.01435C18.0308 2.82498 21.175 5.96907 21.9857 9.96285C22.0638 10.3476 21.8152 10.7228 21.4304 10.801C21.0456 10.8791 20.6704 10.6305 20.5923 10.2457C19.8952 6.81151 17.1884 4.10476 13.7542 3.40771C13.3695 3.32961 13.1208 2.95439 13.1989 2.56962Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M21.4304 13.199C21.8152 13.2772 22.0638 13.6524 21.9857 14.0371C21.175 18.0309 18.0308 21.175 14.037 21.9857C13.6523 22.0637 13.277 21.8151 13.1989 21.4304C13.1208 21.0456 13.3695 20.6704 13.7542 20.5923C17.1884 19.8952 19.8952 17.1885 20.5923 13.7543C20.6704 13.3695 21.0456 13.1209 21.4304 13.199Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.9999 19.5828C16.1878 19.5828 19.5827 16.1879 19.5827 12C19.5827 7.81215 16.1878 4.41721 11.9999 4.41721C7.81206 4.41721 4.41712 7.81215 4.41712 12C4.41712 16.1879 7.81206 19.5828 11.9999 19.5828ZM8.94071 14.5387C9.17451 14.2233 9.61973 14.1572 9.93514 14.391C10.5247 14.828 11.2355 15.0805 11.9999 15.0805C12.7643 15.0805 13.4751 14.828 14.0647 14.391C14.3801 14.1572 14.8253 14.2233 15.0591 14.5387C15.2929 14.8542 15.2268 15.2994 14.9114 15.5332C14.0904 16.1417 13.0857 16.5023 11.9999 16.5023C10.9141 16.5023 9.90944 16.1417 9.0885 15.5332C8.77308 15.2994 8.70692 14.8542 8.94071 14.5387ZM15.3174 10.4005C15.3174 11.0876 14.9461 11.6446 14.488 11.6446C14.03 11.6446 13.6587 11.0876 13.6587 10.4005C13.6587 9.71345 14.03 9.15647 14.488 9.15647C14.9461 9.15647 15.3174 9.71345 15.3174 10.4005ZM9.51182 11.6446C9.96987 11.6446 10.3412 11.0876 10.3412 10.4005C10.3412 9.71345 9.96987 9.15647 9.51182 9.15647C9.05377 9.15647 8.68245 9.71345 8.68245 10.4005C8.68245 11.0876 9.05377 11.6446 9.51182 11.6446Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'face-scan-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M2.56905 13.1989C2.9537 13.1208 3.32967 13.369 3.40791 13.7536C4.10501 17.1878 6.81161 19.8954 10.2458 20.5925C10.6304 20.6707 10.8786 21.0457 10.8005 21.4304C10.7222 21.8149 10.3472 22.0631 9.9626 21.9851C5.96894 21.1743 2.82503 18.0305 2.01436 14.0368C1.93629 13.6522 2.18453 13.2772 2.56905 13.1989Z" fill="currentColor"/>
<path d="M21.4304 13.1989C21.815 13.2772 22.0631 13.6521 21.9851 14.0368C21.1744 18.0305 18.0305 21.1744 14.0368 21.9851C13.6522 22.0631 13.2772 21.815 13.1989 21.4304C13.1208 21.0457 13.369 20.6697 13.7536 20.5915C17.1878 19.8945 19.8954 17.1878 20.5925 13.7536C20.6708 13.3691 21.0458 13.1209 21.4304 13.1989Z" fill="currentColor"/>
<path d="M14.0642 14.3903C14.3795 14.1566 14.8255 14.2225 15.0593 14.5378C15.2931 14.8532 15.2263 15.2991 14.9108 15.5329C14.09 16.1413 13.0853 16.5017 11.9997 16.5017C10.9141 16.5016 9.90945 16.1413 9.08858 15.5329C8.77317 15.2991 8.70635 14.8532 8.94014 14.5378C9.17395 14.2224 9.61987 14.1566 9.93526 14.3903C10.5248 14.8273 11.2354 15.0798 11.9997 15.0798C12.764 15.0798 13.4746 14.8273 14.0642 14.3903Z" fill="currentColor"/>
<path d="M9.51143 9.15596C9.96948 9.15596 10.3415 9.71303 10.3415 10.4001C10.3415 11.0871 9.96946 11.6442 9.51143 11.6442C9.05352 11.644 8.68236 11.087 8.68233 10.4001C8.68233 9.71316 9.0535 9.15617 9.51143 9.15596Z" fill="currentColor"/>
<path d="M14.488 9.15596C14.946 9.15602 15.3171 9.71307 15.3171 10.4001C15.3171 11.0871 14.946 11.6442 14.488 11.6442C14.03 11.6442 13.6589 11.0871 13.6589 10.4001C13.6589 9.71303 14.0299 9.15596 14.488 9.15596Z" fill="currentColor"/>
<path d="M9.9626 2.01436C10.3472 1.93628 10.7222 2.18449 10.8005 2.56904C10.8786 2.95374 10.6304 3.32972 10.2458 3.40791C6.81161 4.10496 4.10404 6.81162 3.40694 10.2458C3.32864 10.6303 2.95367 10.8786 2.56905 10.8005C2.18445 10.7222 1.93628 10.3473 2.01436 9.9626C2.82507 5.96889 5.96889 2.82502 9.9626 2.01436Z" fill="currentColor"/>
<path d="M14.0368 2.01436C18.0305 2.82503 21.1744 5.96887 21.9851 9.9626C22.0631 10.3473 21.815 10.7223 21.4304 10.8005C21.0458 10.8786 20.6708 10.6303 20.5925 10.2458C19.8954 6.81162 17.1878 4.10398 13.7536 3.40693C13.3691 3.32866 13.1209 2.95368 13.1989 2.56904C13.2772 2.18446 13.6522 1.93628 14.0368 2.01436Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.9998 19.5826C16.1877 19.5826 19.5826 16.1877 19.5826 11.9998C19.5826 7.81193 16.1877 4.41699 11.9998 4.41699C7.81193 4.41699 4.41699 7.81193 4.41699 11.9998C4.41699 16.1877 7.81193 19.5826 11.9998 19.5826Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'face-scan-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 16C9.85038 16.6303 10.8846 17 12 17C13.1154 17 14.1496 16.6303 15 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.19995 10.0002C2.99533 6.08188 6.08174 2.99551 10.0001 2.2002" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.2002 14C2.99557 17.9183 6.08198 21.0047 10.0003 21.8" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.8001 10.0002C21.0047 6.08188 17.9183 2.99551 14 2.2002" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.8001 14C21.0047 17.9183 17.9183 21.0047 14 21.8" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'face-scan-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9 16C9.85038 16.6303 10.8846 17 12 17C13.1154 17 14.1496 16.6303 15 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.2002 10.0002C2.99557 6.08188 6.08198 2.99551 10.0003 2.2002" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.2002 14C2.99557 17.9183 6.08198 21.0047 10.0003 21.8" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.8001 10.0002C21.0047 6.08188 17.9183 2.99551 14 2.2002" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.8001 14C21.0047 17.9183 17.9183 21.0047 14 21.8" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'face-scan-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 16C9.85038 16.6303 10.8846 17 12 17C13.1154 17 14.1496 16.6303 15 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.19995 10.0002C2.99533 6.08188 6.08174 2.99551 10.0001 2.2002" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2.2002 14C2.99557 17.9183 6.08198 21.0047 10.0003 21.8" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M21.8001 10.0002C21.0047 6.08188 17.9183 2.99551 14 2.2002" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M21.8001 14C21.0047 17.9183 17.9183 21.0047 14 21.8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'face-scan-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M15.9998 10.5004C15.9998 11.3288 15.5521 12.0004 14.9998 12.0004C14.4475 12.0004 13.9998 11.3288 13.9998 10.5004C13.9998 9.67196 14.4475 9.00039 14.9998 9.00039C15.5521 9.00039 15.9998 9.67196 15.9998 10.5004Z" fill="currentColor"/>
<path d="M9.99982 10.5004C9.99982 11.3288 9.5521 12.0004 8.99982 12.0004C8.44753 12.0004 7.99982 11.3288 7.99982 10.5004C7.99982 9.67196 8.44753 9.00039 8.99982 9.00039C9.5521 9.00039 9.99982 9.67196 9.99982 10.5004Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.2648 2.05116C13.3472 1.64522 13.7431 1.38294 14.149 1.46533C18.3625 2.32056 21.6797 5.63763 22.535 9.85114C22.6173 10.2571 22.3551 10.6529 21.9491 10.7353C21.5432 10.8177 21.1473 10.5555 21.0649 10.1495C20.3295 6.52642 17.4738 3.67075 13.8506 2.93535C13.4447 2.85296 13.1824 2.45709 13.2648 2.05116ZM10.735 2.05121C10.8174 2.45714 10.5551 2.85301 10.1492 2.93541C6.52602 3.6708 3.67032 6.52647 2.93486 10.1496C2.85246 10.5555 2.45659 10.8178 2.05065 10.7354C1.64472 10.653 1.38244 10.2571 1.46484 9.85119C2.32014 5.63769 5.63726 2.32061 9.85079 1.46538C10.2567 1.38299 10.6526 1.64527 10.735 2.05121ZM2.05081 13.2654C2.45675 13.183 2.85262 13.4453 2.93502 13.8512C3.67048 17.4743 6.52618 20.33 10.1493 21.0654C10.5553 21.1478 10.8175 21.5436 10.7351 21.9496C10.6528 22.3555 10.2569 22.6178 9.85095 22.5354C5.63742 21.6802 2.3203 18.3631 1.465 14.1496C1.3826 13.7437 1.64488 13.3478 2.05081 13.2654ZM21.9491 13.2654C22.3551 13.3478 22.6173 13.7437 22.535 14.1496C21.6797 18.3631 18.3625 21.6802 14.149 22.5354C13.7431 22.6178 13.3472 22.3555 13.2648 21.9496C13.1824 21.5436 13.4447 21.1478 13.8506 21.0654C17.4738 20.33 20.3295 17.4743 21.0649 13.8512C21.1473 13.4453 21.5432 13.183 21.9491 13.2654ZM8.39729 15.5538C8.64395 15.221 9.11366 15.1512 9.44643 15.3979C10.1748 15.9377 11.0539 16.2504 11.9998 16.2504C12.9457 16.2504 13.8249 15.9377 14.5532 15.3979C14.886 15.1512 15.3557 15.221 15.6023 15.5538C15.849 15.8865 15.7792 16.3563 15.4464 16.6029C14.474 17.3237 13.2848 17.7504 11.9998 17.7504C10.7148 17.7504 9.52562 17.3237 8.55321 16.6029C8.22044 16.3563 8.15063 15.8865 8.39729 15.5538Z" fill="currentColor"/>''',
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
