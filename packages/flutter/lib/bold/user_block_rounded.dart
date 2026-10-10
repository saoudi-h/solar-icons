// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-block-rounded` icon in the bold style.
class UserBlockRoundedBoldIcon extends StatelessWidget {
  /// Creates the `user-block-rounded` icon in the bold style.
  const UserBlockRoundedBoldIcon({
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
    name: 'user-block-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M18 14.25C20.0711 14.25 21.75 15.9289 21.75 18C21.75 20.0711 20.0711 21.75 18 21.75C15.9289 21.75 14.25 20.0711 14.25 18C14.25 15.9289 15.9289 14.25 18 14.25ZM17.0303 20.0303C17.324 20.1708 17.6527 20.25 18 20.25C19.2426 20.25 20.25 19.2426 20.25 18C20.25 17.6527 20.1708 17.324 20.0303 17.0303L17.0303 20.0303ZM18 15.75C16.7574 15.75 15.75 16.7574 15.75 18C15.75 18.3473 15.8292 18.676 15.9697 18.9697L18.9697 15.9697C18.676 15.8292 18.3473 15.75 18 15.75Z" fill="currentColor"/>
<path d="M12 13.001C13.2039 13.001 14.3368 13.1746 15.3262 13.4805C13.7838 14.3949 12.75 16.0769 12.75 18C12.75 19.0692 13.0693 20.064 13.6182 20.8936C13.0988 20.9638 12.557 21.001 12 21.001C8.13401 21.001 5 19.2101 5 17.001C5 14.7918 8.13401 13.001 12 13.001Z" fill="currentColor"/>
<path d="M12 2C14.2091 2 16 3.79086 16 6C16 8.20914 14.2091 10 12 10C9.79086 10 8 8.20914 8 6C8 3.79086 9.79086 2 12 2Z" fill="currentColor"/>''',
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
