// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bug` icon in every style.
///
/// Prefer the static widgets (e.g. `BugLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class BugIcon extends StatelessWidget {
  /// Creates the `bug` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const BugIcon({
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
    name: 'bug',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.416 2.62412C17.7607 2.39435 17.8538 1.9287 17.624 1.58405C17.3943 1.23941 16.9286 1.14628 16.584 1.37604L13.6687 3.31955C13.1527 3.11343 12.5897 3.00006 12.0001 3.00006C11.4105 3.00006 10.8474 3.11345 10.3314 3.31962L7.41603 1.37604C7.07138 1.14628 6.60573 1.23941 6.37596 1.58405C6.1462 1.9287 6.23933 2.39435 6.58397 2.62412L8.9437 4.19727C8.24831 4.84109 7.75664 5.70181 7.57617 6.6719C8.01128 6.55973 8.46749 6.50006 8.93763 6.50006H15.0626C15.5328 6.50006 15.989 6.55973 16.4241 6.6719C16.2436 5.70176 15.7519 4.841 15.0564 4.19717L17.416 2.62412Z" fill="currentColor"/>
<path d="M1.25 14.0001C1.25 13.5859 1.58579 13.2501 2 13.2501H5V11.9376C5 11.1019 5.26034 10.327 5.70435 9.68959L3.22141 8.69624C2.83684 8.54238 2.6498 8.10589 2.80366 7.72131C2.95752 7.33673 3.39401 7.1497 3.77859 7.30356L6.91514 8.55841C7.50624 8.20388 8.19807 8.00006 8.9375 8.00006H15.0625C15.8019 8.00006 16.4938 8.20388 17.0849 8.55841L20.2214 7.30356C20.606 7.1497 21.0425 7.33673 21.1963 7.72131C21.3502 8.10589 21.1632 8.54238 20.7786 8.69624L18.2957 9.68959C18.7397 10.327 19 11.1019 19 11.9376V13.2501H22C22.4142 13.2501 22.75 13.5859 22.75 14.0001C22.75 14.4143 22.4142 14.7501 22 14.7501H19V15.0001C19 16.1808 18.7077 17.2932 18.1915 18.2689L20.7786 19.3039C21.1632 19.4578 21.3502 19.8943 21.1963 20.2789C21.0425 20.6634 20.606 20.8505 20.2214 20.6966L17.3288 19.5394C16.1974 20.8664 14.5789 21.7655 12.75 21.9604V15.0001C12.75 14.5858 12.4142 14.2501 12 14.2501C11.5858 14.2501 11.25 14.5858 11.25 15.0001V21.9604C9.42109 21.7655 7.80265 20.8664 6.67115 19.5394L3.77859 20.6966C3.39401 20.8505 2.95752 20.6634 2.80366 20.2789C2.6498 19.8943 2.83684 19.4578 3.22141 19.3039L5.80852 18.2689C5.29231 17.2932 5 16.1808 5 15.0001V14.7501H2C1.58579 14.7501 1.25 14.4143 1.25 14.0001Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'bug',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 14.25C12.4142 14.25 12.75 14.5858 12.75 15V22H11.25V15C11.25 14.5858 11.5858 14.25 12 14.25Z" fill="currentColor"/>
<path d="M5.70215 18.0605C5.92373 18.5156 6.1941 18.9426 6.50488 19.3359L3.83496 20.6709C3.46466 20.8558 3.01439 20.7061 2.8291 20.3359C2.64384 19.9655 2.79456 19.5144 3.16504 19.3291L5.70215 18.0605Z" fill="currentColor"/>
<path d="M20.835 19.3291C21.2054 19.5144 21.3562 19.9655 21.1709 20.3359C20.9856 20.7061 20.5353 20.8558 20.165 20.6709L17.4951 19.3359C17.8059 18.9426 18.0763 18.5156 18.2979 18.0605L20.835 19.3291Z" fill="currentColor"/>
<path d="M5 14.75H2C1.58583 14.75 1.25007 14.4142 1.25 14C1.25 13.5858 1.58579 13.25 2 13.25H5V14.75Z" fill="currentColor"/>
<path d="M22 13.25C22.4142 13.25 22.75 13.5858 22.75 14C22.7499 14.4142 22.4142 14.75 22 14.75H19V13.25H22Z" fill="currentColor"/>
<path d="M2.8291 7.66406C3.01434 7.29376 3.46457 7.14408 3.83496 7.3291L6.64648 8.73438C6.21949 9.04035 5.85589 9.43014 5.58008 9.87891L3.16504 8.6709C2.79456 8.48564 2.64384 8.03454 2.8291 7.66406Z" fill="currentColor"/>
<path d="M20.165 7.3291C20.5354 7.14408 20.9857 7.29376 21.1709 7.66406C21.3562 8.03454 21.2054 8.48564 20.835 8.6709L18.4199 9.87891C18.1441 9.43014 17.7805 9.04035 17.3535 8.73438L20.165 7.3291Z" fill="currentColor"/>
<path d="M12 3C14.4853 3 16.5 5.01472 16.5 7.5V8.27051C16.0547 8.09581 15.5698 8 15.0625 8H8.9375C8.43023 8 7.94531 8.09581 7.5 8.27051V7.5C7.5 5.01472 9.51472 3 12 3Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M15.0625 8.00004C15.5698 8.00004 16.0547 8.09584 16.5 8.27055C17.9637 8.84479 19 10.2702 19 11.9375V15C19 18.6126 16.2633 21.5858 12.75 21.96V15C12.75 14.5858 12.4142 14.25 12 14.25C11.5858 14.25 11.25 14.5858 11.25 15V21.96C7.73669 21.5858 5 18.6126 5 15V11.9375C5 10.2702 6.03633 8.84479 7.5 8.27055C7.94531 8.09584 8.43023 8.00004 8.9375 8.00004H15.0625Z" fill="currentColor"/>
<path d="M6.37598 1.58402C6.60572 1.23942 7.07138 1.14633 7.41602 1.37601L10.3311 3.31937C9.81444 3.52579 9.34486 3.82559 8.94336 4.1973L6.58398 2.62406C6.23941 2.39428 6.14623 1.92864 6.37598 1.58402Z" fill="currentColor"/>
<path d="M16.584 1.37601C16.9286 1.14627 17.3942 1.23945 17.624 1.58402C17.8538 1.92867 17.7607 2.3943 17.416 2.62406L15.0566 4.1973C14.6551 3.82557 14.1856 3.5258 13.6689 3.31937L16.584 1.37601Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'bug',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14 21.7101C13.3663 21.8987 12.695 22 12 22C8.13401 22 5 18.866 5 15V11.9375C5 9.76288 6.76288 8 8.9375 8H15.0625C17.2371 8 19 9.76288 19 11.9375V15C19 16.9073 18.2372 18.6364 17 19.899" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 8.27065V7.5C16.5 5.01472 14.4853 3 12 3C10.4398 3 9.06504 3.79401 8.25777 5M7.5 7.5V8.27065" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 14H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 14H2" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.2905 3.62571C15.1937 3.08381 16.0969 2.5419 17 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.70947 3.62569C8.80631 3.0838 7.90315 2.5419 6.99998 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.8003 18.9202C18.7003 19.2801 19.6002 19.6401 20.5002 20.0001" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.7798 9.08789C18.6865 8.72521 19.5932 8.36252 20.4999 7.99984" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.19971 18.9202C5.29976 19.2801 4.39981 19.6401 3.49987 20.0001" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.22021 9.08789C5.31354 8.72522 4.40686 8.36255 3.50018 7.99988" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'bug',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19 15V11.9375C19 9.76288 17.2371 8 15.0625 8H8.9375C6.76288 8 5 9.76288 5 11.9375V15C5 18.866 8.13401 22 12 22C15.866 22 19 18.866 19 15Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 8.27065V7.5C16.5 5.01472 14.4853 3 12 3C9.51472 3 7.5 5.01472 7.5 7.5V8.27065" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 14H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 14H2" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.2905 3.62571C15.1937 3.08381 16.0969 2.5419 17 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.70947 3.62569C8.80631 3.0838 7.90315 2.5419 6.99998 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.8003 18.9202C18.7003 19.2801 19.6002 19.6401 20.5002 20.0001" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.7798 9.08789C18.6865 8.72521 19.5932 8.36252 20.4999 7.99984" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.19971 18.9202C5.29976 19.2801 4.39981 19.6401 3.49987 20.0001" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.22021 9.08789C5.31354 8.72522 4.40686 8.36255 3.50018 7.99988" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'bug',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M16.5 8.27065V7.5C16.5 5.01472 14.4853 3 12 3C9.51472 3 7.5 5.01472 7.5 7.5V8.27065M19 11.9375V15C19 18.866 15.866 22 12 22C8.13401 22 5 18.866 5 15V11.9375C5 9.76288 6.76288 8 8.9375 8H15.0625C17.2371 8 19 9.76288 19 11.9375Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19 14H22M5 14H2M14.2905 3.62571L17 2M9.70947 3.62569L6.99998 2M17.8003 18.9202L20.5002 20.0001M17.7798 9.08789L20.4999 7.99984M6.19971 18.9202L3.49987 20.0001M12 22V15M6.22021 9.08789L3.50018 7.99988" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'bug',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.3859 2.64323C17.7411 2.43012 17.8562 1.96943 17.6431 1.61424C17.43 1.25906 16.9693 1.14388 16.6141 1.35699L14.2687 2.76426C13.582 2.43471 12.8126 2.25011 12 2.25011C11.1874 2.25011 10.418 2.43471 9.73131 2.76426L7.38587 1.35699C7.03069 1.14388 6.56999 1.25906 6.35688 1.61424C6.14377 1.96943 6.25894 2.43012 6.61413 2.64323L8.37676 3.70081C7.37449 4.65692 6.75 6.00559 6.75 7.50011V7.79077C6.49339 7.92641 6.25088 8.08518 6.02526 8.2643C5.95652 8.19683 5.87356 8.14157 5.77854 8.10356L3.77854 7.30356C3.39396 7.14973 2.95748 7.33679 2.80364 7.72137C2.64981 8.10596 2.83687 8.54244 3.22146 8.69628L4.99257 9.40472C4.52263 10.1351 4.25 11.0045 4.25 11.9376V13.2501H2C1.58579 13.2501 1.25 13.5859 1.25 14.0001C1.25 14.4143 1.58579 14.7501 2 14.7501H4.25V15.0001C4.25 16.2791 4.55983 17.4858 5.10854 18.5491L3.22146 19.304C2.83687 19.4578 2.64981 19.8943 2.80364 20.2789C2.95748 20.6634 3.39396 20.8505 3.77854 20.6967L5.77854 19.8967C5.83233 19.8752 5.88225 19.8481 5.92792 19.8164C7.34764 21.6039 9.53996 22.7501 12 22.7501C14.46 22.7501 16.6524 21.6039 18.0721 19.8164C18.1177 19.8481 18.1677 19.8752 18.2215 19.8967L20.2215 20.6967C20.606 20.8505 21.0425 20.6634 21.1964 20.2789C21.3502 19.8943 21.1631 19.4578 20.7785 19.304L18.8915 18.5491C19.4402 17.4858 19.75 16.2791 19.75 15.0001V14.7501H22C22.4142 14.7501 22.75 14.4143 22.75 14.0001C22.75 13.5859 22.4142 13.2501 22 13.2501H19.75V11.9376C19.75 11.0045 19.4774 10.1351 19.0074 9.40472L20.7785 8.69628C21.1631 8.54244 21.3502 8.10596 21.1964 7.72137C21.0425 7.33679 20.606 7.14973 20.2215 7.30356L18.2215 8.10356C18.1264 8.14157 18.0435 8.19683 17.9747 8.2643C17.7491 8.08518 17.5066 7.92641 17.25 7.79077V7.50011C17.25 6.00559 16.6255 4.65692 15.6232 3.70081L17.3859 2.64323ZM5.75 15.0001V11.9376C5.75 10.1772 7.17709 8.75011 8.9375 8.75011H15.0625C16.8229 8.75011 18.25 10.1772 18.25 11.9376V15.0001C18.25 18.1981 15.8482 20.8351 12.75 21.2056V15.0001C12.75 14.5859 12.4142 14.2501 12 14.2501C11.5858 14.2501 11.25 14.5859 11.25 15.0001V21.2056C8.15183 20.8351 5.75 18.1981 5.75 15.0001ZM12 3.75011C14.0037 3.75011 15.6404 5.32165 15.7447 7.2994C15.522 7.26693 15.2942 7.25011 15.0625 7.25011H8.9375C8.70578 7.25011 8.47799 7.26693 8.25528 7.2994C8.35958 5.32165 9.99627 3.75011 12 3.75011Z" fill="currentColor"/>''',
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
