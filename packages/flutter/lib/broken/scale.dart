// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `scale` icon in the broken style.
class ScaleBrokenIcon extends StatelessWidget {
  /// Creates the `scale` icon in the broken style.
  const ScaleBrokenIcon({
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
    name: 'scale',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21 10V14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22H11C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14V10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2H13C16.7712 2 18.6569 2 19.8284 3.17157C20.4816 3.82475 20.7706 4.69989 20.8985 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 18H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.1235 5.52027L15.549 5.59118C16.8084 5.80108 17.5513 7.12128 17.0771 8.30674L16.4115 9.97082C16.1757 10.5602 15.5408 10.8849 14.9249 10.7309C13.0045 10.2508 10.9954 10.2508 9.07499 10.7309C8.45912 10.8849 7.82419 10.5602 7.58842 9.97082L6.92279 8.30675C6.44861 7.12128 7.19154 5.80108 8.45095 5.59118L8.87638 5.52027C9.58042 5.40293 10.2894 5.32554 11 5.28809" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.1796 9.92856L9.50464 8.0459" stroke="currentColor" stroke-linecap="round"/>''',
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
