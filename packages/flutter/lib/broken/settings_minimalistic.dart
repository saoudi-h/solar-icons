// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `settings-minimalistic` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTcuODQzMDggMjAuMTk3OUM5Ljg3MTggMjEuMzk5MyAxMC44ODYyIDIyIDEyIDIyQzEzLjExMzggMjIgMTQuMTI4MiAyMS4zOTkzIDE2LjE1NjkgMjAuMTk3OUwxNi44NDMxIDE5Ljc5MTVDMTguODcxOCAxOC41OTAxIDE5Ljg4NjIgMTcuOTg5NCAyMC40NDMxIDE3QzIxIDE2LjAxMDYgMjEgMTQuODA5MiAyMSAxMi40MDYzTTIwLjgxNDcgOEMyMC43MzI2IDcuNjI3NTkgMjAuNjE0MSA3LjMwMzggMjAuNDQzMSA3QzE5Ljg4NjIgNi4wMTA1NyAxOC44NzE4IDUuNDA5ODcgMTYuODQzMSA0LjIwODQ2TDE2LjE1NjkgMy44MDIxMUMxNC4xMjgyIDIuNjAwNyAxMy4xMTM4IDIgMTIgMkMxMC44ODYyIDIgOS44NzE4IDIuNjAwNyA3Ljg0MzA4IDMuODAyMTFMNy4xNTY5MiA0LjIwODQ2QzUuMTI4MiA1LjQwOTg3IDQuMTEzODQgNi4wMTA1NyAzLjU1NjkyIDdDMyA3Ljk4OTQzIDMgOS4xOTA4NCAzIDExLjU5MzdWMTIuNDA2M0MzIDE0LjgwOTIgMyAxNi4wMTA2IDMuNTU2OTIgMTdDMy43ODMyNiAxNy40MDIxIDQuMDg1MTYgMTcuNzQgNC41IDE4LjA4MDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SettingsMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `settings-minimalistic` icon in the broken style.
  const SettingsMinimalisticBrokenIcon({
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
    name: 'settings-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7.84308 20.1979C9.8718 21.3993 10.8862 22 12 22C13.1138 22 14.1282 21.3993 16.1569 20.1979L16.8431 19.7915C18.8718 18.5901 19.8862 17.9894 20.4431 17C21 16.0106 21 14.8092 21 12.4063M20.8147 8C20.7326 7.62759 20.6141 7.3038 20.4431 7C19.8862 6.01057 18.8718 5.40987 16.8431 4.20846L16.1569 3.80211C14.1282 2.6007 13.1138 2 12 2C10.8862 2 9.8718 2.6007 7.84308 3.80211L7.15692 4.20846C5.1282 5.40987 4.11384 6.01057 3.55692 7C3 7.98943 3 9.19084 3 11.5937V12.4063C3 14.8092 3 16.0106 3.55692 17C3.78326 17.4021 4.08516 17.74 4.5 18.0802" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="3" stroke="currentColor" stroke-linecap="round"/>''',
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
