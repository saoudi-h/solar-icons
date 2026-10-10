// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `call-medicine` icon in the broken style.
class CallMedicineBrokenIcon extends StatelessWidget {
  /// Creates the `call-medicine` icon in the broken style.
  const CallMedicineBrokenIcon({
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
    name: 'call-medicine',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M17 12C19.7614 12 22 9.76142 22 7C22 4.23858 19.7614 2 17 2C14.2386 2 12 4.23858 12 7C12 7.79984 12.1878 8.55582 12.5217 9.22624C12.6105 9.4044 12.64 9.60803 12.5886 9.80031L12.2908 10.9133C12.1615 11.3965 12.6035 11.8385 13.0867 11.7092L14.1997 11.4114C14.392 11.36 14.5956 11.3895 14.7738 11.4783C15.4442 11.8122 16.2002 12 17 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 9L17 5M19 7L15 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 7.96582C2.09015 9.64534 2.80783 13.2589 6.81247 17.4751C7.92563 18.647 9.02078 19.524 10.0602 20.1772" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9563 21.7925C15.1197 22.0361 16.0622 22.0234 16.6734 21.9631C17.1888 21.9122 17.637 21.6343 17.9982 21.254L19.4188 19.7584C20.3777 18.7489 20.1073 17.0182 18.8804 16.312L16.9699 15.2123C16.1643 14.7486 15.1829 14.8848 14.5533 15.5477L14.0978 16.0272C14.0978 16.0272 13.0152 17.167 10.0602 14.0559C7.10521 10.9448 8.1878 9.80507 8.1878 9.80507L8.47461 9.50311C9.18117 8.75924 9.24778 7.56497 8.63134 6.6931L7.37035 4.90962C6.60738 3.8305 5.13305 3.68795 4.25854 4.60864" stroke="currentColor" stroke-linecap="round"/>''',
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
