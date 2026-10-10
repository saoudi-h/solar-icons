// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `heart-unlock` icon in the bold style.
class HeartUnlockBoldIcon extends StatelessWidget {
  /// Creates the `heart-unlock` icon in the bold style.
  const HeartUnlockBoldIcon({
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
    name: 'heart-unlock',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.75 7C7.75 5.48967 8.1881 4.45301 8.8607 3.79247C9.5362 3.12908 10.545 2.75 11.8718 2.75C13.5394 2.75 14.7129 3.34422 15.3621 4.39436C15.5798 4.74669 16.042 4.85575 16.3944 4.63795C16.7467 4.42015 16.8557 3.95797 16.6379 3.60564C15.6448 1.99898 13.9089 1.25 11.8718 1.25C10.2634 1.25 8.83628 1.71407 7.80968 2.72225C6.78019 3.73328 6.25 5.19662 6.25 7V7.2892C4.36604 7.98746 3 9.87329 3 12.0992C3 15.9375 5.96837 18.1516 8.49565 20.0368C8.75832 20.2327 9.01624 20.4251 9.26556 20.6154C10.2 21.3285 11.1 22 12 22C12.9 22 13.8 21.3285 14.7344 20.6154C14.9838 20.4251 15.2417 20.2327 15.5044 20.0368C18.0316 18.1516 21 15.9375 21 12.0992C21 7.86196 16.0499 4.85701 12 8.93062C10.6105 7.53302 9.11513 6.96863 7.75 7.00134V7ZM12 11.25C12.4142 11.25 12.75 11.5858 12.75 12V14.5C12.75 14.9142 12.4142 15.25 12 15.25C11.5858 15.25 11.25 14.9142 11.25 14.5V12C11.25 11.5858 11.5858 11.25 12 11.25Z" fill="currentColor"/>''',
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
