// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ufo-3` icon in the lineDuotone style.
class Ufo3LineDuotoneIcon extends StatelessWidget {
  /// Creates the `ufo-3` icon in the lineDuotone style.
  const Ufo3LineDuotoneIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

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

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'ufo-3',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11.8764 5.09345L11.8509 5.0783C9.22709 3.47503 6.85136 3.00679 5.75899 4.09916C4.12909 5.72907 5.97361 10.2162 9.87885 14.1214C13.7841 18.0267 18.2712 19.8712 19.9011 18.2413C20.9935 17.1489 20.5253 14.7732 18.922 12.1494L18.9083 12.1225" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.4848 5.44459C13.3314 3.5979 16.3255 3.5979 18.1722 5.44459L18.5558 5.82818C20.4025 7.67488 20.4025 10.669 18.5558 12.5157C18.4305 12.641 18.2697 12.7251 18.0953 12.6938C17.5988 12.6046 16.3769 12.1346 14.1214 9.87903C11.8658 7.62347 11.3958 6.40162 11.3066 5.90516C11.2753 5.7307 11.3594 5.56993 11.4848 5.44459Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.636 20.3635L7.75732 16.2422" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.2427 14.8281H16.2428" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.17163 7.75684H9.17173" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M10 22L12.7072 19.7777" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2 14L4.22192 11.293" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 12H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  SolarIconData get _data => data;

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
