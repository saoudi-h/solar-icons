// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `eraser-square` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEzLjE4MDkgMTUuNTQyN0w4LjQ1NzMxIDEwLjgxOTFNMTEuNjA2NCA3LjY3MDA0QzEyLjcxOTcgNi41NTY2OCAxMy4yNzY0IDYgMTMuOTY4MiA2QzE0LjY1OTkgNiAxNS4yMTY2IDYuNTU2NjggMTYuMzMgNy42NzAwNEMxNy40NDMzIDguNzgzNCAxOCA5LjM0MDA4IDE4IDEwLjAzMThDMTggMTAuNzIzNiAxNy40NDMzIDExLjI4MDMgMTYuMzMgMTIuMzkzNkwxMi4zOTM2IDE2LjMzQzExLjI4MDMgMTcuNDQzMyAxMC43MjM2IDE4IDEwLjAzMTggMThDOS4zNDAwOCAxOCA4Ljc4MzQgMTcuNDQzMyA3LjY3MDA0IDE2LjMzQzYuNTU2NjggMTUuMjE2NiA2IDE0LjY1OTkgNiAxMy45NjgyQzYgMTMuMjc2NCA2LjU1NjY4IDEyLjcxOTcgNy42NzAwNCAxMS42MDY0TDExLjYwNjQgNy42NzAwNFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuNTM1NSAyMC41MzU1QzE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyIDIyQzcuMjg1OTUgMjIgNC45Mjg5MyAyMiAzLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJDMiA3LjI4NTk1IDIgNC45Mjg5MyAzLjQ2NDQ3IDMuNDY0NDdDNC45Mjg5MyAyIDcuMjg1OTUgMiAxMiAyQzE2LjcxNCAyIDE5LjA3MTEgMiAyMC41MzU1IDMuNDY0NDdDMjEuNTA5MyA0LjQzODIxIDIxLjgzNTYgNS44MDY1NSAyMS45NDQ5IDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class EraserSquareBrokenIcon extends StatelessWidget {
  /// Creates the `eraser-square` icon in the broken style.
  const EraserSquareBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13.1809 15.5427L8.45731 10.8191M11.6064 7.67004C12.7197 6.55668 13.2764 6 13.9682 6C14.6599 6 15.2166 6.55668 16.33 7.67004C17.4433 8.7834 18 9.34008 18 10.0318C18 10.7236 17.4433 11.2803 16.33 12.3936L12.3936 16.33C11.2803 17.4433 10.7236 18 10.0318 18C9.34008 18 8.7834 17.4433 7.67004 16.33C6.55668 15.2166 6 14.6599 6 13.9682C6 13.2764 6.55668 12.7197 7.67004 11.6064L11.6064 7.67004Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C21.5093 4.43821 21.8356 5.80655 21.9449 8" stroke="currentColor" stroke-linecap="round"/>''',
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
