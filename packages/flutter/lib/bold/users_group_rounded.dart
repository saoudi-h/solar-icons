// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `users-group-rounded` icon in the bold style.
class UsersGroupRoundedBoldIcon extends StatelessWidget {
  /// Creates the `users-group-rounded` icon in the bold style.
  const UsersGroupRoundedBoldIcon({
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
    name: 'users-group-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M9.00098 13.001C12.867 13.001 16.001 14.7918 16.001 17.001C16.001 19.2101 12.867 21.001 9.00098 21.001C5.13498 21.001 2.00098 19.2101 2.00098 17.001C2.00098 14.7918 5.13498 13.001 9.00098 13.001Z" fill="currentColor"/>
<path d="M16.4766 14.001C18.9615 14.0011 20.9996 15.3434 21 17C21 18.6569 18.9638 20 16.4785 20C17.2107 19.1997 17.7148 18.1955 17.7148 17.002C17.7148 15.8071 17.2099 14.8017 16.4766 14.001Z" fill="currentColor"/>
<path d="M9.00098 2C11.2101 2 13.001 3.79086 13.001 6C13.001 8.20914 11.2101 10 9.00098 10C6.79184 10 5.00098 8.20914 5.00098 6C5.00098 3.79086 6.79184 2 9.00098 2Z" fill="currentColor"/>
<path d="M15 3.00098C16.6567 3.00118 18 4.34425 18 6.00098C17.9999 7.6576 16.6566 9.00078 15 9.00098C14.6388 9.00098 14.2924 8.93633 13.9717 8.81934C14.4445 7.98748 14.7148 7.02523 14.7148 6C14.7148 4.97534 14.4449 4.0132 13.9727 3.18164C14.2931 3.06489 14.6392 3.00098 15 3.00098Z" fill="currentColor"/>''',
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
