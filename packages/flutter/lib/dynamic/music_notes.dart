// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `music-notes` icon in every style.
///
/// Prefer the static widgets (e.g. `MusicNotesLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MusicNotesIcon extends StatelessWidget {
  /// Creates the `music-notes` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const MusicNotesIcon({
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
    name: 'music-notes',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M19.2021 2.4873C20.0211 2.27862 20.8163 2.2453 21.5234 2.71582L21.5322 2.72168C21.5733 2.74929 21.6132 2.77817 21.6514 2.80762C21.8555 2.96498 22.0193 3.14846 22.1514 3.35156C22.4154 3.75783 22.5524 4.24417 22.6299 4.76562C22.6447 4.86568 22.6586 4.9732 22.6699 5.08105C22.7504 5.84471 22.75 6.80345 22.75 7.94629V17.5C22.75 19.2949 21.2949 20.75 19.5 20.75C17.7051 20.75 16.25 19.2949 16.25 17.5C16.25 15.7051 17.7051 14.25 19.5 14.25C20.1443 14.25 20.7449 14.4374 21.25 14.7607V9.1084L12.75 12.5078V19.5C12.75 21.2949 11.2949 22.75 9.5 22.75C7.70507 22.75 6.25 21.2949 6.25 19.5C6.25 17.7051 7.70507 16.25 9.5 16.25C10.1443 16.25 10.7449 16.4374 11.25 16.7607V8.80859C11.25 8.19672 11.2496 7.67822 11.2959 7.25195C11.3452 6.79843 11.453 6.38079 11.7109 5.99316C11.9689 5.60562 12.3126 5.34552 12.7119 5.125C13.0872 4.91773 13.5655 4.71764 14.1299 4.48145L16.2236 3.60449C17.4278 3.10046 18.4101 2.68915 19.2021 2.4873Z" fill="currentColor"/>
<path d="M7 1.25C7.41421 1.25 7.75 1.58579 7.75 2C7.75 2.79785 8.07852 3.34048 8.51172 3.69824C8.96643 4.07376 9.54565 4.25 10 4.25C10.4142 4.25 10.75 4.58579 10.75 5C10.75 5.41421 10.4142 5.75 10 5.75C9.27961 5.75 8.44848 5.50942 7.75 5.00488V10.5C7.75 12.2949 6.29493 13.75 4.5 13.75C2.70507 13.75 1.25 12.2949 1.25 10.5C1.25 8.70507 2.70507 7.25 4.5 7.25C5.14429 7.25 5.74487 7.43736 6.25 7.76074V2C6.25 1.58579 6.58579 1.25 7 1.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'music-notes',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 12.508L21.25 9.108V14.7609C20.7449 14.4375 20.1443 14.25 19.5 14.25C17.7051 14.25 16.25 15.7051 16.25 17.5C16.25 19.2949 17.7051 20.75 19.5 20.75C21.2949 20.75 22.75 19.2949 22.75 17.5C22.75 17.5 22.75 17.5 22.75 17.5L22.75 7.94625C22.75 6.80342 22.75 5.84496 22.6696 5.08131C22.6582 4.97339 22.6448 4.86609 22.63 4.76597C22.5525 4.24426 22.4156 3.75757 22.1514 3.35115C22.0193 3.14794 21.8553 2.96481 21.6511 2.80739C21.6128 2.77788 21.573 2.74927 21.5319 2.7216L21.5236 2.71608C20.8164 2.2454 20.0213 2.27906 19.2023 2.48777C18.4102 2.68961 17.4282 3.10065 16.224 3.60469L14.13 4.48115C13.5655 4.71737 13.0873 4.91751 12.712 5.1248C12.3126 5.34535 11.9686 5.60548 11.7106 5.99311C11.4527 6.38075 11.3455 6.7985 11.2963 7.25204C11.25 7.67831 11.25 8.19671 11.25 8.80858V16.7609C10.7448 16.4375 10.1443 16.25 9.5 16.25C7.70507 16.25 6.25 17.7051 6.25 19.5C6.25 21.2949 7.70507 22.75 9.5 22.75C11.2949 22.75 12.75 21.2949 12.75 19.5C12.75 19.5 12.75 19.5 12.75 19.5L12.75 12.508Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M7.75 2C7.75 1.58579 7.41421 1.25 7 1.25C6.58579 1.25 6.25 1.58579 6.25 2V7.76091C5.74485 7.4375 5.14432 7.25 4.5 7.25C2.70507 7.25 1.25 8.70507 1.25 10.5C1.25 12.2949 2.70507 13.75 4.5 13.75C6.29493 13.75 7.75 12.2949 7.75 10.5V5.0045C8.44852 5.50913 9.27955 5.75 10 5.75C10.4142 5.75 10.75 5.41421 10.75 5C10.75 4.58579 10.4142 4.25 10 4.25C9.54565 4.25 8.9663 4.07389 8.51159 3.69837C8.0784 3.34061 7.75 2.79785 7.75 2Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'music-notes',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 19.5C12 20.8807 10.8807 22 9.5 22C8.11929 22 7 20.8807 7 19.5C7 18.1193 8.11929 17 9.5 17C10.8807 17 12 18.1193 12 19.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 17.5C22 18.8807 20.8807 20 19.5 20C18.1193 20 17 18.8807 17 17.5C17 16.1193 18.1193 15 19.5 15C20.8807 15 22 16.1193 22 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 8L12 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19.0004V8.84787C12 7.5574 12 6.91217 12.335 6.40878C12.67 5.90539 13.2652 5.65627 14.4556 5.15803L16.4556 4.32094C18.9626 3.27164 20.2161 2.747 21.1081 3.34059C22 3.93418 22 5.29305 22 8.01078V12.0004" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 11V6.5V2" stroke="currentColor" stroke-linecap="round"/>
<circle cx="4.5" cy="10.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 5C8.75736 5 7 4.07107 7 2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'music-notes',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 19.5C12 20.8807 10.8807 22 9.5 22C8.11929 22 7 20.8807 7 19.5C7 18.1193 8.11929 17 9.5 17C10.8807 17 12 18.1193 12 19.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 17.5C22 18.8807 20.8807 20 19.5 20C18.1193 20 17 18.8807 17 17.5C17 16.1193 18.1193 15 19.5 15C20.8807 15 22 16.1193 22 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 8L12 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19.0004V8.84787C12 7.5574 12 6.91217 12.335 6.40878C12.67 5.90539 13.2652 5.65627 14.4556 5.15803L16.4556 4.32094C18.9626 3.27164 20.2161 2.747 21.1081 3.34059C22 3.93418 22 5.29305 22 8.01078V17.1542" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 11V6.5V2" stroke="currentColor" stroke-linecap="round"/>
<circle cx="4.5" cy="10.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 5C8.75736 5 7 4.07107 7 2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'music-notes',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 19.5C12 20.8807 10.8807 22 9.5 22C8.11929 22 7 20.8807 7 19.5C7 18.1193 8.11929 17 9.5 17C10.8807 17 12 18.1193 12 19.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 17.5C22 18.8807 20.8807 20 19.5 20C18.1193 20 17 18.8807 17 17.5C17 16.1193 18.1193 15 19.5 15C20.8807 15 22 16.1193 22 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 8L12 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19.0004V8.84787C12 7.5574 12 6.91217 12.335 6.40878C12.67 5.90539 13.2652 5.65627 14.4556 5.15803L16.4556 4.32094C18.9626 3.27164 20.2161 2.747 21.1081 3.34059C22 3.93418 22 5.29305 22 8.01078V17.1542" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M7 11V2C7 4.07107 8.75736 5 10 5M7 10.5C7 11.8807 5.88071 13 4.5 13C3.11929 13 2 11.8807 2 10.5C2 9.11929 3.11929 8 4.5 8C5.88071 8 7 9.11929 7 10.5Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'music-notes',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.51159 3.69837C8.9663 4.07389 9.54565 4.25 10 4.25C10.4142 4.25 10.75 4.58579 10.75 5C10.75 5.41421 10.4142 5.75 10 5.75C9.27955 5.75 8.44852 5.50913 7.75 5.0045V11C7.75 11.1595 7.7002 11.3074 7.6153 11.429C7.21563 12.7712 5.97212 13.75 4.5 13.75C2.70507 13.75 1.25 12.2949 1.25 10.5C1.25 8.70507 2.70507 7.25 4.5 7.25C5.14432 7.25 5.74485 7.4375 6.25 7.76091V2H7.75C7.75 2.79785 8.0784 3.34061 8.51159 3.69837ZM6.25 10.5C6.25 9.5335 5.4665 8.75 4.5 8.75C3.5335 8.75 2.75 9.5335 2.75 10.5C2.75 11.4665 3.5335 12.25 4.5 12.25C5.4665 12.25 6.25 11.4665 6.25 10.5ZM19.5727 3.94109C18.901 4.11226 18.0215 4.47821 16.7452 5.01241L14.7452 5.84951C14.135 6.10492 13.7328 6.27436 13.4371 6.43763C13.1575 6.59205 13.0364 6.70818 12.9594 6.82394C12.8823 6.93969 12.822 7.09625 12.7875 7.41379C12.751 7.74954 12.75 8.18597 12.75 8.8475V10.8922L21.2497 7.49235C21.2478 6.38367 21.2348 5.58512 21.1466 4.98852C21.0473 4.31734 20.8772 4.0875 20.6925 3.96459C20.5079 3.84167 20.2302 3.77354 19.5727 3.94109ZM22.75 7.98252V7.94757C22.75 6.64216 22.7501 5.5776 22.6304 4.769C22.5067 3.93292 22.2308 3.18652 21.5236 2.71585C20.8164 2.24517 20.0213 2.27883 19.2023 2.48754C18.4102 2.68938 17.4282 3.10042 16.224 3.60446L14.13 4.48093C13.5655 4.71715 13.0873 4.91728 12.712 5.12457C12.3126 5.34512 11.9686 5.60525 11.7106 5.99288C11.4527 6.38052 11.3455 6.79827 11.2963 7.25181C11.25 7.67809 11.25 8.19649 11.25 8.80836V11.983C11.2497 11.9945 11.2497 12.006 11.25 12.0175V16.7609C10.7449 16.4375 10.1443 16.25 9.5 16.25C7.70507 16.25 6.25 17.7051 6.25 19.5C6.25 21.2949 7.70507 22.75 9.5 22.75C11.2949 22.75 12.75 21.2949 12.75 19.5C12.75 19.33 12.7369 19.163 12.7118 19H12.75V12.5078L21.25 9.10778V14.7609C20.7449 14.4375 20.1443 14.25 19.5 14.25C17.7051 14.25 16.25 15.7051 16.25 17.5C16.25 19.2949 17.7051 20.75 19.5 20.75C21.2949 20.75 22.75 19.2949 22.75 17.5C22.75 17.3831 22.7438 17.2676 22.7318 17.1538H22.75V8.01702C22.7503 8.00554 22.7503 7.99404 22.75 7.98252ZM19.5 15.75C18.5335 15.75 17.75 16.5335 17.75 17.5C17.75 18.4665 18.5335 19.25 19.5 19.25C20.4665 19.25 21.25 18.4665 21.25 17.5C21.25 16.5335 20.4665 15.75 19.5 15.75ZM9.5 17.75C8.5335 17.75 7.75 18.5335 7.75 19.5C7.75 20.4665 8.5335 21.25 9.5 21.25C10.4665 21.25 11.25 20.4665 11.25 19.5C11.25 18.5335 10.4665 17.75 9.5 17.75Z" fill="currentColor"/>''',
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
