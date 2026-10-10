// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `notification-remove` icon in the bold style.
class NotificationRemoveBoldIcon extends StatelessWidget {
  /// Creates the `notification-remove` icon in the bold style.
  const NotificationRemoveBoldIcon({
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
    name: 'notification-remove',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5 11C15.3787 11 14.318 11 13.659 10.341C13 9.68198 13 8.62132 13 6.5C13 4.37868 13 3.31802 13.659 2.65901C14.318 2 15.3787 2 17.5 2C19.6213 2 20.682 2 21.341 2.65901C22 3.31802 22 4.37868 22 6.5C22 8.62132 22 9.68198 21.341 10.341C20.682 11 19.6213 11 17.5 11ZM14.9697 3.96967C15.2626 3.67678 15.7374 3.67678 16.0303 3.96967L17.5 5.43934L18.9697 3.96967C19.2626 3.67678 19.7374 3.67678 20.0303 3.96967C20.3232 4.26256 20.3232 4.73744 20.0303 5.03033L18.5607 6.5L20.0303 7.96967C20.3232 8.26256 20.3232 8.73744 20.0303 9.03033C19.7374 9.32322 19.2626 9.32322 18.9697 9.03033L17.5 7.56066L16.0303 9.03033C15.7374 9.32322 15.2626 9.32322 14.9697 9.03033C14.6768 8.73744 14.6768 8.26256 14.9697 7.96967L16.4393 6.5L14.9697 5.03033C14.6768 4.73744 14.6768 4.26256 14.9697 3.96967Z" fill="currentColor"/>
<path d="M12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2L12.2578 2.00001C11.8534 2.5665 11.6799 3.2054 11.5958 3.83127C11.4998 4.54482 11.4999 5.4264 11.5 6.40759V6.59241C11.4999 7.5736 11.4998 8.45518 11.5958 9.16873C11.7005 9.94777 11.9437 10.747 12.5983 11.4017C13.253 12.0563 14.0522 12.2995 14.8313 12.4042C15.5448 12.5002 16.4264 12.5001 17.4076 12.5H17.5924C18.5736 12.5001 19.4552 12.5002 20.1687 12.4042C20.7946 12.3201 21.4335 12.1466 22 11.7422L22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22Z" fill="currentColor"/>''',
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
