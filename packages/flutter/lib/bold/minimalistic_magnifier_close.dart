// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `minimalistic-magnifier-close` icon in the bold style.
class MinimalisticMagnifierCloseBoldIcon extends StatelessWidget {
  /// Creates the `minimalistic-magnifier-close` icon in the bold style.
  const MinimalisticMagnifierCloseBoldIcon({
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
    name: 'minimalistic-magnifier-close',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M19.4697 19.4697C19.7626 19.1768 20.2374 19.1768 20.5303 19.4697L22.5303 21.4697C22.8231 21.7626 22.8231 22.2374 22.5303 22.5303C22.2374 22.8231 21.7626 22.8231 21.4697 22.5303L19.4697 20.5303C19.1768 20.2374 19.1768 19.7626 19.4697 19.4697Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 2C16.7467 2 21 6.25329 21 11.5C21 16.7467 16.7467 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 6.25329 6.25329 2 11.5 2ZM13.7979 9.20117C13.5049 8.90847 13.0301 8.90834 12.7373 9.20117L11.5 10.4385L10.2627 9.20117C9.96987 8.90834 9.49506 8.90847 9.20215 9.20117C8.90926 9.49407 8.90926 9.96883 9.20215 10.2617L10.4395 11.499L9.20215 12.7373C8.90937 13.0302 8.90929 13.505 9.20215 13.7979C9.49503 14.0904 9.96989 14.0905 10.2627 13.7979L11.5 12.5605L12.7373 13.7979C13.0301 14.0905 13.505 14.0904 13.7979 13.7979C14.0907 13.505 14.0906 13.0302 13.7979 12.7373L12.5605 11.499L13.7979 10.2617C14.0907 9.96883 14.0907 9.49407 13.7979 9.20117Z" fill="currentColor"/>''',
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
