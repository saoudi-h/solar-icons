// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `login` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMC40Njk3IDguNDY5NjdDMTAuMTc2OCA4Ljc2MjU2IDEwLjE3NjggOS4yMzc0NCAxMC40Njk3IDkuNTMwMzNMMTIuMTg5MyAxMS4yNUg0QzMuNTg1NzkgMTEuMjUgMy4yNSAxMS41ODU4IDMuMjUgMTJDMy4yNSAxMi40MTQyIDMuNTg1NzkgMTIuNzUgNCAxMi43NUgxMi4xODkzTDEwLjQ2OTcgMTQuNDY5N0MxMC4xNzY4IDE0Ljc2MjYgMTAuMTc2OCAxNS4yMzc0IDEwLjQ2OTcgMTUuNTMwM0MxMC43NjI2IDE1LjgyMzIgMTEuMjM3NCAxNS44MjMyIDExLjUzMDMgMTUuNTMwM0wxNC41MzAzIDEyLjUzMDNDMTQuODIzMiAxMi4yMzc0IDE0LjgyMzIgMTEuNzYyNiAxNC41MzAzIDExLjQ2OTdMMTEuNTMwMyA4LjQ2OTY3QzExLjIzNzQgOC4xNzY3OCAxMC43NjI2IDguMTc2NzggMTAuNDY5NyA4LjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMiAyMEMxNi40MTgzIDIwIDIwIDE2LjQxODMgMjAgMTJDMjAgNy41ODE3MiAxNi40MTgzIDQgMTIgNFYyMFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class LoginBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `login` icon in the boldDuotone style.
  const LoginBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.4697 8.46967C10.1768 8.76256 10.1768 9.23744 10.4697 9.53033L12.1893 11.25H4C3.58579 11.25 3.25 11.5858 3.25 12C3.25 12.4142 3.58579 12.75 4 12.75H12.1893L10.4697 14.4697C10.1768 14.7626 10.1768 15.2374 10.4697 15.5303C10.7626 15.8232 11.2374 15.8232 11.5303 15.5303L14.5303 12.5303C14.8232 12.2374 14.8232 11.7626 14.5303 11.4697L11.5303 8.46967C11.2374 8.17678 10.7626 8.17678 10.4697 8.46967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 20C16.4183 20 20 16.4183 20 12C20 7.58172 16.4183 4 12 4V20Z" fill="currentColor"/>''',
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
