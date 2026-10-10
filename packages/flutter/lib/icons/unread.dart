// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `unread` icon.
class UnreadIcon extends StatelessWidget {
  /// Creates the `unread` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const UnreadIcon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

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

  /// When true, ignores [SolarTheme] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'unread',
    style: SolarIconStyle.bold,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12ZM17.4545 6.90343C17.784 7.15446 17.8476 7.62505 17.5966 7.95453L10.7394 16.9545C10.6029 17.1337 10.393 17.2421 10.1678 17.2496C9.94266 17.2571 9.72604 17.163 9.57787 16.9932L6.43501 13.3932C6.1626 13.0812 6.19472 12.6074 6.50676 12.335C6.81879 12.0626 7.29258 12.0947 7.56499 12.4068L10.1033 15.3143L16.4034 7.04547C16.6545 6.71599 17.1251 6.65239 17.4545 6.90343Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'unread',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M17.4545 6.90347C17.784 7.1545 17.8476 7.62509 17.5966 7.95457L10.7394 16.9546C10.6029 17.1338 10.393 17.2421 10.1678 17.2496C9.94267 17.2571 9.72605 17.163 9.57788 16.9933L6.43502 13.3933C6.16261 13.0812 6.19473 12.6075 6.50677 12.3351C6.8188 12.0626 7.29259 12.0948 7.565 12.4068L10.1034 15.3144L16.4034 7.04551C16.6545 6.71603 17.1251 6.65243 17.4545 6.90347Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" d="M20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'unread',
    style: SolarIconStyle.broken,
    body: r'''<path d="M7 12.9L10.1429 16.5L12.1071 14.25M18 7.5L14.0714 12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'unread',
    style: SolarIconStyle.linear,
    body: r'''<path d="M7 12.9L10.1429 16.5L18 7.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'unread',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M10.1428 16.5L18 7.5" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<path opacity="0.5" d="M7 12.9L10.1429 16.5L18 7.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'unread',
    style: SolarIconStyle.outline,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M18.4933 6.93502C18.8053 7.20743 18.8374 7.68122 18.565 7.99325L10.7079 16.9933C10.5654 17.1564 10.3594 17.25 10.1429 17.25C9.9263 17.25 9.72031 17.1564 9.57788 16.9933L6.43502 13.3933C6.16261 13.0812 6.19473 12.6074 6.50677 12.335C6.8188 12.0626 7.29259 12.0947 7.565 12.4068L10.1429 15.3596L17.435 7.00677C17.7074 6.69473 18.1812 6.66261 18.4933 6.93502Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

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
