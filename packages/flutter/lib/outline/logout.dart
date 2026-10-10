// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `logout` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDMuMjVDMTIuNDE0MiAzLjI1IDEyLjc1IDMuNTg1NzkgMTIuNzUgNEMxMi43NSA0LjQxNDIxIDEyLjQxNDIgNC43NSAxMiA0Ljc1QzcuOTk1OTQgNC43NSA0Ljc1IDcuOTk1OTQgNC43NSAxMkM0Ljc1IDE2LjAwNDEgNy45OTU5NCAxOS4yNSAxMiAxOS4yNUMxMi40MTQyIDE5LjI1IDEyLjc1IDE5LjU4NTggMTIuNzUgMjBDMTIuNzUgMjAuNDE0MiAxMi40MTQyIDIwLjc1IDEyIDIwLjc1QzcuMTY3NTEgMjAuNzUgMy4yNSAxNi44MzI1IDMuMjUgMTJDMy4yNSA3LjE2NzUxIDcuMTY3NTEgMy4yNSAxMiAzLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTYuNDY5NyA5LjUzMDMzQzE2LjE3NjggOS4yMzc0NCAxNi4xNzY4IDguNzYyNTYgMTYuNDY5NyA4LjQ2OTY3QzE2Ljc2MjYgOC4xNzY3OCAxNy4yMzc0IDguMTc2NzggMTcuNTMwMyA4LjQ2OTY3TDIwLjUzMDMgMTEuNDY5N0MyMC44MjMyIDExLjc2MjYgMjAuODIzMiAxMi4yMzc0IDIwLjUzMDMgMTIuNTMwM0wxNy41MzAzIDE1LjUzMDNDMTcuMjM3NCAxNS44MjMyIDE2Ljc2MjYgMTUuODIzMiAxNi40Njk3IDE1LjUzMDNDMTYuMTc2OCAxNS4yMzc0IDE2LjE3NjggMTQuNzYyNiAxNi40Njk3IDE0LjQ2OTdMMTguMTg5MyAxMi43NUgxMEM5LjU4NTc5IDEyLjc1IDkuMjUgMTIuNDE0MiA5LjI1IDEyQzkuMjUgMTEuNTg1OCA5LjU4NTc5IDExLjI1IDEwIDExLjI1SDE4LjE4OTNMMTYuNDY5NyA5LjUzMDMzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class LogoutOutlineIcon extends StatelessWidget {
  /// Creates the `logout` icon in the outline style.
  const LogoutOutlineIcon({
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
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12 3.25C12.4142 3.25 12.75 3.58579 12.75 4C12.75 4.41421 12.4142 4.75 12 4.75C7.99594 4.75 4.75 7.99594 4.75 12C4.75 16.0041 7.99594 19.25 12 19.25C12.4142 19.25 12.75 19.5858 12.75 20C12.75 20.4142 12.4142 20.75 12 20.75C7.16751 20.75 3.25 16.8325 3.25 12C3.25 7.16751 7.16751 3.25 12 3.25Z" fill="currentColor"/>
<path d="M16.4697 9.53033C16.1768 9.23744 16.1768 8.76256 16.4697 8.46967C16.7626 8.17678 17.2374 8.17678 17.5303 8.46967L20.5303 11.4697C20.8232 11.7626 20.8232 12.2374 20.5303 12.5303L17.5303 15.5303C17.2374 15.8232 16.7626 15.8232 16.4697 15.5303C16.1768 15.2374 16.1768 14.7626 16.4697 14.4697L18.1893 12.75H10C9.58579 12.75 9.25 12.4142 9.25 12C9.25 11.5858 9.58579 11.25 10 11.25H18.1893L16.4697 9.53033Z" fill="currentColor"/>''',
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
