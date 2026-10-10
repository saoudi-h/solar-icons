// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `palette-2` icon in the linear style.
class Palette2LinearIcon extends StatelessWidget {
  /// Creates the `palette-2` icon in the linear style.
  const Palette2LinearIcon({
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
    name: 'palette-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12.0261C2 17.1723 5.86713 21.413 10.8468 21.9863C11.5816 22.0709 12.2938 21.7576 12.8168 21.2333C13.4703 20.5781 13.4703 19.5159 12.8168 18.8607C12.2938 18.3364 11.8674 17.5541 12.2619 16.9268C13.8385 14.4192 22 20.178 22 12.0261C22 6.48884 17.5228 2 12 2C6.47715 2 2 6.48884 2 12.0261Z" stroke="currentColor" stroke-linecap="round"/>
<circle cx="17.5" cy="11.5" r="0.75" stroke="currentColor" stroke-linecap="round"/>
<circle cx="6.5" cy="11.5" r="0.75" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.58496 6.24976C9.99917 6.24976 10.335 6.58554 10.335 6.99976C10.335 7.41397 9.99917 7.74976 9.58496 7.74976C9.17075 7.74976 8.83496 7.41397 8.83496 6.99976C8.83496 6.58554 9.17075 6.24976 9.58496 6.24976Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 6.25C14.9142 6.25 15.25 6.58579 15.25 7C15.25 7.41421 14.9142 7.75 14.5 7.75C14.0858 7.75 13.75 7.41421 13.75 7C13.75 6.58579 14.0858 6.25 14.5 6.25Z" stroke="currentColor" stroke-linecap="round"/>''',
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
