// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-replay` icon in the boldDuotone style.
class ChatRoundReplayBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chat-round-replay` icon in the boldDuotone style.
  const ChatRoundReplayBoldDuotoneIcon({
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
    name: 'chat-round-replay',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15.7549 15.0019C15.7549 14.0453 15.3728 13.5193 14.9404 13.2079C14.4699 12.8691 13.8824 12.749 13.502 12.7489H9.30664L11.0293 14.4716C11.3219 14.7645 11.3221 15.2393 11.0293 15.5321C10.7365 15.8249 10.2616 15.8248 9.96875 15.5321L6.96582 12.5292C6.82521 12.3886 6.74614 12.1978 6.74609 11.9989C6.74609 11.8001 6.82522 11.6093 6.96582 11.4687L9.96875 8.46572C10.2616 8.17291 10.7364 8.17286 11.0293 8.46572C11.3221 8.7586 11.3221 9.2334 11.0293 9.52627L9.30664 11.2489H13.502C14.1224 11.249 15.0361 11.4293 15.8164 11.9911C16.6351 12.5806 17.2549 13.5564 17.2549 15.0019C17.2547 15.4158 16.9188 15.7516 16.5049 15.7519C16.0908 15.7519 15.7551 15.4159 15.7549 15.0019Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 13.5997 2.37562 15.1116 3.04346 16.4525C3.22094 16.8088 3.28001 17.2161 3.17712 17.6006L2.58151 19.8267C2.32295 20.793 3.20701 21.677 4.17335 21.4185L6.39939 20.8229C6.78393 20.72 7.19121 20.7791 7.54753 20.9565C8.88837 21.6244 10.4003 22 12 22Z" fill="currentColor"/>''',
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
