// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chat-round-close` icon in the outline style.
class ChatRoundCloseOutlineIcon extends StatelessWidget {
  /// Creates the `chat-round-close` icon in the outline style.
  const ChatRoundCloseOutlineIcon({
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
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M13.9697 8.96973C14.2626 8.67685 14.7374 8.67684 15.0303 8.96973C15.3231 9.26262 15.3231 9.7374 15.0303 10.0303L13.0605 12L15.0303 13.9697C15.3231 14.2626 15.3231 14.7374 15.0303 15.0303C14.7374 15.3231 14.2626 15.3231 13.9697 15.0303L12 13.0605L10.0303 15.0303C9.7374 15.3231 9.26262 15.3231 8.96973 15.0303C8.67683 14.7374 8.67684 14.2626 8.96973 13.9697L10.9395 12L8.96973 10.0303C8.67683 9.73738 8.67684 9.26262 8.96973 8.96973C9.26262 8.67684 9.73738 8.67684 10.0303 8.96973L12 10.9395L13.9697 8.96973Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C10.2817 22.75 8.65527 22.3463 7.21289 21.6279C6.99771 21.5208 6.77762 21.4984 6.59277 21.5479L4.36719 22.1426C2.84335 22.5503 1.4497 21.1566 1.85742 19.6328L2.45215 17.4072C2.50161 17.2224 2.4792 17.0023 2.37207 16.7871C1.65365 15.3447 1.25 13.7183 1.25 12C1.25 6.06294 6.06294 1.25 12 1.25ZM12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 13.4811 3.09757 14.8789 3.71484 16.1182C3.96256 16.6156 4.05767 17.2108 3.90137 17.7949L3.30566 20.0205C3.19636 20.4293 3.57073 20.8036 3.97949 20.6943L6.20508 20.0986C6.78925 19.9423 7.38445 20.0374 7.88184 20.2852C9.12113 20.9024 10.5189 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75Z" fill="currentColor"/>''',
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
