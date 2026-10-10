// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-off` icon in the lineDuotone style.
class ChatRoundOffLineDuotoneIcon extends StatelessWidget {
  /// Creates the `chat-round-off` icon in the lineDuotone style.
  const ChatRoundOffLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4.92915 4.92969C3.1195 6.73933 2.00021 9.23933 2.00021 12.0008C2.00021 13.6004 2.37583 15.1124 3.04367 16.4532C3.22115 16.8095 3.28022 17.2168 3.17733 17.6014L2.58172 19.8274C2.32317 20.7937 3.20723 21.6778 4.17356 21.4192L6.3996 20.8236C6.78415 20.7207 7.19142 20.7798 7.54774 20.9573C8.88858 21.6251 10.4005 22.0008 12.0002 22.0008C14.7616 22.0008 17.2616 20.8815 19.0713 19.0718" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 2C2.97631 2.97631 3.95262 3.95262 4.92893 4.92893C5.21199 5.21199 5.49505 5.49505 5.77811 5.77811C7.06458 7.06458 8.35106 8.35106 9.63753 9.63753C12.782 12.782 15.9266 15.9266 19.0711 19.0711C20.0474 20.0474 21.0237 21.0237 22 22" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6.862 3.41914C8.36362 2.51807 10.1213 2 12 2C17.5228 2 22 6.47715 22 12C22 13.8787 21.4819 15.6364 20.5809 17.138" stroke="currentColor" stroke-linecap="round"/>''',
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
