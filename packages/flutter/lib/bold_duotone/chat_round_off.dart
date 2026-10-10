// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-off` icon in the boldDuotone style.
class ChatRoundOffBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chat-round-off` icon in the boldDuotone style.
  const ChatRoundOffBoldDuotoneIcon({
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
    name: 'chat-round-off',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M1.46967 1.46967C1.76256 1.17678 2.23732 1.17678 2.53022 1.46967L22.5302 21.4697C22.823 21.7626 22.8231 22.2374 22.5302 22.5302C22.2374 22.8231 21.7626 22.823 21.4697 22.5302L18.5195 19.58C16.7686 21.0874 14.4915 22.0009 11.9999 22.0009C10.4004 22.0009 8.88855 21.6247 7.54779 20.957C7.19156 20.7795 6.78382 20.7204 6.39936 20.8232L4.17377 21.4189C3.20744 21.6774 2.32245 20.7934 2.581 19.8271L3.1767 17.6015C3.27957 17.217 3.22128 16.8093 3.04389 16.4531C2.37608 15.1123 1.99999 13.6005 1.99994 12.0009C1.99994 9.50925 2.91241 7.23134 4.41986 5.48041L1.46967 2.53022C1.17678 2.23732 1.17678 1.76256 1.46967 1.46967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2C10.1213 2 8.36362 2.51807 6.862 3.41914L20.5809 17.138C21.4819 15.6364 22 13.8787 22 12C22 6.47715 17.5228 2 12 2Z" fill="currentColor"/>''',
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
