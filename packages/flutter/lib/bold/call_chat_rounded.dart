// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `call-chat-rounded` icon in the bold style.
class CallChatRoundedBoldIcon extends StatelessWidget {
  /// Creates the `call-chat-rounded` icon in the bold style.
  const CallChatRoundedBoldIcon({
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
    name: 'call-chat-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3.53829 6.9375C4.93123 5.54456 7.15289 5.7317 8.03731 7.31641L8.68673 8.47949C9.27224 9.52894 9.03685 10.9057 8.11446 11.8281C8.09101 11.8521 7.01783 12.9688 9.02462 14.9756C11.0315 16.9825 12.1483 15.9091 12.1721 15.8857C13.0945 14.9634 14.4713 14.728 15.5207 15.3135L16.6838 15.9629C18.2685 16.8473 18.4556 19.069 17.0627 20.4619C16.2258 21.2988 15.2009 21.95 14.0676 21.9932C12.1595 22.0655 8.91875 21.5826 5.66817 18.332C2.4176 15.0815 1.9347 11.8408 2.00704 9.93262C2.05018 8.79932 2.70141 7.77438 3.53829 6.9375Z" fill="currentColor"/>
<path d="M17.0002 2C19.7616 2 22.0002 4.23858 22.0002 7C22.0002 9.76142 19.7616 12 17.0002 12C16.2004 12 15.4441 11.8124 14.7736 11.4785C14.5955 11.3898 14.3916 11.3597 14.1994 11.4111L13.0871 11.709C12.604 11.8383 12.1619 11.3963 12.2912 10.9131L12.5891 9.80078C12.6405 9.60857 12.6104 9.40468 12.5217 9.22656C12.1878 8.55614 12.0002 7.79984 12.0002 7C12.0002 4.23858 14.2388 2 17.0002 2Z" fill="currentColor"/>''',
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
