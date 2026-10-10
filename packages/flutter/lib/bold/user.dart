// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAxM0MxNi40MTgzIDEzIDIwIDE1LjAxNDcgMjAgMTcuNUMyMCAxOS45ODUzIDIwIDIyIDEyIDIyQzQgMjIgNCAxOS45ODUzIDQgMTcuNUM0IDE1LjAxNDcgNy41ODE3MiAxMyAxMiAxM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDJDMTQuMjA5MSAyIDE2IDMuNzkwODYgMTYgNkMxNiA4LjIwOTE0IDE0LjIwOTEgMTAgMTIgMTBDOS43OTA4NiAxMCA4IDguMjA5MTQgOCA2QzggMy43OTA4NiA5Ljc5MDg2IDIgMTIgMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class UserBoldIcon extends StatelessWidget {
  /// Creates the `user` icon in the bold style.
  const UserBoldIcon({
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
    name: 'user',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 13C16.4183 13 20 15.0147 20 17.5C20 19.9853 20 22 12 22C4 22 4 19.9853 4 17.5C4 15.0147 7.58172 13 12 13Z" fill="currentColor"/>
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
