// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `like` icon in the bold style.
class LikeBoldIcon extends StatelessWidget {
  /// Creates the `like` icon in the bold style.
  const LikeBoldIcon({
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
    name: 'like',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M2.96777 9.48511C3.369 9.46785 3.71247 9.76957 3.74707 10.1697L4.71875 21.406C4.78116 22.1278 4.21231 22.7498 3.48633 22.7498C2.80269 22.7496 2.25 22.1948 2.25 21.5125V10.2341C2.25001 9.8325 2.56651 9.50243 2.96777 9.48511Z" fill="currentColor"/>
<path d="M11.6748 2.13257C11.9834 1.98389 12.3406 1.95905 12.668 2.06421L12.8125 2.11109C13.3541 2.28508 13.7667 2.7131 13.9053 3.24683C14.0725 3.89131 14.1028 4.56437 13.9951 5.22144L13.332 9.26539C13.2489 9.77269 13.6408 10.2341 14.1543 10.2341H19.335C20.3679 10.2341 21.1518 11.1663 20.9756 12.1853L20.2695 16.2644C19.6972 19.5738 16.7264 21.9998 13.2451 21.9998H8.59668C7.73307 21.9998 7.01321 21.3386 6.93848 20.4773L6.12598 11.0837C6.07997 10.5501 6.29282 10.027 6.69824 9.67749L8.13672 8.43726C8.80421 7.86207 9.44695 7.24013 9.8623 6.46265C10.1465 5.93059 10.3672 5.36731 10.5186 4.78394L10.9941 2.94996C11.0863 2.5948 11.3351 2.29629 11.6748 2.13257Z" fill="currentColor"/>''',
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
