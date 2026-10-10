// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-rounded` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDEzQzE1Ljg2NiAxMyAxOSAxNC43OTA5IDE5IDE3QzE5IDE5LjIwOTEgMTUuODY2IDIxIDEyIDIxQzguMTM0MDEgMjEgNSAxOS4yMDkxIDUgMTdDNSAxNC43OTA5IDguMTM0MDEgMTMgMTIgMTNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiAyQzE0LjIwOTEgMiAxNiAzLjc5MDg2IDE2IDZDMTYgOC4yMDkxNCAxNC4yMDkxIDEwIDEyIDEwQzkuNzkwODYgMTAgOCA4LjIwOTE0IDggNkM4IDMuNzkwODYgOS43OTA4NiAyIDEyIDJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class UserRoundedBoldIcon extends StatelessWidget {
  /// Creates the `user-rounded` icon in the bold style.
  const UserRoundedBoldIcon({
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
    name: 'user-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 13C15.866 13 19 14.7909 19 17C19 19.2091 15.866 21 12 21C8.13401 21 5 19.2091 5 17C5 14.7909 8.13401 13 12 13Z" fill="currentColor"/>
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
