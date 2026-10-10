// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTAuNDY5NyA4LjQ2OTY3QzEwLjE3NjggOC43NjI1NiAxMC4xNzY4IDkuMjM3NDQgMTAuNDY5NyA5LjUzMDMzTDEyLjE4OTMgMTEuMjVINEMzLjU4NTc5IDExLjI1IDMuMjUgMTEuNTg1OCAzLjI1IDEyQzMuMjUgMTIuNDE0MiAzLjU4NTc5IDEyLjc1IDQgMTIuNzVIMTIuMTg5M0wxMC40Njk3IDE0LjQ2OTdDMTAuMTc2OCAxNC43NjI2IDEwLjE3NjggMTUuMjM3NCAxMC40Njk3IDE1LjUzMDNDMTAuNzYyNiAxNS44MjMyIDExLjIzNzQgMTUuODIzMiAxMS41MzAzIDE1LjUzMDNMMTQuNTMwMyAxMi41MzAzQzE0LjgyMzIgMTIuMjM3NCAxNC44MjMyIDExLjc2MjYgMTQuNTMwMyAxMS40Njk3TDExLjUzMDMgOC40Njk2N0MxMS4yMzc0IDguMTc2NzggMTAuNzYyNiA4LjE3Njc4IDEwLjQ2OTcgOC40Njk2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjBDMTYuNDE4MyAyMCAyMCAxNi40MTgzIDIwIDEyQzIwIDcuNTgxNzIgMTYuNDE4MyA0IDEyIDRWMjBaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
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
