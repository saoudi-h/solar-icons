// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `book-minimalistic` icon in every style.
///
/// Prefer the static widgets (e.g. `BookMinimalisticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class BookMinimalisticIcon extends StatelessWidget {
  /// Creates the `book-minimalistic` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const BookMinimalisticIcon({
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
    name: 'book-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.65517 2.22732C5.2225 2.34037 4.9438 2.50021 4.72718 2.71244C4.42179 3.01165 4.22268 3.43172 4.11382 4.225C4.00176 5.04159 4 6.12387 4 7.67568V16.2442C4.38867 15.9781 4.82674 15.7756 5.29899 15.6517C5.41296 15.6217 5.53103 15.5983 5.65517 15.5799V2.22732Z" fill="currentColor"/>
<path d="M7.31034 15.5135C7.32206 15.5135 7.33382 15.5135 7.34563 15.5135L20 15.5135V7.67568C20 6.12387 19.9982 5.04159 19.8862 4.22499C19.7773 3.43172 19.5782 3.01165 19.2728 2.71244C18.9674 2.41324 18.5387 2.21816 17.729 2.11151C16.8955 2.00172 15.7908 2 14.2069 2H9.7931C8.79138 2 7.98133 2.00069 7.31034 2.02897V15.5135Z" fill="currentColor"/>
<path d="M7.47341 17.1351C6.39395 17.1351 6.01657 17.1421 5.72738 17.218C4.93365 17.4264 4.30088 18.0044 4.02952 18.7558C4.0463 19.1382 4.07259 19.4746 4.11382 19.775C4.22268 20.5683 4.42179 20.9884 4.72718 21.2876C5.03258 21.5868 5.46135 21.7818 6.27103 21.8885C7.10452 21.9983 8.2092 22 9.7931 22H14.2069C15.7908 22 16.8955 21.9983 17.729 21.8885C18.5387 21.7818 18.9674 21.5868 19.2728 21.2876C19.5782 20.9884 19.7773 20.5683 19.8862 19.775C19.9776 19.1088 19.9956 18.2657 19.9991 17.1351H7.47341Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'book-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M19.9998 18C19.9962 18.9296 19.9783 19.6231 19.8865 20.1709C19.7772 20.8229 19.5768 21.1681 19.2703 21.4141C18.9637 21.66 18.5332 21.8205 17.7205 21.9082C16.8838 21.9984 15.775 22 14.1853 22H9.75466C8.16465 22 7.05523 21.9985 6.21853 21.9082C5.40587 21.8205 4.97527 21.6601 4.66872 21.4141C4.36233 21.1681 4.16276 20.8228 4.05349 20.1709C4.0453 20.122 4.03711 20.0717 4.03005 20.0205C3.98997 19.7292 3.96991 19.5826 4.09646 19.2393C4.2229 18.8962 4.27781 18.8421 4.38747 18.7344C4.71279 18.4149 5.1594 18.1788 5.67263 18.0684C5.96292 18.0059 6.34209 18 7.42556 18H19.9998Z" fill="currentColor"/>
<path d="M5.65505 16.3008C5.53091 16.3201 5.41258 16.3445 5.29861 16.376C4.82641 16.5065 4.38841 16.7198 3.99978 17V7.97656C3.99978 6.34265 4.00199 5.20262 4.11404 4.34277C4.22291 3.50775 4.42198 3.06501 4.72732 2.75C4.94388 2.52671 5.22264 2.35824 5.65505 2.23926V16.3008Z" fill="currentColor"/>
<path d="M14.2068 2C15.7903 2 16.8949 2.00164 17.7283 2.11719C18.5377 2.22946 18.9669 2.43509 19.2722 2.75C19.5776 3.06504 19.7767 3.50762 19.8855 4.34277C19.9976 5.20265 19.9998 6.34254 19.9998 7.97656V16.2305H7.31033V2.03027C7.98124 2.00051 8.79119 2 9.79275 2H14.2068Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.72718 2.73332C5.03258 2.42535 5.46135 2.22456 6.27103 2.11478C7.10452 2.00177 8.2092 2 9.7931 2H14.2069C15.7908 2 16.8955 2.00177 17.729 2.11478C18.5387 2.22456 18.9674 2.42535 19.2728 2.73332C19.5782 3.0413 19.7773 3.47368 19.8862 4.2902C19.9982 5.13073 20 6.24474 20 7.84202L20 18H7.42598C6.34236 18 5.96352 18.0057 5.67321 18.0681C5.15982 18.1785 4.71351 18.4151 4.38811 18.7347C4.27837 18.8425 4.22351 18.8964 4.09696 19.2397C4.02435 19.4367 4 19.5687 4 19.7003V7.84202C4 6.24474 4.00176 5.13073 4.11382 4.2902C4.22268 3.47368 4.42179 3.0413 4.72718 2.73332Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'book-minimalistic',
    style: SolarIconStyle.broken,
    body: r'''<path d="M7 16V2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 22C7.17157 22 5.75736 22 4.87868 21.1213C4 20.2426 4 18.8284 4 16V8C4 5.17157 4 3.75736 4.87868 2.87868C5.75736 2 7.17157 2 10 2H14C16.8284 2 18.2426 2 19.1213 2.87868C20 3.75736 20 5.17157 20 8M14 22C16.8284 22 18.2426 22 19.1213 21.1213C20 20.2426 20 18.8284 20 16V12" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 16H7.8981C6.96812 16 6.50314 16 6.12164 16.1022C5.08636 16.3796 4.29937 17.109 4.02197 18.1443" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'book-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 8C4 5.17157 4 3.75736 4.87868 2.87868C5.75736 2 7.17157 2 10 2H14C16.8284 2 18.2426 2 19.1213 2.87868C20 3.75736 20 5.17157 20 8V16C20 18.8284 20 20.2426 19.1213 21.1213C18.2426 22 16.8284 22 14 22H10C7.17157 22 5.75736 22 4.87868 21.1213C4 20.2426 4 18.8284 4 16V8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 16V2.07612" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 16H7.8981C6.96812 16 6.50314 16 6.12164 16.1022C5.08636 16.3796 4.29937 17.109 4.02197 18.1443" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'book-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4 8C4 5.17157 4 3.75736 4.87868 2.87868C5.75736 2 7.17157 2 10 2H14C16.8284 2 18.2426 2 19.1213 2.87868C20 3.75736 20 5.17157 20 8V16C20 18.8284 20 20.2426 19.1213 21.1213C18.2426 22 16.8284 22 14 22H10C7.17157 22 5.75736 22 4.87868 21.1213C4 20.2426 4 18.8284 4 16V8Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 16.0001H7.8981C6.96812 16.0001 6.50314 16.0001 6.12164 16.1023C5.08636 16.3797 4.29937 17.1091 4.02197 18.1443M7 16V2.07617" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'book-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.94531 1.25H14.0551C15.4227 1.24998 16.525 1.24996 17.3919 1.36652C18.292 1.48754 19.0499 1.74643 19.6518 2.34835C20.2538 2.95027 20.5126 3.70814 20.6337 4.60825C20.7502 5.47522 20.7502 6.57754 20.7502 7.94513V16.0549C20.7502 17.4225 20.7502 18.5248 20.6337 19.3918C20.5126 20.2919 20.2538 21.0497 19.6518 21.6517C19.0499 22.2536 18.292 22.5125 17.3919 22.6335C16.525 22.75 15.4226 22.75 14.0551 22.75H9.94532C8.57773 22.75 7.4754 22.75 6.60844 22.6335C5.70833 22.5125 4.95045 22.2536 4.34854 21.6517C3.74662 21.0497 3.48773 20.2919 3.36671 19.3918C3.32801 19.1039 3.30216 18.7902 3.2849 18.4494C3.24582 18.326 3.23821 18.1912 3.26895 18.0568C3.25016 17.4649 3.25017 16.7991 3.25019 16.0549V7.94513C3.25017 6.57754 3.25015 5.47522 3.36671 4.60825C3.48773 3.70814 3.74662 2.95027 4.34854 2.34835C4.95045 1.74643 5.70833 1.48754 6.60843 1.36652C7.4754 1.24996 8.57772 1.24998 9.94531 1.25ZM4.77694 18.2491C4.79214 18.6029 4.81597 18.914 4.85333 19.1919C4.95199 19.9257 5.13243 20.3142 5.4092 20.591C5.68596 20.8678 6.07453 21.0482 6.80831 21.1469C7.56366 21.2484 8.56477 21.25 10.0002 21.25H14.0002C15.4356 21.25 16.4367 21.2484 17.1921 21.1469C17.9258 21.0482 18.3144 20.8678 18.5912 20.591C18.8679 20.3142 19.0484 19.9257 19.147 19.1919C19.2299 18.5756 19.2462 17.7958 19.2494 16.75H7.89796C6.91971 16.75 6.5777 16.7564 6.31562 16.8267C5.5963 17.0194 5.02286 17.5541 4.77694 18.2491ZM19.2502 15.25V8C19.2502 6.56458 19.2486 5.56347 19.147 4.80812C19.0484 4.07435 18.8679 3.68577 18.5912 3.40901C18.3144 3.13225 17.9258 2.9518 17.1921 2.85315C16.4367 2.75159 15.4356 2.75 14.0002 2.75H10.0002C9.09237 2.75 8.35827 2.75064 7.75019 2.7768V15.25C7.7608 15.25 7.77146 15.25 7.78217 15.25C7.8202 15.25 7.85879 15.25 7.89796 15.25H19.2502ZM6.25019 15.3114C6.13768 15.3284 6.03068 15.3501 5.92739 15.3778C5.49941 15.4925 5.10242 15.6798 4.75019 15.9259V8C4.75019 6.56458 4.75178 5.56347 4.85333 4.80812C4.95199 4.07435 5.13243 3.68577 5.4092 3.40901C5.60551 3.2127 5.85807 3.06485 6.25019 2.96027V15.3114Z" fill="currentColor"/>''',
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
