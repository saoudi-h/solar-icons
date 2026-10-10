// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `eraser-square` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjQ2NDQ3IDMuNDY0NDdDMiA0LjkyODkzIDIgNy4yODU5NSAyIDEyQzIgMTYuNzE0IDIgMTkuMDcxMSAzLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyQzE2LjcxNCAyMiAxOS4wNzExIDIyIDIwLjUzNTUgMjAuNTM1NUMyMiAxOS4wNzExIDIyIDE2LjcxNCAyMiAxMkMyMiA3LjI4NTk1IDIyIDQuOTI4OTMgMjAuNTM1NSAzLjQ2NDQ3QzE5LjA3MTEgMiAxNi43MTQgMiAxMiAyQzcuMjg1OTUgMiA0LjkyODkzIDIgMy40NjQ0NyAzLjQ2NDQ3Wk04Ljk4NzgxIDEwLjI4ODZMMTMuNzExNCAxNS4wMTIyTDE2LjMzIDEyLjM5MzZDMTcuNDQzMyAxMS4yODAzIDE4IDEwLjcyMzYgMTggMTAuMDMxOEMxOCA5LjM0MDA4IDE3LjQ0MzMgOC43ODM0IDE2LjMzIDcuNjcwMDRDMTUuMjE2NiA2LjU1NjY4IDE0LjY1OTkgNiAxMy45NjgyIDZDMTMuMjc2NCA2IDEyLjcxOTcgNi41NTY2OCAxMS42MDY0IDcuNjcwMDRMOC45ODc4MSAxMC4yODg2Wk0xMi4zOTM2IDE2LjMzTDEyLjY1MDcgMTYuMDcyOUw3LjkyNzE1IDExLjM0OTNMNy42NzAwNCAxMS42MDY0QzYuNTU2NjggMTIuNzE5NyA2IDEzLjI3NjQgNiAxMy45NjgyQzYgMTQuNjU5OSA2LjU1NjY4IDE1LjIxNjYgNy42NzAwNCAxNi4zM0M4Ljc4MzQgMTcuNDQzMyA5LjM0MDA4IDE4IDEwLjAzMTggMThDMTAuNzIzNiAxOCAxMS4yODAzIDE3LjQ0MzMgMTIuMzkzNiAxNi4zM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class EraserSquareBoldIcon extends StatelessWidget {
  /// Creates the `eraser-square` icon in the bold style.
  const EraserSquareBoldIcon({
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
    name: 'eraser-square',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447ZM8.98781 10.2886L13.7114 15.0122L16.33 12.3936C17.4433 11.2803 18 10.7236 18 10.0318C18 9.34008 17.4433 8.7834 16.33 7.67004C15.2166 6.55668 14.6599 6 13.9682 6C13.2764 6 12.7197 6.55668 11.6064 7.67004L8.98781 10.2886ZM12.3936 16.33L12.6507 16.0729L7.92715 11.3493L7.67004 11.6064C6.55668 12.7197 6 13.2764 6 13.9682C6 14.6599 6.55668 15.2166 7.67004 16.33C8.7834 17.4433 9.34008 18 10.0318 18C10.7236 18 11.2803 17.4433 12.3936 16.33Z" fill="currentColor"/>''',
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
