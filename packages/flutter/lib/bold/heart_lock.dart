// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `heart-lock` icon in the bold style.
class HeartLockBoldIcon extends StatelessWidget {
  /// Creates the `heart-lock` icon in the bold style.
  const HeartLockBoldIcon({
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
    name: 'heart-lock',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.25 7.2892V7C6.25 5.19099 6.79645 3.72534 7.85181 2.71548C8.90153 1.71101 10.3582 1.25 12 1.25C13.6418 1.25 15.0985 1.71101 16.1482 2.71548C17.2036 3.72534 17.75 5.19099 17.75 7V7.2892C19.634 7.98746 21 9.87329 21 12.0992C21 15.9375 18.0316 18.1516 15.5044 20.0368C15.2417 20.2327 14.9838 20.4251 14.7344 20.6154C13.8 21.3285 12.9 22 12 22C11.1 22 10.2 21.3285 9.26556 20.6154C9.01624 20.4251 8.75832 20.2327 8.49565 20.0368C5.96837 18.1516 3 15.9375 3 12.0992C3 9.87329 4.36604 7.98746 6.25 7.2892ZM7.75 7C7.75 5.4953 8.19732 4.46095 8.88885 3.79924C9.58601 3.13213 10.6294 2.75 12 2.75C13.3706 2.75 14.414 3.13213 15.1112 3.79924C15.8027 4.46095 16.25 5.4953 16.25 7V7.00134C14.8849 6.96863 13.3895 7.53302 12 8.93062C10.6105 7.53302 9.11513 6.96863 7.75 7.00134V7ZM12 11.25C12.4142 11.25 12.75 11.5858 12.75 12V14.5C12.75 14.9142 12.4142 15.25 12 15.25C11.5858 15.25 11.25 14.9142 11.25 14.5V12C11.25 11.5858 11.5858 11.25 12 11.25Z" fill="currentColor"/>''',
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
