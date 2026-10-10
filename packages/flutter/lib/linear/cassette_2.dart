// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cassette-2` icon in the linear style.
class Cassette2LinearIcon extends StatelessWidget {
  /// Creates the `cassette-2` icon in the linear style.
  const Cassette2LinearIcon({
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
    name: 'cassette-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H14C17.7712 4 19.6569 4 20.8284 5.17157C22 6.34315 22 8.22876 22 12C22 15.7712 22 17.6569 20.8284 18.8284C19.6569 20 17.7712 20 14 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2 17.6569 2 15.7712 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 13.75C13.5 12.5074 14.5074 11.5 15.75 11.5C16.9926 11.5 18 12.5074 18 13.75C18 14.9926 16.9926 16 15.75 16C14.5074 16 13.5 14.9926 13.5 13.75Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 13.75C6 12.5074 7.00736 11.5 8.25 11.5C9.49264 11.5 10.5 12.5074 10.5 13.75C10.5 14.9926 9.49264 16 8.25 16C7.00736 16 6 14.9926 6 13.75Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 11.5H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 16H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.5 4.5L16.9733 5.90449C16.5025 7.15997 16.2671 7.7877 15.7532 8.14385C15.2393 8.5 14.5688 8.5 13.228 8.5H10.772C9.43116 8.5 8.76073 8.5 8.24681 8.14385C7.73289 7.7877 7.49749 7.15997 7.02669 5.90449L6.5 4.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
