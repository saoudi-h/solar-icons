// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bluetooth` icon in the bold style.
class BluetoothBoldIcon extends StatelessWidget {
  /// Creates the `bluetooth` icon in the bold style.
  const BluetoothBoldIcon({
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
    name: 'bluetooth',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.7426 15.1577L12.3019 12.0043L12.3079 12.0001L12.3013 11.9954L16.7426 8.84149C17.2829 8.45788 17.7547 8.12284 18.0842 7.80771C18.435 7.47224 18.75 7.04319 18.75 6.45834C18.75 5.87349 18.435 5.44444 18.0842 5.10897C17.7547 4.79385 17.2829 4.45881 16.7426 4.0752L14.9098 2.77366C14.1803 2.25559 13.5644 1.81817 13.0535 1.55758C12.5333 1.29223 11.8982 1.09254 11.263 1.41752C10.6261 1.74342 10.4191 2.3765 10.3337 2.9534C10.2499 3.51888 10.25 4.27198 10.25 5.16266L10.25 10.5595L6.43016 7.88564C6.09082 7.6481 5.62318 7.73063 5.38564 8.06997C5.1481 8.4093 5.23063 8.87695 5.56997 9.11449L9.69222 12.0001L5.56997 14.8856C5.23063 15.1232 5.1481 15.5908 5.38564 15.9302C5.62318 16.2695 6.09082 16.352 6.43016 16.1145L10.25 13.4406L10.25 18.8365C10.25 19.7272 10.2499 20.4803 10.3337 21.0458C10.4191 21.6227 10.6261 22.2558 11.2631 22.5817C11.8982 22.9067 12.5333 22.707 13.0535 22.4416C13.5644 22.181 14.1803 21.7436 14.9098 21.2255L16.7425 19.924C17.2828 19.5404 17.7547 19.2053 18.0842 18.8902C18.435 18.5548 18.75 18.1257 18.75 17.5409C18.75 16.956 18.435 16.527 18.0842 16.1915C17.7547 15.8764 17.2829 15.5413 16.7426 15.1577Z" fill="currentColor"/>''',
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
