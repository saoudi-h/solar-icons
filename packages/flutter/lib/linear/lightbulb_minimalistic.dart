// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `lightbulb-minimalistic` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwIDE5LjVIMTRNMTAuNjY2NyAyMkgxMy4zMzMzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcuNDEwNTggMTMuNjgwNUw4LjUxNDYzIDE0LjcxOTZDOC44MjQzNyAxNS4wMTEyIDkgMTUuNDE3NyA5IDE1Ljg0M0M5IDE2LjQ4MiA5LjUxOCAxNyAxMC4xNTcgMTdIMTMuODQzQzE0LjQ4MiAxNyAxNSAxNi40ODIgMTUgMTUuODQzQzE1IDE1LjQxNzcgMTUuMTc1NiAxNS4wMTEyIDE1LjQ4NTQgMTQuNzE5NkwxNi41ODk0IDEzLjY4MDVDMTguMTMwNiAxMi4yMTg3IDE4Ljk5MTIgMTAuMjk4NCAxOC45OTk5IDguMzAxOTNMMTkgOC4yMTgwN0MxOSA0LjgwNjkgMTUuODY2IDIgMTIgMkM4LjEzNDAxIDIgNSA0LjgwNjkgNSA4LjIxODA3TDUuMDAwMDcgOC4zMDE5M0M1LjAwODc1IDEwLjI5ODQgNS44NjkzOSAxMi4yMTg3IDcuNDEwNTggMTMuNjgwNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class LightbulbMinimalisticLinearIcon extends StatelessWidget {
  /// Creates the `lightbulb-minimalistic` icon in the linear style.
  const LightbulbMinimalisticLinearIcon({
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
    name: 'lightbulb-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M10 19.5H14M10.6667 22H13.3333" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.41058 13.6805L8.51463 14.7196C8.82437 15.0112 9 15.4177 9 15.843C9 16.482 9.518 17 10.157 17H13.843C14.482 17 15 16.482 15 15.843C15 15.4177 15.1756 15.0112 15.4854 14.7196L16.5894 13.6805C18.1306 12.2187 18.9912 10.2984 18.9999 8.30193L19 8.21807C19 4.8069 15.866 2 12 2C8.13401 2 5 4.8069 5 8.21807L5.00007 8.30193C5.00875 10.2984 5.86939 12.2187 7.41058 13.6805Z" stroke="currentColor" stroke-linecap="round"/>''',
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
