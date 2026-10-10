// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-point-favorite` icon in every style.
///
/// Prefer the static widgets (e.g. `MapPointFavoriteLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MapPointFavoriteIcon extends StatelessWidget {
  /// Creates the `map-point-favorite` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const MapPointFavoriteIcon({
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
    name: 'map-point-favorite',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C7.58172 2 4 5.64588 4 10.1433C4 14.6055 6.55332 19.8124 10.5371 21.6744C11.4657 22.1085 12.5343 22.1085 13.4629 21.6744C17.4467 19.8124 20 14.6055 20 10.1433C20 5.64588 16.4183 2 12 2ZM9 8.75734C9 9.77693 10.1649 10.8543 11.0429 11.5215C11.4626 11.8405 11.6725 12 12 12C12.3275 12 12.5374 11.8405 12.9571 11.5215C13.8351 10.8543 15 9.77694 15 8.75733C15 7.02433 13.35 6.37732 12 7.71604C10.65 6.37732 9 7.02433 9 8.75734Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'map-point-favorite',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.7238 13.3301C9.55314 12.396 8 10.8877 8 9.46027C8 7.03407 10.2001 6.12824 12 8.00246C13.7999 6.12824 16 7.03407 16 9.46026C16 10.8877 14.4469 12.396 13.2762 13.3301C12.7165 13.7767 12.4367 14 12 14C11.5633 14 11.2835 13.7767 10.7238 13.3301Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.5371 21.6744C11.4657 22.1085 12.5343 22.1085 13.4629 21.6744C17.4467 19.8124 20 14.6055 20 10.1433C20 5.64588 16.4183 2 12 2C7.58172 2 4 5.64588 4 10.1433C4 14.6055 6.55332 19.8124 10.5371 21.6744Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'map-point-favorite',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5 15.2161C4.35254 13.5622 4 11.8013 4 10.1433C4 5.64588 7.58172 2 12 2C16.4183 2 20 5.64588 20 10.1433C20 14.6055 17.4467 19.8124 13.4629 21.6744C12.5343 22.1085 11.4657 22.1085 10.5371 21.6744C9.26474 21.0797 8.13831 20.1439 7.19438 19" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.9571 11.5215C12.5374 11.8405 12.3275 12 12 12C11.6725 12 11.4626 11.8405 11.0429 11.5215C10.1649 10.8543 9 9.77693 9 8.75734C9 7.02433 10.65 6.37732 12 7.71604C13.35 6.37732 15 7.02433 15 8.75733C15 9.17251 14.8069 9.59726 14.5186 10" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'map-point-favorite',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 10.1433C4 5.64588 7.58172 2 12 2C16.4183 2 20 5.64588 20 10.1433C20 14.6055 17.4467 19.8124 13.4629 21.6744C12.5343 22.1085 11.4657 22.1085 10.5371 21.6744C6.55332 19.8124 4 14.6055 4 10.1433Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 8.75734C9 9.77693 10.1649 10.8543 11.0429 11.5215C11.4626 11.8405 11.6725 12 12 12C12.3275 12 12.5374 11.8405 12.9571 11.5215C13.8352 10.8543 15 9.77694 15 8.75733C15 7.02433 13.35 6.37732 12 7.71604C10.65 6.37732 9 7.02433 9 8.75734Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'map-point-favorite',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 8.75734C9 9.77693 10.1649 10.8543 11.0429 11.5215C11.4626 11.8405 11.6725 12 12 12C12.3275 12 12.5374 11.8405 12.9571 11.5215C13.8352 10.8543 15 9.77694 15 8.75733C15 7.02433 13.35 6.37732 12 7.71604C10.65 6.37732 9 7.02433 9 8.75734Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 10.1433C4 5.64588 7.58172 2 12 2C16.4183 2 20 5.64588 20 10.1433C20 14.6055 17.4467 19.8124 13.4629 21.6744C12.5343 22.1085 11.4657 22.1085 10.5371 21.6744C6.55332 19.8124 4 14.6055 4 10.1433Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'map-point-favorite',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.25 10.1433C3.25 5.24427 7.15501 1.25 12 1.25C16.845 1.25 20.75 5.24427 20.75 10.1433C20.75 12.5084 20.076 15.0479 18.8844 17.2419C17.6944 19.4331 15.9556 21.3372 13.7805 22.3539C12.6506 22.882 11.3494 22.882 10.2195 22.3539C8.04437 21.3372 6.30562 19.4331 5.11556 17.2419C3.92403 15.0479 3.25 12.5084 3.25 10.1433ZM12 2.75C8.00843 2.75 4.75 6.04748 4.75 10.1433C4.75 12.2404 5.35263 14.5354 6.4337 16.526C7.51624 18.5192 9.04602 20.1496 10.8546 20.995C11.5821 21.335 12.4179 21.335 13.1454 20.995C14.954 20.1496 16.4838 18.5192 17.5663 16.526C18.6474 14.5354 19.25 12.2404 19.25 10.1433C19.25 6.04748 15.9916 2.75 12 2.75ZM14.2622 6.37982C15.2018 6.72098 15.75 7.64657 15.75 8.75733C15.75 9.53561 15.3182 10.2317 14.8835 10.7523C14.4314 11.2938 13.8712 11.7689 13.4109 12.1187C13.3872 12.1367 13.3633 12.155 13.3392 12.1735C12.9904 12.4407 12.5868 12.75 12 12.75C11.4132 12.75 11.0095 12.4407 10.6608 12.1735C10.6367 12.155 10.6128 12.1367 10.5891 12.1187C10.1288 11.7689 9.56863 11.2938 9.11649 10.7523C8.68177 10.2317 8.25 9.53562 8.25 8.75734C8.25 7.64658 8.79816 6.72098 9.73781 6.37982C10.4739 6.11258 11.2853 6.26382 12 6.74722C12.7147 6.26382 13.5261 6.11258 14.2622 6.37982ZM13.7503 7.78976C13.5127 7.7035 13.0567 7.72437 12.5281 8.24858C12.2357 8.53853 11.7643 8.53853 11.4719 8.24858C10.9433 7.72437 10.4873 7.7035 10.2497 7.78976C10.0269 7.87068 9.75 8.13509 9.75 8.75734C9.75 8.99865 9.90066 9.35108 10.2679 9.79085C10.6177 10.2097 11.0789 10.6069 11.4967 10.9244C11.7231 11.0964 11.8303 11.1756 11.9158 11.2223C11.9667 11.2501 11.9796 11.2501 11.9974 11.25C11.9982 11.25 11.9991 11.25 12 11.25C12.0009 11.25 12.0018 11.25 12.0026 11.25C12.0204 11.2501 12.0333 11.2501 12.0842 11.2223C12.1697 11.1756 12.2769 11.0964 12.5034 10.9244C12.9211 10.6069 13.3824 10.2098 13.7321 9.79086C14.0993 9.3511 14.25 8.99866 14.25 8.75733C14.25 8.13509 13.9731 7.87068 13.7503 7.78976Z" fill="currentColor"/>''',
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
