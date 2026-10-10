// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `logout` icon in the bold style.
class LogoutBoldIcon extends StatelessWidget {
  /// Creates the `logout` icon in the bold style.
  const LogoutBoldIcon({
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
    name: 'logout',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 7.75C12 8.69281 11.9999 9.16414 11.707 9.45703C11.4141 9.74992 10.9428 9.75 10 9.75C8.75736 9.75 7.75 10.7574 7.75 12C7.75 13.2426 8.75736 14.25 10 14.25C10.9428 14.25 11.4141 14.2501 11.707 14.543C11.9999 14.8359 12 15.3072 12 16.25V20C7.58172 20 4 16.4183 4 12C4 7.58172 7.58172 4 12 4V7.75Z" fill="currentColor"/>
<path d="M16.4697 8.46973C16.7626 8.17683 17.2374 8.17683 17.5303 8.46973L20.5303 11.4697C20.8232 11.7626 20.8232 12.2374 20.5303 12.5303L17.5303 15.5303C17.2374 15.8232 16.7626 15.8232 16.4697 15.5303C16.1768 15.2374 16.1768 14.7626 16.4697 14.4697L18.1895 12.75H10C9.58579 12.75 9.25 12.4142 9.25 12C9.25 11.5858 9.58579 11.25 10 11.25H18.1895L16.4697 9.53027C16.1768 9.23738 16.1768 8.76262 16.4697 8.46973Z" fill="currentColor"/>''',
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
