// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `backpack` icon in every style.
///
/// Prefer the static widgets (e.g. `BackpackLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class BackpackIcon extends StatelessWidget {
  /// Creates the `backpack` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const BackpackIcon({
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
    name: 'backpack',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.2915 4.78553V4.72453C7.2915 4.38601 7.30305 3.94261 7.4565 3.50336C7.9652 2.04714 9.35853 1 11 1H13C14.6415 1 16.0349 2.04714 16.5436 3.50336C16.697 3.94261 16.7085 4.38601 16.7085 4.72453V4.78555C19.212 5.52304 20.9631 7.79709 20.9994 10.4163C21 10.4574 21 10.5036 21 10.596V12.9191C20.8982 12.9191 20.7947 12.9398 20.6956 12.9835C15.1597 15.4273 8.84065 15.4273 3.30479 12.9835C3.2056 12.9397 3.10197 12.919 3 12.9191V10.596C3 10.5036 3 10.4574 3.00057 10.4163C3.03694 7.79707 4.78799 5.52301 7.2915 4.78553ZM8.87362 3.99175C9.17937 3.11649 10.017 2.48989 11 2.48989H13C13.9831 2.48989 14.8207 3.11649 15.1264 3.99175C15.1719 4.12188 15.194 4.27205 15.2032 4.46183C13.0832 4.10168 10.9169 4.10168 8.79689 4.46182C8.80602 4.27205 8.82816 4.12188 8.87362 3.99175ZM9.25 12.6708C9.25 12.2594 9.58579 11.9258 10 11.9258H14C14.4142 11.9258 14.75 12.2594 14.75 12.6708C14.75 13.0822 14.4142 13.4157 14 13.4157H10C9.58579 13.4157 9.25 13.0822 9.25 12.6708Z" fill="currentColor"/>
<path d="M21 14.4769C20.1 14.8588 19.1814 15.1809 18.2502 15.4432V16.644C18.2502 17.0554 17.9144 17.3889 17.5002 17.3889C17.086 17.3889 16.7502 17.0554 16.7502 16.644V15.8119C12.1726 16.7754 7.36827 16.3304 3 14.4767V16.0231C3 18.1267 4.47101 19.9482 6.53853 20.4045C10.1356 21.1985 13.8644 21.1985 17.4615 20.4045C19.529 19.9482 21 18.1267 21 16.0231V14.4769Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'backpack',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.2915 4.78559C4.78799 5.52306 3.03694 7.79713 3.00057 10.4163C3 10.4574 3 10.5036 3 10.596V12.9192C3.10197 12.9191 3.2056 12.9398 3.30479 12.9835C8.84065 15.4273 15.1597 15.4273 20.6956 12.9835C20.7947 12.9398 20.8982 12.9191 21 12.9192V10.596C21 10.5036 21 10.4574 20.9994 10.4163C20.9631 7.79714 19.212 5.52309 16.7085 4.7856C16.4308 4.69458 15.5892 4.53187 15.2032 4.46189C13.0832 4.10174 10.9169 4.10173 8.79689 4.46188C8.39226 4.53846 7.52471 4.71042 7.2915 4.78559ZM10 11.9259C9.58579 11.9259 9.25 12.2594 9.25 12.6708C9.25 13.0823 9.58579 13.4158 10 13.4158H14C14.4142 13.4158 14.75 13.0823 14.75 12.6708C14.75 12.2594 14.4142 11.9259 14 11.9259H10Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M21 16.0225C21 18.126 19.5292 19.9478 17.4619 20.4043C13.8648 21.1983 10.1352 21.1983 6.53809 20.4043C4.4708 19.9478 3 18.126 3 16.0225V14.4766C7.36823 16.3302 12.1724 16.775 16.75 15.8115V16.6436C16.75 17.0549 17.0859 17.3886 17.5 17.3887C17.9142 17.3887 18.25 17.055 18.25 16.6436V15.4434C19.1812 15.1811 20.1 14.8585 21 14.4766V16.0225Z" fill="currentColor"/>
<path d="M13 1C14.6411 1.0002 16.0342 2.04706 16.543 3.50293C16.6964 3.94219 16.708 4.38609 16.708 4.72461V4.78516C16.4302 4.69416 15.5893 4.53193 15.2031 4.46191C15.194 4.27233 15.1713 4.12223 15.126 3.99219C14.8203 3.11707 13.9828 2.49043 13 2.49023H11C10.017 2.49023 9.1788 3.11693 8.87305 3.99219C8.82769 4.12222 8.806 4.27234 8.79688 4.46191C8.39231 4.53849 7.52438 4.70997 7.29102 4.78516V4.72461C7.29102 4.38609 7.30261 3.94219 7.45605 3.50293C7.96487 2.04692 9.35865 1 11 1H13Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'backpack',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20.9994 10.7303C21 10.7717 21 10.8182 21 10.9112V16.3752C21 18.4931 19.529 20.3269 17.4615 20.7864C13.8644 21.5857 10.1356 21.5857 6.53853 20.7864C4.47101 20.3269 3 18.4931 3 16.3752V10.9112C3 10.8182 3 10.7717 3.00057 10.7303C3.0385 7.98021 4.94139 5.60803 7.61778 4.97443C7.65803 4.9649 7.70344 4.95481 7.79425 4.93463C7.87787 4.91605 7.91968 4.90675 7.96109 4.89775C10.6226 4.31875 13.3774 4.31875 16.0389 4.89775C16.0803 4.90675 16.1221 4.91605 16.2057 4.93463C16.2966 4.95481 16.342 4.9649 16.3822 4.97443C17.6946 5.28511 18.821 6.01382 19.6327 7.00012" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.5 15.5V17" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.9585 4.5C15.7205 3.08114 14.4865 2 13 2H11C9.51353 2 8.27954 3.08114 8.0415 4.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 14C4.6144 14.7175 6.29316 15.2329 8 15.546M21 14C18.1351 15.2733 15.0676 15.9099 12 15.9099" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 13H14" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'backpack',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3 10.9112C3 10.8182 3 10.7717 3.00057 10.7303C3.0385 7.98021 4.94139 5.60803 7.61778 4.97443C7.65803 4.9649 7.70344 4.95481 7.79425 4.93463C7.87787 4.91605 7.91968 4.90675 7.96109 4.89775C10.6226 4.31875 13.3774 4.31875 16.0389 4.89775C16.0803 4.90675 16.1221 4.91605 16.2057 4.93463C16.2966 4.95481 16.342 4.9649 16.3822 4.97443C19.0586 5.60803 20.9615 7.98021 20.9994 10.7303C21 10.7717 21 10.8182 21 10.9112V16.3752C21 18.4931 19.529 20.3269 17.4615 20.7864C13.8644 21.5857 10.1356 21.5857 6.53853 20.7864C4.47101 20.3269 3 18.4931 3 16.3752V10.9112Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.5 15.5V17" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.9585 4.5C15.7205 3.08114 14.4865 2 13 2H11C9.51353 2 8.27954 3.08114 8.0415 4.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 14C8.72979 16.5466 15.2702 16.5466 21 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 13H14" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'backpack',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3 10.9112C3 10.8182 3 10.7717 3.00057 10.7303C3.0385 7.98021 4.94139 5.60803 7.61778 4.97443C7.65803 4.9649 7.70344 4.95481 7.79425 4.93463C7.87787 4.91605 7.91968 4.90675 7.96109 4.89775C10.6226 4.31875 13.3774 4.31875 16.0389 4.89775C16.0803 4.90675 16.1221 4.91605 16.2057 4.93463C16.2966 4.95481 16.342 4.9649 16.3822 4.97443C19.0586 5.60803 20.9615 7.98021 20.9994 10.7303C21 10.7717 21 10.8182 21 10.9112V16.3752C21 18.4931 19.529 20.3269 17.4615 20.7864C13.8644 21.5857 10.1356 21.5857 6.53853 20.7864C4.47101 20.3269 3 18.4931 3 16.3752V10.9112Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 14C8.72979 16.5466 15.2702 16.5466 21 14" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17.5 15.5V17" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M15.9585 4.5C15.7205 3.08114 14.4865 2 13 2H11C9.51353 2 8.27954 3.08114 8.0415 4.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 13H14" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'backpack',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M10.0002 12.25C9.58597 12.25 9.25019 12.5858 9.25019 13C9.25019 13.4142 9.58597 13.75 10.0002 13.75H14.0002C14.4144 13.75 14.7502 13.4142 14.7502 13C14.7502 12.5858 14.4144 12.25 14.0002 12.25H10.0002Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M7.32033 4.27529C7.65835 2.55091 9.17665 1.25 11.0002 1.25H13.0002C14.8238 1.25 16.3421 2.55092 16.6801 4.2753C19.6252 5.03147 21.7075 7.66894 21.7495 10.7198C21.7502 10.7665 21.7502 10.8178 21.7502 10.9044V13.9829C21.7504 13.994 21.7504 14.0052 21.7502 14.0163V16.375C21.7502 18.8445 20.035 20.9827 17.6244 21.5184C13.9201 22.3415 10.0803 22.3415 6.37602 21.5184C3.96535 20.9827 2.25019 18.8445 2.25019 16.375V14.0163C2.24994 14.0052 2.24994 13.994 2.25019 13.9829V10.9043C2.25019 10.8177 2.25019 10.7664 2.25083 10.7198C2.2929 7.66892 4.37523 5.03144 7.32033 4.27529ZM9.01465 3.94034C9.39359 3.23199 10.1411 2.75 11.0002 2.75H13.0002C13.8594 2.75 14.6068 3.232 14.9858 3.94035C13.0069 3.63773 10.9935 3.63772 9.01465 3.94034ZM20.2502 10.9111V13.5066C14.9716 15.711 9.02878 15.711 3.75019 13.5066V10.9111C3.75019 10.8157 3.7502 10.7755 3.75069 10.7405C3.78387 8.33419 5.4489 6.25854 7.79074 5.70414C7.82473 5.69609 7.86404 5.68733 7.95714 5.66665C8.04138 5.64793 8.08131 5.63905 8.12071 5.63048C10.6771 5.07434 13.3232 5.07434 15.8797 5.63048C15.9191 5.63905 15.959 5.64793 16.0432 5.66665C16.1363 5.68733 16.1756 5.69609 16.2096 5.70414C18.5515 6.25854 20.2165 8.33419 20.2497 10.7405C20.2502 10.7755 20.2502 10.8157 20.2502 10.9111ZM3.75019 16.375V15.123C7.91456 16.7307 12.4332 17.0771 16.7502 16.1622V17C16.7502 17.4142 17.086 17.75 17.5002 17.75C17.9144 17.75 18.2502 17.4142 18.2502 17V15.7911C18.9242 15.5999 19.5916 15.3772 20.2502 15.123V16.375C20.2502 18.1415 19.0233 19.6709 17.299 20.0541C13.809 20.8296 10.1914 20.8296 6.70141 20.0541C4.97705 19.6709 3.75019 18.1415 3.75019 16.375Z" fill="currentColor"/>''',
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
