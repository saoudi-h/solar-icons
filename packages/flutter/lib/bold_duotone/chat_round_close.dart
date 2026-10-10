// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-close` icon in the boldDuotone style.
class ChatRoundCloseBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chat-round-close` icon in the boldDuotone style.
  const ChatRoundCloseBoldDuotoneIcon({
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
    name: 'chat-round-close',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.9697 8.96966C14.2626 8.67679 14.7373 8.67678 15.0302 8.96966C15.3231 9.26255 15.3231 9.73732 15.0302 10.0302L13.0605 11.9999L15.0302 13.9697C15.3231 14.2626 15.3231 14.7373 15.0302 15.0302C14.7373 15.3231 14.2626 15.3231 13.9697 15.0302L11.9999 13.0605L10.0302 15.0302C9.73732 15.3231 9.26256 15.3231 8.96967 15.0302C8.67678 14.7373 8.67678 14.2626 8.96967 13.9697L10.9394 11.9999L8.96967 10.0302C8.67678 9.73732 8.67678 9.26256 8.96967 8.96966C9.26256 8.67678 9.73733 8.67677 10.0302 8.96966L11.9999 10.9394L13.9697 8.96966Z" fill="currentColor"/>''',
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
