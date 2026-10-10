// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `container` icon in the linear style.
class ContainerLinearIcon extends StatelessWidget {
  /// Creates the `container` icon in the linear style.
  const ContainerLinearIcon({
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
    name: 'container',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9.79435 20.8972C10.5261 20.8972 11.2061 20.5402 12.5666 19.8262L14.1166 19.0128L18.5729 16.7177L18.5744 16.7169C20.2408 15.8424 21.0742 15.4051 21.537 14.6191C22 13.8329 22 12.8546 22 10.898V10.8073C22 8.85065 22 7.87232 21.537 7.08612C21.0741 6.29993 20.2403 5.86238 18.5729 4.98736L17.023 4.174C15.6624 3.46002 14.9822 3.10303 14.2504 3.10303C13.5186 3.10303 12.8384 3.46002 11.4778 4.174L7.02145 6.46894L5.47154 7.2823C3.80408 8.15734 2.97025 8.59486 2.50729 9.38106M9.79435 20.8972C9.06258 20.8972 8.38199 20.5402 7.02145 19.8262L5.47154 19.0128C3.80408 18.1378 2.97035 17.7003 2.50739 16.9141C2.04443 16.1279 2.04443 15.1495 2.04443 13.1929V13.1022C2.04443 11.1456 2.04433 10.1673 2.50729 9.38106M9.79435 20.8972V12.9178M2.50729 9.38106L9.79435 12.9178M21.495 7.07776L9.79435 12.9178" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.7993 12.1948L15.7993 16.0834" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.9458 10.6174L18.9458 14.506" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.8384 13.6692L12.8384 17.5577" stroke="currentColor" stroke-linecap="round"/>''',
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
