// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wheel` icon in every style.
///
/// Prefer the static widgets (e.g. `WheelLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class WheelIcon extends StatelessWidget {
  /// Creates the `wheel` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const WheelIcon({
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
    name: 'wheel',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22ZM17.9536 12.7499H14.9055C14.7675 13.2861 14.485 13.7644 14.1019 14.1406L15.6262 16.7807C16.8809 15.8275 17.7489 14.3917 17.9536 12.7499ZM14.3277 17.5318L12.8032 14.8913C12.5476 14.9621 12.2782 15 12 15C11.7218 15 11.4524 14.9621 11.1967 14.8912L9.6722 17.5317C10.388 17.8333 11.1745 18 12 18C12.8255 18 13.612 17.8333 14.3277 17.5318ZM8.37379 16.7806L9.89806 14.1405C9.515 13.7643 9.23247 13.2861 9.09448 12.7499H6.0464C6.2511 14.3917 7.11911 15.8275 8.37379 16.7806ZM17.9536 11.2499H14.9055C14.7674 10.7137 14.4849 10.2355 14.1018 9.85938L15.6261 7.21928C16.8808 8.1724 17.7488 9.60814 17.9536 11.2499ZM14.3277 6.46822C13.6119 6.16668 12.8254 6 12 6C11.1746 6 10.388 6.16669 9.67227 6.46824L11.1968 9.10874C11.4524 9.03787 11.7218 9 12 9C12.2782 9 12.5475 9.03787 12.8032 9.10873L14.3277 6.46822ZM9.89812 9.85942L8.37385 7.21931C7.1192 8.17244 6.25119 9.60816 6.04644 11.2499H9.09455C9.23257 10.7137 9.51509 10.2356 9.89812 9.85942Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'wheel',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.67217 17.5313L11.1967 14.8908C10.7001 14.7531 10.2553 14.491 9.89804 14.1401L8.37377 16.7802C8.77077 17.0818 9.2065 17.3351 9.67217 17.5313Z" fill="currentColor"/>
<path d="M6.0464 12.7494H9.09446C9.0328 12.5097 9 12.2585 9 11.9996C9 11.7405 9.03283 11.4891 9.09456 11.2494H6.04644C6.01579 11.4951 6 11.7455 6 11.9996C6 12.2535 6.01577 12.5037 6.0464 12.7494Z" fill="currentColor"/>
<path d="M8.37388 7.21886L9.89814 9.85896C10.2555 9.50807 10.7003 9.24594 11.1968 9.1083L9.6723 6.4678C9.20662 6.66399 8.77089 6.91726 8.37388 7.21886Z" fill="currentColor"/>
<path d="M12.8031 9.10828L14.3276 6.46777C14.7933 6.66396 15.2291 6.91723 15.6261 7.21882L14.1018 9.85892C13.7445 9.50803 13.2997 9.24592 12.8031 9.10828Z" fill="currentColor"/>
<path d="M14.9055 12.7494C14.9672 12.5097 15 12.2585 15 11.9996C15 11.7405 14.9672 11.4891 14.9054 11.2494H17.9536C17.9842 11.4951 18 11.7455 18 11.9996C18 12.2535 17.9842 12.5037 17.9536 12.7494H14.9055Z" fill="currentColor"/>
<path d="M12.8034 14.8908C13.3 14.7531 13.7447 14.4909 14.102 14.14L15.6263 16.7801C15.2293 17.0818 14.7936 17.335 14.3279 17.5313L12.8034 14.8908Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M12 15C13.6569 15 15 13.6569 15 12C15 10.3431 13.6569 9 12 9C10.3431 9 9 10.3431 9 12C9 13.6569 10.3431 15 12 15Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12ZM12 18C15.3137 18 18 15.3137 18 12C18 8.68629 15.3137 6 12 6C8.68629 6 6 8.68629 6 12C6 15.3137 8.68629 18 12 18ZM15 12C15 13.6569 13.6569 15 12 15C10.3431 15 9 13.6569 9 12C9 10.3431 10.3431 9 12 9C13.6569 9 15 10.3431 15 12Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'wheel',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 12L10 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 12L18 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 17.1963L11 13.7322" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 10.2686L15 6.80445" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 17.1963L13 13.7322" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 10.2676L9 6.80348" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 17.1973C14.1175 17.7078 13.0929 18 12 18C8.68629 18 6 15.3137 6 12C6 8.68629 8.68629 6 12 6C15.3137 6 18 8.68629 18 12C18 13.0929 17.7078 14.1175 17.1973 15" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'wheel',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="6" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 12L10 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 12L18 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 17.1963L11 13.7322" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 10.2686L15 6.80445" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 17.1963L13 13.7322" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 10.2676L9 6.80348" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'wheel',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="6" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6 12L10 12" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14 12L18 12" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M9 17.1963L11 13.7322" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M13 10.2686L15 6.80445" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M15 17.1963L13 13.7322" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11 10.2676L9 6.80348" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'wheel',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM6.80317 11.25H9.35352C9.47932 10.8052 9.71426 10.4062 10.0276 10.0838L8.75225 7.87485C7.7184 8.68992 6.99837 9.88531 6.80317 11.25ZM10.0507 7.1238L11.3262 9.33314C11.5418 9.27884 11.7676 9.25 12 9.25C12.2324 9.25 12.4581 9.27883 12.6737 9.33312L13.9493 7.12378C13.3466 6.88264 12.6888 6.75 12 6.75C11.3112 6.75 10.6534 6.88265 10.0507 7.1238ZM15.2477 7.87481L13.9724 10.0837C14.2857 10.4062 14.5207 10.8052 14.6465 11.25H17.1968C17.0016 9.88529 16.2816 8.68988 15.2477 7.87481ZM17.1968 12.75H14.6465C14.5207 13.1949 14.2857 13.5939 13.9723 13.9163L15.2477 16.1252C16.2816 15.3102 17.0016 14.1147 17.1968 12.75ZM13.9492 16.8762L12.6736 14.6669C12.4581 14.7212 12.2324 14.75 12 14.75C11.7676 14.75 11.5419 14.7212 11.3263 14.6669L10.0507 16.8762C10.6534 17.1174 11.3112 17.25 12 17.25C12.6888 17.25 13.3465 17.1174 13.9492 16.8762ZM8.75229 16.1252L10.0276 13.9163C9.71428 13.5938 9.47933 13.1948 9.35352 12.75H6.80317C6.99837 14.1147 7.71842 15.3101 8.75229 16.1252ZM11.3859 13.089C11.3823 13.0869 11.3787 13.0847 11.375 13.0826C11.3715 13.0806 11.368 13.0786 11.3645 13.0766C10.9967 12.859 10.75 12.4583 10.75 12C10.75 11.5434 10.9949 11.1439 11.3605 10.9258C11.3653 10.9231 11.3702 10.9204 11.375 10.9176C11.3801 10.9146 11.3851 10.9116 11.3902 10.9086C11.5705 10.8076 11.7785 10.75 12 10.75C12.2204 10.75 12.4275 10.8071 12.6073 10.9072C12.6131 10.9107 12.619 10.9142 12.6249 10.9177C12.6306 10.9209 12.6362 10.9241 12.642 10.9272C13.0062 11.1457 13.25 11.5444 13.25 12C13.25 12.4595 13.0021 12.8611 12.6327 13.0783C12.6301 13.0797 12.6276 13.0812 12.625 13.0827C12.6222 13.0843 12.6194 13.0859 12.6166 13.0876C12.4347 13.191 12.2242 13.25 12 13.25C11.7768 13.25 11.5673 13.1915 11.3859 13.089ZM5.25 12C5.25 8.27208 8.27208 5.25 12 5.25C15.7279 5.25 18.75 8.27208 18.75 12C18.75 15.7279 15.7279 18.75 12 18.75C8.27208 18.75 5.25 15.7279 5.25 12Z" fill="currentColor"/>''',
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
