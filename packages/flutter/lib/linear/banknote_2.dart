// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `banknote-2` icon in the linear style.
class Banknote2LinearIcon extends StatelessWidget {
  /// Creates the `banknote-2` icon in the linear style.
  const Banknote2LinearIcon({
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
    name: 'banknote-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 11C2 8.17157 2 6.75736 2.87868 5.87868C3.75736 5 5.17157 5 8 5H13C15.8284 5 17.2426 5 18.1213 5.87868C19 6.75736 19 8.17157 19 11C19 13.8284 19 15.2426 18.1213 16.1213C17.2426 17 15.8284 17 13 17H8C5.17157 17 3.75736 17 2.87868 16.1213C2 15.2426 2 13.8284 2 11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.9303 8.06934C19.9438 8.16176 20.6197 8.37704 21.1211 8.87848C21.9998 9.75716 21.9998 11.1714 21.9998 13.9998C21.9998 16.8282 21.9998 18.2424 21.1211 19.1211C20.2424 19.9998 18.8282 19.9998 15.9998 19.9998H10.9998C8.17138 19.9998 6.75716 19.9998 5.87848 19.1211C5.37704 18.6197 5.16176 17.9438 5.06934 16.9303" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 11C13 12.3807 11.8807 13.5 10.5 13.5C9.11929 13.5 8 12.3807 8 11C8 9.61929 9.11929 8.5 10.5 8.5C11.8807 8.5 13 9.61929 13 11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 13L16 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 13L5 9" stroke="currentColor" stroke-linecap="round"/>''',
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
