// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `station-minimalistic` icon in every style.
///
/// Prefer the static widgets (e.g. `StationMinimalisticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class StationMinimalisticIcon extends StatelessWidget {
  /// Creates the `station-minimalistic` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const StationMinimalisticIcon({
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
    name: 'station-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 2.75C8.55372 2.75 5.75 5.56721 5.75 9.05473C5.75 10.7783 6.43459 12.3382 7.54467 13.4763C7.8339 13.7728 7.82798 14.2477 7.53146 14.5369C7.23494 14.8261 6.76011 14.8202 6.47088 14.5237C5.09743 13.1156 4.25 11.1836 4.25 9.05473C4.25 4.74981 7.7143 1.25 12 1.25C16.2857 1.25 19.75 4.74981 19.75 9.05473C19.75 11.1656 18.9168 13.083 17.5637 14.488C17.2764 14.7863 16.8016 14.7953 16.5033 14.5079C16.2049 14.2206 16.196 13.7458 16.4833 13.4475C17.5769 12.3119 18.25 10.7638 18.25 9.05473C18.25 5.56721 15.4463 2.75 12 2.75Z" fill="currentColor"/>
<path d="M12 5.57189C10.1001 5.57189 8.55 7.12569 8.55 9.05473C8.55 10.0006 8.92249 10.8563 9.52768 11.4839C9.8152 11.7821 9.80657 12.2569 9.50841 12.5444C9.21024 12.8319 8.73545 12.8233 8.44792 12.5251C7.58286 11.628 7.05 10.4028 7.05 9.05473C7.05 6.3083 9.26069 4.07189 12 4.07189C14.7393 4.07189 16.95 6.3083 16.95 9.05473C16.95 10.3837 16.4321 11.5933 15.5886 12.4868C15.3043 12.788 14.8296 12.8017 14.5284 12.5173C14.2272 12.233 14.2135 11.7583 14.4979 11.4571C15.088 10.8321 15.45 9.9873 15.45 9.05473C15.45 7.12569 13.8999 5.57189 12 5.57189Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.2844 9.77504C10.9613 9.54906 10.75 9.17421 10.75 8.75C10.75 8.05964 11.3096 7.5 12 7.5C12.6904 7.5 13.25 8.05964 13.25 8.75C13.25 9.17421 13.0387 9.54906 12.7156 9.77504L15.206 17.2462C15.2099 17.2571 15.2136 17.2681 15.217 17.2792L16.7115 21.7628C16.8425 22.1558 16.6301 22.5805 16.2372 22.7115C15.8442 22.8425 15.4195 22.6301 15.2885 22.2372L13.9594 18.25H10.0406L8.71151 22.2372C8.58053 22.6301 8.15579 22.8425 7.76283 22.7115C7.36987 22.5805 7.1575 22.1558 7.28849 21.7628L8.78302 17.2792C8.78644 17.2681 8.79011 17.2571 8.79402 17.2462L11.2844 9.77504ZM12 12.3717L13.4594 16.75H10.5406L12 12.3717Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'station-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.2846 9.77504C10.9615 9.54906 10.7502 9.17421 10.7502 8.75C10.7502 8.05964 11.3098 7.5 12.0002 7.5C12.6906 7.5 13.2502 8.05964 13.2502 8.75C13.2502 9.17421 13.0389 9.54906 12.7158 9.77504L15.2062 17.2462C15.2101 17.2571 15.2138 17.2681 15.2172 17.2792L16.7117 21.7628C16.8427 22.1558 16.6303 22.5805 16.2374 22.7115C15.8444 22.8425 15.4197 22.6301 15.2887 22.2372L13.9596 18.25H10.0408L8.71172 22.2372C8.58073 22.6301 8.15599 22.8425 7.76303 22.7115C7.37008 22.5805 7.15771 22.1558 7.28869 21.7628L8.78322 17.2792C8.78664 17.2681 8.79031 17.2571 8.79422 17.2462L11.2846 9.77504ZM12.0002 12.3717L13.4596 16.75H10.5408L12.0002 12.3717Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M12 1.25C16.2857 1.25 19.75 4.74979 19.75 9.05469C19.75 11.1656 18.9165 13.0833 17.5635 14.4883C17.2761 14.7864 16.8012 14.7951 16.5029 14.5078C16.2048 14.2205 16.1961 13.7455 16.4834 13.4473C17.5769 12.3117 18.25 10.7637 18.25 9.05469C18.25 5.56718 15.4463 2.75 12 2.75C8.55373 2.75 5.75002 5.56718 5.75 9.05469C5.75 10.7783 6.43484 12.3385 7.54492 13.4766C7.8339 13.7731 7.82769 14.248 7.53125 14.5371C7.23472 14.8261 6.75986 14.8199 6.4707 14.5234C5.09738 13.1154 4.25 11.1835 4.25 9.05469C4.25002 4.74979 7.71431 1.25 12 1.25Z" fill="currentColor"/>
<path d="M12 4.07227C14.7392 4.07237 16.9502 6.30833 16.9502 9.05469C16.9502 10.3834 16.4321 11.5929 15.5889 12.4863C15.3046 12.7874 14.8295 12.8017 14.5283 12.5176C14.2271 12.2332 14.2137 11.7582 14.498 11.457C15.088 10.832 15.4502 9.98715 15.4502 9.05469C15.4502 7.12572 13.8998 5.57237 12 5.57227C10.1001 5.57227 8.5498 7.12565 8.5498 9.05469C8.54982 10.0004 8.92232 10.8559 9.52734 11.4834C9.81487 11.7816 9.80598 12.2564 9.50781 12.5439C9.20964 12.8314 8.73477 12.8235 8.44727 12.5254C7.58223 11.6283 7.04982 10.4027 7.0498 9.05469C7.0498 6.30826 9.26069 4.07227 12 4.07227Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'station-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13.25 8.75C13.25 9.44036 12.6904 10 12 10C11.3096 10 10.75 9.44036 10.75 8.75C10.75 8.05964 11.3096 7.5 12 7.5C12.6904 7.5 13.25 8.05964 13.25 8.75Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 4.82189C9.6804 4.82189 7.8 6.717 7.8 9.05473C7.8 10.2017 8.25268 11.2422 8.9878 12.0045M12 2C15.866 2 19 5.15851 19 9.05473C19 10.9647 18.2468 12.6975 17.0235 13.9677M7.00778 14C5.76601 12.7269 5 10.981 5 9.05473C5 7.12849 5.76601 5.38255 7.00778 4.10946M15.0432 11.972C15.76 11.2127 16.2 10.1855 16.2 9.05473C16.2 8.30908 16.0087 7.60845 15.6728 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 22L12 10L8 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.5 17.5H9.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'station-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13.25 8.75C13.25 9.44036 12.6904 10 12 10C11.3096 10 10.75 9.44036 10.75 8.75C10.75 8.05964 11.3096 7.5 12 7.5C12.6904 7.5 13.25 8.05964 13.25 8.75Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.00778 14C5.76601 12.7269 5 10.981 5 9.05473C5 5.15851 8.13401 2 12 2C15.866 2 19 5.15851 19 9.05473C19 10.9647 18.2468 12.6975 17.0235 13.9677M8.9878 12.0045C8.25268 11.2422 7.8 10.2017 7.8 9.05473C7.8 6.717 9.6804 4.82189 12 4.82189C14.3196 4.82189 16.2 6.717 16.2 9.05473C16.2 10.1855 15.76 11.2127 15.0432 11.972" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 22L12 10L8 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.5 17.5H9.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'station-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13.25 8.75C13.25 9.44036 12.6904 10 12 10C11.3096 10 10.75 9.44036 10.75 8.75C10.75 8.05964 11.3096 7.5 12 7.5C12.6904 7.5 13.25 8.05964 13.25 8.75Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 22L12 10L8 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.5 17.5H9.5" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M7.00778 14C5.76601 12.7269 5 10.981 5 9.05473C5 5.15851 8.13401 2 12 2C15.866 2 19 5.15851 19 9.05473C19 10.9647 18.2468 12.6975 17.0235 13.9677" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M8.98785 12.0044C8.25272 11.2421 7.80005 10.2016 7.80005 9.05461C7.80005 6.71688 9.68045 4.82178 12 4.82178C14.3196 4.82178 16.2 6.71688 16.2 9.05461C16.2 10.1854 15.7601 11.2126 15.0433 11.9718" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'station-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M5.75 9.05473C5.75 5.56721 8.55372 2.75 12 2.75C15.4463 2.75 18.25 5.56721 18.25 9.05473C18.25 10.7638 17.5769 12.3119 16.4833 13.4475C16.196 13.7458 16.2049 14.2206 16.5033 14.5079C16.8016 14.7953 17.2764 14.7863 17.5637 14.488C18.9168 13.083 19.75 11.1656 19.75 9.05473C19.75 4.74981 16.2857 1.25 12 1.25C7.7143 1.25 4.25 4.74981 4.25 9.05473C4.25 11.1836 5.09743 13.1156 6.47088 14.5237C6.76011 14.8202 7.23494 14.8261 7.53146 14.5369C7.82798 14.2477 7.8339 13.7728 7.54467 13.4763C6.43459 12.3382 5.75 10.7783 5.75 9.05473Z" fill="currentColor"/>
<path d="M8.55 9.05473C8.55 7.12569 10.1001 5.57189 12 5.57189C13.8999 5.57189 15.45 7.12569 15.45 9.05473C15.45 9.9873 15.088 10.8321 14.4979 11.4571C14.2135 11.7583 14.2272 12.233 14.5284 12.5173C14.8296 12.8017 15.3043 12.788 15.5886 12.4868C16.4321 11.5933 16.95 10.3837 16.95 9.05473C16.95 6.3083 14.7393 4.07189 12 4.07189C9.26069 4.07189 7.05 6.3083 7.05 9.05473C7.05 10.4028 7.58286 11.628 8.44792 12.5251C8.73545 12.8233 9.21024 12.8319 9.50841 12.5444C9.80657 12.2569 9.8152 11.7821 9.52768 11.4839C8.92249 10.8563 8.55 10.0006 8.55 9.05473Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M14 8.75C14 9.50706 13.5794 10.1659 12.9591 10.5055L15.206 17.2462C15.2099 17.2571 15.2136 17.2681 15.217 17.2792L16.7115 21.7628C16.8425 22.1558 16.6301 22.5805 16.2372 22.7115C15.8442 22.8425 15.4195 22.6301 15.2885 22.2372L13.9594 18.25H10.0406L8.71151 22.2372C8.58053 22.6301 8.15579 22.8425 7.76283 22.7115C7.36987 22.5805 7.1575 22.1558 7.28849 21.7628L8.78302 17.2792C8.78644 17.2681 8.79011 17.2571 8.79402 17.2462L11.0409 10.5055C10.4206 10.1659 10 9.50706 10 8.75C10 7.64543 10.8954 6.75 12 6.75C13.1046 6.75 14 7.64543 14 8.75ZM11.5 8.75C11.5 8.47386 11.7239 8.25 12 8.25C12.2761 8.25 12.5 8.47386 12.5 8.75C12.5 9.02614 12.2761 9.25 12 9.25C11.7239 9.25 11.5 9.02614 11.5 8.75ZM10.5406 16.75H13.4594L12 12.3717L10.5406 16.75Z" fill="currentColor"/>''',
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
