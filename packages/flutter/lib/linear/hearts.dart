// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hearts` icon in the linear style.
class HeartsLinearIcon extends StatelessWidget {
  /// Creates the `hearts` icon in the linear style.
  const HeartsLinearIcon({
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
    name: 'hearts',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M21.1474 12.9177C21.6735 13.4689 22 14.2243 22 15.0595C22 17.6018 19.7893 18.9566 18.171 20.1692C17.6 20.5971 17.05 21 16.5 21C15.95 21 15.4 20.5971 14.829 20.1692C14.6903 20.0653 14.5474 19.9604 14.4018 19.8538M21.1474 12.9177C20.0718 11.7909 18.1619 11.5171 16.5 13.1584C14.0251 10.7142 11 12.5172 11 15.0595C11 17.3841 12.8482 18.7158 14.4018 19.8538M21.1474 12.9177C21.6771 11.8105 22 10.5602 22 9.11901C22 4.03436 16.4998 0.428415 12 5.31675C7.50016 0.428415 2 4.03436 2 9.11901C2 14.2037 6.01943 16.9132 8.96173 19.3384C10 20.1942 11 21 12 21C12.7942 21 13.5884 20.4917 14.4018 19.8538" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
