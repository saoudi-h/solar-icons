// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `menu-dots` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTcgMTJDNyAxMy4xMDQ2IDYuMTA0NTcgMTQgNSAxNEMzLjg5NTQzIDE0IDMgMTMuMTA0NiAzIDEyQzMgMTAuODk1NCAzLjg5NTQzIDEwIDUgMTBDNi4xMDQ1NyAxMCA3IDEwLjg5NTQgNyAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE0IDEyQzE0IDEzLjEwNDYgMTMuMTA0NiAxNCAxMiAxNEMxMC44OTU0IDE0IDEwIDEzLjEwNDYgMTAgMTJDMTAgMTAuODk1NCAxMC44OTU0IDEwIDEyIDEwQzEzLjEwNDYgMTAgMTQgMTAuODk1NCAxNCAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIxIDEyQzIxIDEzLjEwNDYgMjAuMTA0NiAxNCAxOSAxNEMxNy44OTU0IDE0IDE3IDEzLjEwNDYgMTcgMTJDMTcgMTAuODk1NCAxNy44OTU0IDEwIDE5IDEwQzIwLjEwNDYgMTAgMjEgMTAuODk1NCAyMSAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MenuDotsBoldIcon extends StatelessWidget {
  /// Creates the `menu-dots` icon in the bold style.
  const MenuDotsBoldIcon({
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
    name: 'menu-dots',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M7 12C7 13.1046 6.10457 14 5 14C3.89543 14 3 13.1046 3 12C3 10.8954 3.89543 10 5 10C6.10457 10 7 10.8954 7 12Z" fill="currentColor"/>
<path d="M14 12C14 13.1046 13.1046 14 12 14C10.8954 14 10 13.1046 10 12C10 10.8954 10.8954 10 12 10C13.1046 10 14 10.8954 14 12Z" fill="currentColor"/>
<path d="M21 12C21 13.1046 20.1046 14 19 14C17.8954 14 17 13.1046 17 12C17 10.8954 17.8954 10 19 10C20.1046 10 21 10.8954 21 12Z" fill="currentColor"/>''',
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
