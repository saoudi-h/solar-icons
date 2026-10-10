// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `filters` icon in the boldDuotone style.
class FiltersBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `filters` icon in the boldDuotone style.
  const FiltersBoldDuotoneIcon({
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
    name: 'filters',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M18 8C18 11.3137 15.3137 14 12 14C8.68629 14 6 11.3137 6 8C6 4.68629 8.68629 2 12 2C15.3137 2 18 4.68629 18 8Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M17.5801 10.21C20.1272 10.9035 22 13.2332 22 16C21.9999 19.3136 19.3136 22 16 22C14.4633 22 13.0615 21.4218 12 20.4717C12.0032 20.4688 12.0056 20.4648 12.0088 20.4619C10.9461 21.4174 9.54152 22 8 22C4.68629 22 2 19.3137 2 16C2.00002 13.2331 3.87278 10.9034 6.41992 10.21C7.29998 12.4299 9.46679 14 12 14C12.5468 14 13.0767 13.9271 13.5801 13.79C15.4087 13.2922 16.89 11.9507 17.5801 10.21ZM13.9766 16.5117C13.9816 16.4517 13.9879 16.3916 13.9912 16.3311L13.9922 16.3086C13.9887 16.3767 13.9823 16.4443 13.9766 16.5117Z" fill="currentColor"/>

<path opacity="0.5" d="M13.5798 13.7899C13.0765 13.9269 12.5468 14 12 14C9.46679 14 7.30024 12.4302 6.42018 10.2102C3.87293 10.9036 2 13.2331 2 16C2 19.3138 4.68629 22 8 22C11.3137 22 14 19.3138 14 16C14 15.2195 13.851 14.4739 13.5798 13.7899Z" fill="currentColor"/>''',
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
