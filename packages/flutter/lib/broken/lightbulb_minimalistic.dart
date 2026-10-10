// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `lightbulb-minimalistic` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwIDE5LjVIMTRNMTAuNjY2NyAyMkgxMy4zMzMzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDIuNjAyMjJDMTQuMDkwNyAyLjIxNjQ2IDEzLjA3MzYgMiAxMiAyQzguMTM0MDEgMiA1IDQuODA2OSA1IDguMjE4MDdMNS4wMDAwNyA4LjMwMTkzQzUuMDA4NzUgMTAuMjk4NCA1Ljg2OTM5IDEyLjIxODcgNy40MTA1OCAxMy42ODA1TDguNTE0NjMgMTQuNzE5NkM4LjgyNDM3IDE1LjAxMTIgOSAxNS40MTc3IDkgMTUuODQzQzkgMTYuNDgyIDkuNTE4IDE3IDEwLjE1NyAxN0gxMy44NDNDMTQuNDgyIDE3IDE1IDE2LjQ4MiAxNSAxNS44NDNDMTUgMTUuNDE3NyAxNS4xNzU2IDE1LjAxMTIgMTUuNDg1NCAxNC43MTk2TDE2LjU4OTQgMTMuNjgwNUMxOC4xMzA2IDEyLjIxODcgMTguOTkxMiAxMC4yOTg0IDE4Ljk5OTkgOC4zMDE5M0wxOSA4LjIxODA3QzE5IDcuNDM4MzggMTguODM2MyA2LjY5MDI1IDE4LjUzNzUgNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class LightbulbMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `lightbulb-minimalistic` icon in the broken style.
  const LightbulbMinimalisticBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 19.5H14M10.6667 22H13.3333" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 2.60222C14.0907 2.21646 13.0736 2 12 2C8.13401 2 5 4.8069 5 8.21807L5.00007 8.30193C5.00875 10.2984 5.86939 12.2187 7.41058 13.6805L8.51463 14.7196C8.82437 15.0112 9 15.4177 9 15.843C9 16.482 9.518 17 10.157 17H13.843C14.482 17 15 16.482 15 15.843C15 15.4177 15.1756 15.0112 15.4854 14.7196L16.5894 13.6805C18.1306 12.2187 18.9912 10.2984 18.9999 8.30193L19 8.21807C19 7.43838 18.8363 6.69025 18.5375 6" stroke="currentColor" stroke-linecap="round"/>''',
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
