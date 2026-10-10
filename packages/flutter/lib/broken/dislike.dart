// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `dislike` icon in the broken style.
class DislikeBrokenIcon extends StatelessWidget {
  /// Creates the `dislike` icon in the broken style.
  const DislikeBrokenIcon({
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
    name: 'dislike',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3 2.48733V13.7659" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 13.7658L3.9716 2.52928C3.99621 2.24466 3.77207 2 3.48671 2C3.21791 2 3 2.21815 3 2.48726" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9951 18.7785C14.1027 19.4356 14.072 20.108 13.9048 20.7524" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.59634 2C7.73256 2 7.01226 2.66139 6.93776 3.52293L6.1256 12.9156C6.07944 13.4494 6.29247 13.973 6.69813 14.3225L8.13687 15.5623C8.8044 16.1375 9.44659 16.7598 9.86194 17.5374C10.1462 18.0695 10.3667 18.6328 10.518 19.2163L10.9938 21.0501C11.0859 21.4053 11.3344 21.7039 11.6742 21.8676C11.9829 22.0163 12.3402 22.0408 12.6676 21.9356L12.8126 21.8891C13.3543 21.715 13.7662 21.2864 13.9047 20.7525" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9949 18.7787L13.3322 14.7341C13.2491 14.2268 13.6401 13.7659 14.1536 13.7659H19.3347" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.3349 13.7658C20.3678 13.7658 21.1515 12.8338 20.9752 11.8148L20.2697 7.73505C19.6974 4.42561 16.7263 2 13.2451 2H8.59644" stroke="currentColor" stroke-linecap="round"/>''',
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
