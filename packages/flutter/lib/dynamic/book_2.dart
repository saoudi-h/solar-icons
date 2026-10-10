// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `book-2` icon in every style.
///
/// Prefer the static widgets (e.g. `Book2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Book2Icon extends StatelessWidget {
  /// Creates the `book-2` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Book2Icon({
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
    name: 'book-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.72718 2.71244C5.03258 2.41324 5.46135 2.21816 6.27103 2.11151C7.10452 2.00172 8.2092 2 9.7931 2H14.2069C15.7908 2 16.8955 2.00172 17.729 2.11151C18.5387 2.21816 18.9674 2.41324 19.2728 2.71244C19.5782 3.01165 19.7773 3.43172 19.8862 4.22499C19.9982 5.04159 20 6.12387 20 7.67568V15.5135L7.34563 15.5135C6.44305 15.5132 5.82716 15.513 5.29899 15.6517C4.82674 15.7756 4.38867 15.9781 4 16.2442V7.67568C4 6.12387 4.00176 5.04159 4.11382 4.225C4.22268 3.43172 4.42179 3.01165 4.72718 2.71244ZM7.58621 5.78378C7.12914 5.78378 6.75862 6.1468 6.75862 6.59459C6.75862 7.04239 7.12914 7.40541 7.58621 7.40541H16.4138C16.8709 7.40541 17.2414 7.04239 17.2414 6.59459C17.2414 6.1468 16.8709 5.78378 16.4138 5.78378H7.58621ZM6.75862 10.3784C6.75862 9.93058 7.12914 9.56757 7.58621 9.56757H13.1034C13.5605 9.56757 13.931 9.93058 13.931 10.3784C13.931 10.8262 13.5605 11.1892 13.1034 11.1892H7.58621C7.12914 11.1892 6.75862 10.8262 6.75862 10.3784Z" fill="currentColor"/>
<path d="M7.47341 17.1351C6.39395 17.1351 6.01657 17.1421 5.72738 17.218C4.93365 17.4264 4.30088 18.0044 4.02952 18.7558C4.0463 19.1382 4.07259 19.4746 4.11382 19.775C4.22268 20.5683 4.42179 20.9884 4.72718 21.2876C5.03258 21.5868 5.46135 21.7818 6.27103 21.8885C7.10452 21.9983 8.2092 22 9.7931 22H14.2069C15.7908 22 16.8955 21.9983 17.729 21.8885C18.5387 21.7818 18.9674 21.5868 19.2728 21.2876C19.4894 21.0753 19.6526 20.8023 19.768 20.3784H7.58621C7.12914 20.3784 6.75862 20.0154 6.75862 19.5676C6.75862 19.1198 7.12914 18.7568 7.58621 18.7568H19.9704C19.9909 18.2908 19.9972 17.7564 19.9991 17.1351H7.47341Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'book-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.0003 18C19.9985 18.4741 19.9931 18.8868 19.9759 19.25H8.00027C7.58605 19.25 7.25027 19.5858 7.25027 20C7.25027 20.4142 7.58605 20.75 8.00027 20.75H19.7385C19.625 21.0517 19.4704 21.2539 19.2708 21.4141C18.9642 21.66 18.5336 21.8205 17.721 21.9082C16.8843 21.9984 15.7755 22 14.1858 22H9.75515C8.16514 22 7.05572 21.9985 6.21902 21.9082C5.40635 21.8205 4.97576 21.6601 4.66921 21.4141C4.36282 21.1681 4.16325 20.8228 4.05398 20.1709C4.04579 20.122 4.0376 20.0717 4.03054 20.0205C3.99045 19.7292 3.9704 19.5826 4.09695 19.2393C4.22339 18.8962 4.2783 18.8421 4.38796 18.7344C4.71328 18.4149 5.15989 18.1788 5.67312 18.0684C5.96341 18.0059 6.34258 18 7.42605 18H20.0003Z" fill="currentColor"/>
<path d="M13.0003 9.75C13.4145 9.75 13.7503 10.0858 13.7503 10.5C13.7503 10.9142 13.4145 11.25 13.0003 11.25H8.00027C7.58605 11.25 7.25027 10.9142 7.25027 10.5C7.25027 10.0858 7.58605 9.75 8.00027 9.75H13.0003Z" fill="currentColor"/>
<path d="M16.0003 6.25C16.4145 6.25 16.7503 6.58579 16.7503 7C16.7503 7.41421 16.4145 7.75 16.0003 7.75H8.00027C7.58605 7.75 7.25027 7.41421 7.25027 7C7.25027 6.58579 7.58605 6.25 8.00027 6.25H16.0003Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.72718 2.73332C5.03258 2.42535 5.46135 2.22456 6.27103 2.11478C7.10452 2.00177 8.2092 2 9.7931 2H14.2069C15.7908 2 16.8955 2.00177 17.729 2.11478C18.5387 2.22456 18.9674 2.42535 19.2728 2.73332C19.5782 3.0413 19.7773 3.47368 19.8862 4.2902C19.9982 5.13073 20 6.24474 20 7.84202L20 18H7.42598C6.34236 18 5.96352 18.0057 5.67321 18.0681C5.15982 18.1785 4.71351 18.4151 4.38811 18.7347C4.27837 18.8425 4.22351 18.8964 4.09696 19.2397C4.02435 19.4367 4 19.5687 4 19.7003V7.84202C4 6.24474 4.00176 5.13073 4.11382 4.2902C4.22268 3.47368 4.42179 3.0413 4.72718 2.73332Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'book-2',
    style: SolarIconStyle.broken,
    body: r'''<path d="M8 7H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 10.5H13" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 22C7.17157 22 5.75736 22 4.87868 21.1213C4 20.2426 4 18.8284 4 16V8C4 5.17157 4 3.75736 4.87868 2.87868C5.75736 2 7.17157 2 10 2H14C16.8284 2 18.2426 2 19.1213 2.87868C20 3.75736 20 5.17157 20 8M14 22C16.8284 22 18.2426 22 19.1213 21.1213C20 20.2426 20 18.8284 20 16V12" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 16H7.89778C6.96781 16 6.50282 16 6.12132 16.1022C5.08604 16.3796 4.2774 17.1883 4 18.2235" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.9239 19H8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'book-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 8C4 5.17157 4 3.75736 4.87868 2.87868C5.75736 2 7.17157 2 10 2H14C16.8284 2 18.2426 2 19.1213 2.87868C20 3.75736 20 5.17157 20 8V16C20 18.8284 20 20.2426 19.1213 21.1213C18.2426 22 16.8284 22 14 22H10C7.17157 22 5.75736 22 4.87868 21.1213C4 20.2426 4 18.8284 4 16V8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.9997 16H7.89749C6.96751 16 6.50253 16 6.12103 16.1022C5.08575 16.3796 4.29986 17.1212 4.02246 18.1564" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 7H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 10.5H13" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.9239 19H8" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'book-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4 8C4 5.17157 4 3.75736 4.87868 2.87868C5.75736 2 7.17157 2 10 2H14C16.8284 2 18.2426 2 19.1213 2.87868C20 3.75736 20 5.17157 20 8V16C20 18.8284 20 20.2426 19.1213 21.1213C18.2426 22 16.8284 22 14 22H10C7.17157 22 5.75736 22 4.87868 21.1213C4 20.2426 4 18.8284 4 16V8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 16H7.8981C6.96812 16 6.50314 16 6.12164 16.1022C5.08636 16.3796 4.29937 17.109 4.02197 18.1443" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19.9239 19H8" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M8 7H16" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M8 10.5H13" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'book-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.94531 1.25H14.0551C15.4227 1.24998 16.525 1.24996 17.3919 1.36652C18.292 1.48754 19.0499 1.74643 19.6518 2.34835C20.2538 2.95027 20.5126 3.70814 20.6337 4.60825C20.7502 5.47522 20.7502 6.57754 20.7502 7.94513V16.0549C20.7502 17.4225 20.7502 18.5248 20.6337 19.3918C20.5126 20.2919 20.2538 21.0497 19.6518 21.6517C19.0499 22.2536 18.292 22.5125 17.3919 22.6335C16.525 22.75 15.4226 22.75 14.0551 22.75H9.94532C8.57773 22.75 7.4754 22.75 6.60844 22.6335C5.70833 22.5125 4.95045 22.2536 4.34854 21.6517C3.74662 21.0497 3.48773 20.2919 3.36671 19.3918C3.32801 19.1039 3.30216 18.7902 3.2849 18.4494C3.24582 18.326 3.23821 18.1912 3.26895 18.0568C3.25016 17.4649 3.25017 16.7991 3.25019 16.0549V7.94513C3.25017 6.57754 3.25015 5.47522 3.36671 4.60825C3.48773 3.70814 3.74662 2.95027 4.34854 2.34835C4.95045 1.74643 5.70833 1.48754 6.60843 1.36652C7.4754 1.24996 8.57772 1.24998 9.94531 1.25ZM4.77694 18.2491C4.79214 18.6029 4.81597 18.914 4.85333 19.1919C4.95199 19.9257 5.13243 20.3142 5.4092 20.591C5.68596 20.8678 6.07453 21.0482 6.80831 21.1469C7.56366 21.2484 8.56477 21.25 10.0002 21.25H14.0002C15.4356 21.25 16.4367 21.2484 17.1921 21.1469C17.9258 21.0482 18.3144 20.8678 18.5912 20.591C18.7875 20.3947 18.9353 20.1421 19.0399 19.75H8.00019C7.58597 19.75 7.25019 19.4142 7.25019 19C7.25019 18.5858 7.58597 18.25 8.00019 18.25H19.2234C19.2419 17.819 19.2477 17.3246 19.2494 16.75H7.89796C6.91971 16.75 6.5777 16.7564 6.31562 16.8267C5.5963 17.0194 5.02286 17.5541 4.77694 18.2491ZM19.2502 15.25H7.89796C7.85879 15.25 7.8202 15.25 7.78217 15.25C6.9642 15.2497 6.40605 15.2495 5.92739 15.3778C5.49941 15.4925 5.10242 15.6798 4.75019 15.9259V8C4.75019 6.56458 4.75178 5.56347 4.85333 4.80812C4.95199 4.07435 5.13243 3.68577 5.4092 3.40901C5.68596 3.13225 6.07453 2.9518 6.80831 2.85315C7.56366 2.75159 8.56477 2.75 10.0002 2.75H14.0002C15.4356 2.75 16.4367 2.75159 17.1921 2.85315C17.9258 2.9518 18.3144 3.13225 18.5912 3.40901C18.8679 3.68577 19.0484 4.07435 19.147 4.80812C19.2486 5.56347 19.2502 6.56458 19.2502 8V15.25ZM7.25019 7C7.25019 6.58579 7.58597 6.25 8.00019 6.25H16.0002C16.4144 6.25 16.7502 6.58579 16.7502 7C16.7502 7.41421 16.4144 7.75 16.0002 7.75H8.00019C7.58597 7.75 7.25019 7.41421 7.25019 7ZM7.25019 10.5C7.25019 10.0858 7.58597 9.75 8.00019 9.75H13.0002C13.4144 9.75 13.7502 10.0858 13.7502 10.5C13.7502 10.9142 13.4144 11.25 13.0002 11.25H8.00019C7.58597 11.25 7.25019 10.9142 7.25019 10.5Z" fill="currentColor"/>''',
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
