// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-point-add` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTAuNTM3MSAyMS42NzQ0QzExLjQ2NTcgMjIuMTA4NSAxMi41MzQzIDIyLjEwODUgMTMuNDYyOSAyMS42NzQ0QzE3LjQ0NjcgMTkuODEyNCAyMCAxNC42MDU1IDIwIDEwLjE0MzNDMjAgNS42NDU4OCAxNi40MTgzIDIgMTIgMkM3LjU4MTcyIDIgNCA1LjY0NTg4IDQgMTAuMTQzM0M0IDE0LjYwNTUgNi41NTMzMiAxOS44MTI0IDEwLjUzNzEgMjEuNjc0NFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyLjc1IDcuNUMxMi43NSA3LjA4NTc5IDEyLjQxNDIgNi43NSAxMiA2Ljc1QzExLjU4NTggNi43NSAxMS4yNSA3LjA4NTc5IDExLjI1IDcuNVY5LjI1SDkuNUM5LjA4NTc5IDkuMjUgOC43NSA5LjU4NTc5IDguNzUgMTBDOC43NSAxMC40MTQyIDkuMDg1NzkgMTAuNzUgOS41IDEwLjc1SDExLjI1VjEyLjVDMTEuMjUgMTIuOTE0MiAxMS41ODU4IDEzLjI1IDEyIDEzLjI1QzEyLjQxNDIgMTMuMjUgMTIuNzUgMTIuOTE0MiAxMi43NSAxMi41VjEwLjc1SDE0LjVDMTQuOTE0MiAxMC43NSAxNS4yNSAxMC40MTQyIDE1LjI1IDEwQzE1LjI1IDkuNTg1NzkgMTQuOTE0MiA5LjI1IDE0LjUgOS4yNUgxMi43NVY3LjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MapPointAddBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `map-point-add` icon in the boldDuotone style.
  const MapPointAddBoldDuotoneIcon({
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
    name: 'map-point-add',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 7.5C12.75 7.08579 12.4142 6.75 12 6.75C11.5858 6.75 11.25 7.08579 11.25 7.5V9.25H9.5C9.08579 9.25 8.75 9.58579 8.75 10C8.75 10.4142 9.08579 10.75 9.5 10.75H11.25V12.5C11.25 12.9142 11.5858 13.25 12 13.25C12.4142 13.25 12.75 12.9142 12.75 12.5V10.75H14.5C14.9142 10.75 15.25 10.4142 15.25 10C15.25 9.58579 14.9142 9.25 14.5 9.25H12.75V7.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.5371 21.6744C11.4657 22.1085 12.5343 22.1085 13.4629 21.6744C17.4467 19.8124 20 14.6055 20 10.1433C20 5.64588 16.4183 2 12 2C7.58172 2 4 5.64588 4 10.1433C4 14.6055 6.55332 19.8124 10.5371 21.6744Z" fill="currentColor"/>''',
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
