// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `login` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDMuMjVDMTEuNTg1OCAzLjI1IDExLjI1IDMuNTg1NzkgMTEuMjUgNEMxMS4yNSA0LjQxNDIxIDExLjU4NTggNC43NSAxMiA0Ljc1QzE2LjAwNDEgNC43NSAxOS4yNSA3Ljk5NTk0IDE5LjI1IDEyQzE5LjI1IDE2LjAwNDEgMTYuMDA0MSAxOS4yNSAxMiAxOS4yNUMxMS41ODU4IDE5LjI1IDExLjI1IDE5LjU4NTggMTEuMjUgMjBDMTEuMjUgMjAuNDE0MiAxMS41ODU4IDIwLjc1IDEyIDIwLjc1QzE2LjgzMjUgMjAuNzUgMjAuNzUgMTYuODMyNSAyMC43NSAxMkMyMC43NSA3LjE2NzUxIDE2LjgzMjUgMy4yNSAxMiAzLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTAuNDY5NyA5LjUzMDMzQzEwLjE3NjggOS4yMzc0NCAxMC4xNzY4IDguNzYyNTYgMTAuNDY5NyA4LjQ2OTY3QzEwLjc2MjYgOC4xNzY3OCAxMS4yMzc0IDguMTc2NzggMTEuNTMwMyA4LjQ2OTY3TDE0LjUzMDMgMTEuNDY5N0MxNC44MjMyIDExLjc2MjYgMTQuODIzMiAxMi4yMzc0IDE0LjUzMDMgMTIuNTMwM0wxMS41MzAzIDE1LjUzMDNDMTEuMjM3NCAxNS44MjMyIDEwLjc2MjYgMTUuODIzMiAxMC40Njk3IDE1LjUzMDNDMTAuMTc2OCAxNS4yMzc0IDEwLjE3NjggMTQuNzYyNiAxMC40Njk3IDE0LjQ2OTdMMTIuMTg5MyAxMi43NUg0QzMuNTg1NzkgMTIuNzUgMy4yNSAxMi40MTQyIDMuMjUgMTJDMy4yNSAxMS41ODU4IDMuNTg1NzkgMTEuMjUgNCAxMS4yNUgxMi4xODkzTDEwLjQ2OTcgOS41MzAzM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class LoginOutlineIcon extends StatelessWidget {
  /// Creates the `login` icon in the outline style.
  const LoginOutlineIcon({
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
    name: 'login',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12 3.25C11.5858 3.25 11.25 3.58579 11.25 4C11.25 4.41421 11.5858 4.75 12 4.75C16.0041 4.75 19.25 7.99594 19.25 12C19.25 16.0041 16.0041 19.25 12 19.25C11.5858 19.25 11.25 19.5858 11.25 20C11.25 20.4142 11.5858 20.75 12 20.75C16.8325 20.75 20.75 16.8325 20.75 12C20.75 7.16751 16.8325 3.25 12 3.25Z" fill="currentColor"/>
<path d="M10.4697 9.53033C10.1768 9.23744 10.1768 8.76256 10.4697 8.46967C10.7626 8.17678 11.2374 8.17678 11.5303 8.46967L14.5303 11.4697C14.8232 11.7626 14.8232 12.2374 14.5303 12.5303L11.5303 15.5303C11.2374 15.8232 10.7626 15.8232 10.4697 15.5303C10.1768 15.2374 10.1768 14.7626 10.4697 14.4697L12.1893 12.75H4C3.58579 12.75 3.25 12.4142 3.25 12C3.25 11.5858 3.58579 11.25 4 11.25H12.1893L10.4697 9.53033Z" fill="currentColor"/>''',
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
