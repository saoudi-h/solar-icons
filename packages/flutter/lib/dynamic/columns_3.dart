// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `columns-3` icon in every style.
///
/// Prefer the static widgets (e.g. `Columns3LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Columns3Icon extends StatelessWidget {
  /// Creates the `columns-3` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const Columns3Icon({
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
    name: 'columns-3',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M14.583 20.999C14.3938 20.9992 14.1996 21 14 21H10C9.80044 21 9.60616 20.9992 9.41699 20.999V3H14.583V20.999Z" fill="currentColor"/>
<path d="M7.91699 20.9863C5.489 20.9475 4.10438 20.7606 3.17188 19.8281C2.0003 18.6566 2 16.7712 2 13V11C2 7.22876 2.0003 5.34345 3.17188 4.17188C4.10438 3.23937 5.48899 3.05152 7.91699 3.0127V20.9863Z" fill="currentColor"/>
<path d="M16.083 3.0127C18.511 3.05152 19.8956 3.23937 20.8281 4.17188C21.9997 5.34345 22 7.22876 22 11V13C22 16.7712 21.9997 18.6566 20.8281 19.8281C19.8956 20.7606 18.511 20.9475 16.083 20.9863V3.0127Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'columns-3',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.083 3.0127V20.9863C15.622 20.9937 15.1233 20.9995 14.583 21V3C15.1233 3.0005 15.622 3.00532 16.083 3.0127Z" fill="currentColor"/>
<path d="M9.41602 20.999C8.87568 20.9985 8.37707 20.9937 7.91602 20.9863V3.0127C8.37706 3.00531 8.87569 3.0005 9.41602 3V20.999Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'columns-3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8.6665 21L8.6665 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11V13C2 16.7712 2 18.6569 3.17157 19.8284C4.34315 21 6.22876 21 10 21H14C17.7712 21 19.6569 21 20.8284 19.8284C22 18.6569 22 16.7712 22 13V11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3H10C6.22876 3 4.34315 3 3.17157 4.17157C2.51839 4.82475 2.22937 5.69989 2.10149 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.333 3L15.333 13M15.333 17L15.333 21" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'columns-3',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M15.333 21L15.333 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.6665 21L8.6665 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'columns-3',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.333 21L15.333 3" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M8.6665 21L8.6665 3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'columns-3',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M15.2949 2.25104C15.3075 2.25041 15.3202 2.25007 15.333 2.25007C15.3517 2.25007 15.3703 2.25067 15.3887 2.25202C16.616 2.25948 17.6405 2.28927 18.4893 2.40339C19.6616 2.56103 20.6101 2.89336 21.3584 3.64167C22.1067 4.38998 22.439 5.3385 22.5967 6.51081C22.7514 7.66165 22.75 9.13565 22.75 11.0001V13.0001C22.75 14.8645 22.7514 16.3385 22.5967 17.4893C22.439 18.6616 22.1067 19.6102 21.3584 20.3585C20.6101 21.1068 19.6616 21.4391 18.4893 21.5967C17.6405 21.7109 16.616 21.7397 15.3887 21.7471C15.3703 21.7485 15.3518 21.7501 15.333 21.7501C15.3202 21.7501 15.3076 21.7487 15.2949 21.7481C14.8858 21.7502 14.4545 21.7501 14 21.7501H10C9.54512 21.7501 9.11348 21.7502 8.7041 21.7481C8.69179 21.7487 8.67945 21.7501 8.66699 21.7501C8.64808 21.7501 8.62891 21.7485 8.61035 21.7471C7.3835 21.7397 6.35928 21.7108 5.51074 21.5967C4.33844 21.4391 3.38991 21.1068 2.6416 20.3585C1.89329 19.6102 1.56096 18.6616 1.40332 17.4893C1.24859 16.3385 1.25 14.8645 1.25 13.0001V11.0001C1.25 9.13565 1.24859 7.66165 1.40332 6.51081C1.56096 5.3385 1.89329 4.38998 2.6416 3.64167C3.38991 2.89336 4.33844 2.56103 5.51074 2.40339C6.35928 2.2893 7.3835 2.25949 8.61035 2.25202C8.62873 2.25066 8.6473 2.25008 8.66602 2.25007C8.6783 2.25007 8.69099 2.25046 8.70313 2.25104C9.11279 2.24892 9.54476 2.25007 10 2.25007H14C14.4545 2.25007 14.8858 2.24893 15.2949 2.25104ZM9.41699 3.75007V20.2491C9.60541 20.2493 9.79966 20.2501 10 20.2501H14C14.2003 20.2501 14.3946 20.2493 14.583 20.2491V3.75007H9.41699ZM7.91699 3.76178C7.03708 3.77592 6.31711 3.80822 5.71094 3.88971C4.70485 4.02498 4.12536 4.279 3.70215 4.70221C3.27894 5.12542 3.02491 5.70491 2.88965 6.711C2.7515 7.73866 2.75 9.09331 2.75 11.0001V13.0001C2.75 14.9068 2.7515 16.2615 2.88965 17.2891C3.02491 18.2952 3.27894 18.8747 3.70215 19.2979C4.12536 19.7211 4.70485 19.9752 5.71094 20.1104C6.3171 20.1919 7.03708 20.2232 7.91699 20.2374V3.76178ZM16.083 20.2374C16.9629 20.2232 17.6829 20.1919 18.2891 20.1104C19.2952 19.9752 19.8746 19.7211 20.2979 19.2979C20.7211 18.8747 20.9751 18.2952 21.1104 17.2891C21.2485 16.2615 21.25 14.9068 21.25 13.0001V11.0001C21.25 9.09331 21.2485 7.73866 21.1104 6.711C20.9751 5.70491 20.7211 5.12542 20.2979 4.70221C19.8746 4.27901 19.2952 4.02498 18.2891 3.88971C17.6829 3.80822 16.9629 3.77592 16.083 3.76178V20.2374Z" fill="currentColor"/>''',
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
