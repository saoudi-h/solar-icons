// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevrons-up-down` icon in the bold style.
class ChevronsUpDownBoldIcon extends StatelessWidget {
  /// Creates the `chevrons-up-down` icon in the bold style.
  const ChevronsUpDownBoldIcon({
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
    name: 'chevrons-up-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.4697 14.4697C17.7626 14.1768 18.2373 14.1768 18.5302 14.4697C18.823 14.7626 18.8231 15.2374 18.5302 15.5302L12.5302 21.5302C12.2374 21.8231 11.7626 21.823 11.4697 21.5302L5.46967 15.5302C5.17678 15.2373 5.17678 14.7626 5.46967 14.4697C5.76256 14.1768 6.23732 14.1768 6.53022 14.4697L11.9999 19.9394L17.4697 14.4697Z" fill="currentColor"/>
<path d="M11.4697 2.46967C11.7626 2.17678 12.2373 2.17678 12.5302 2.46967L18.5302 8.46967C18.823 8.76257 18.8231 9.23736 18.5302 9.53022C18.2374 9.82307 17.7626 9.823 17.4697 9.53022L11.9999 4.06049L6.53022 9.53022C6.23736 9.82307 5.76257 9.823 5.46967 9.53022C5.17678 9.23732 5.17678 8.76256 5.46967 8.46967L11.4697 2.46967Z" fill="currentColor"/>''',
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
