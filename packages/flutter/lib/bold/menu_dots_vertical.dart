// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiA3QzEwLjg5NTQgNyAxMCA2LjEwNDU3IDEwIDVDMTAgMy44OTU0MyAxMC44OTU0IDMgMTIgM0MxMy4xMDQ2IDMgMTQgMy44OTU0MyAxNCA1QzE0IDYuMTA0NTcgMTMuMTA0NiA3IDEyIDdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiAxNEMxMC44OTU0IDE0IDEwIDEzLjEwNDYgMTAgMTJDMTAgMTAuODk1NCAxMC44OTU0IDEwIDEyIDEwQzEzLjEwNDYgMTAgMTQgMTAuODk1NCAxNCAxMkMxNCAxMy4xMDQ2IDEzLjEwNDYgMTQgMTIgMTRaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiAyMUMxMC44OTU0IDIxIDEwIDIwLjEwNDYgMTAgMTlDMTAgMTcuODk1NCAxMC44OTU0IDE3IDEyIDE3QzEzLjEwNDYgMTcgMTQgMTcuODk1NCAxNCAxOUMxNCAyMC4xMDQ2IDEzLjEwNDYgMjEgMTIgMjFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MenuDotsVerticalBoldIcon extends StatelessWidget {
  /// Creates the `menu-dots-vertical` icon in the bold style.
  const MenuDotsVerticalBoldIcon({
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
    name: 'menu-dots-vertical',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 7C10.8954 7 10 6.10457 10 5C10 3.89543 10.8954 3 12 3C13.1046 3 14 3.89543 14 5C14 6.10457 13.1046 7 12 7Z" fill="currentColor"/>
<path d="M12 14C10.8954 14 10 13.1046 10 12C10 10.8954 10.8954 10 12 10C13.1046 10 14 10.8954 14 12C14 13.1046 13.1046 14 12 14Z" fill="currentColor"/>
<path d="M12 21C10.8954 21 10 20.1046 10 19C10 17.8954 10.8954 17 12 17C13.1046 17 14 17.8954 14 19C14 20.1046 13.1046 21 12 21Z" fill="currentColor"/>''',
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
