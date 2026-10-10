// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `separator-vertical` icon in the bold style.
class SeparatorVerticalBoldIcon extends StatelessWidget {
  /// Creates the `separator-vertical` icon in the bold style.
  const SeparatorVerticalBoldIcon({
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
    name: 'separator-vertical',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.9999 1.25C12.4141 1.25003 12.7499 1.58581 12.7499 2V22C12.7499 22.4142 12.4141 22.75 11.9999 22.75C11.5857 22.75 11.2499 22.4142 11.2499 22V2C11.2499 1.58579 11.5857 1.25 11.9999 1.25Z" fill="currentColor"/>
<path d="M8.46967 5.46973C8.76257 5.17686 9.23733 5.17684 9.53022 5.46973C9.82307 5.76261 9.82307 6.23739 9.53022 6.53027L4.06049 12L9.53022 17.4697C9.82307 17.7626 9.82307 18.2374 9.53022 18.5303C9.23733 18.8232 8.76257 18.8231 8.46967 18.5303L2.46967 12.5303C2.17678 12.2374 2.17678 11.7626 2.46967 11.4697L8.46967 5.46973Z" fill="currentColor"/>
<path d="M14.4697 5.46973C14.7626 5.17686 15.2373 5.17684 15.5302 5.46973L21.5302 11.4697C21.8231 11.7626 21.8231 12.2374 21.5302 12.5303L15.5302 18.5303C15.2373 18.8232 14.7626 18.8231 14.4697 18.5303C14.1768 18.2374 14.1768 17.7626 14.4697 17.4697L19.9394 12L14.4697 6.53027C14.1768 6.23738 14.1768 5.76262 14.4697 5.46973Z" fill="currentColor"/>''',
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
