// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDIwQzcuNTgxNzIgMjAgNCAxNi40MTgzIDQgMTJDNCA3LjU4MTcyIDcuNTgxNzIgNCAxMiA0VjIwWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTE2LjQ2OTcgOC40Njk2N0MxNi4xNzY4IDguNzYyNTYgMTYuMTc2OCA5LjIzNzQ0IDE2LjQ2OTcgOS41MzAzM0wxOC4xODkzIDExLjI1SDEwQzkuNTg1NzkgMTEuMjUgOS4yNSAxMS41ODU4IDkuMjUgMTJDOS4yNSAxMi40MTQyIDkuNTg1NzkgMTIuNzUgMTAgMTIuNzVIMTguMTg5M0wxNi40Njk3IDE0LjQ2OTdDMTYuMTc2OCAxNC43NjI2IDE2LjE3NjggMTUuMjM3NCAxNi40Njk3IDE1LjUzMDNDMTYuNzYyNiAxNS44MjMyIDE3LjIzNzQgMTUuODIzMiAxNy41MzAzIDE1LjUzMDNMMjAuNTMwMyAxMi41MzAzQzIwLjgyMzIgMTIuMjM3NCAyMC44MjMyIDExLjc2MjYgMjAuNTMwMyAxMS40Njk3TDE3LjUzMDMgOC40Njk2N0MxNy4yMzc0IDguMTc2NzggMTYuNzYyNiA4LjE3Njc4IDE2LjQ2OTcgOC40Njk2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class LogoutBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `logout` icon in the boldDuotone style.
  const LogoutBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.4697 8.46967C16.1768 8.76256 16.1768 9.23744 16.4697 9.53033L18.1893 11.25H10C9.58579 11.25 9.25 11.5858 9.25 12C9.25 12.4142 9.58579 12.75 10 12.75H18.1893L16.4697 14.4697C16.1768 14.7626 16.1768 15.2374 16.4697 15.5303C16.7626 15.8232 17.2374 15.8232 17.5303 15.5303L20.5303 12.5303C20.8232 12.2374 20.8232 11.7626 20.5303 11.4697L17.5303 8.46967C17.2374 8.17678 16.7626 8.17678 16.4697 8.46967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 20C7.58172 20 4 16.4183 4 12C4 7.58172 7.58172 4 12 4V20Z" fill="currentColor"/>''',
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
