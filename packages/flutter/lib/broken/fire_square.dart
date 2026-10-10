// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `fire-square` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2LjU1ODIgMTUuMDAwMUMxNi44MzUgMTQuMzU2NiAxNyAxMy41ODU5IDE3IDEyLjY2NjdDMTcgMTAuMDU1OCAxNS40NTkzIDguMTYyMzEgMTQuMDAwOCA3LjAzMTY2QzEzLjI1MjUgNi40NTE1OSAxMi4yOTQxIDcuMDUzMjMgMTIuMjk0MSA4LjAwMDAxQzEyLjI5NDEgOC42NDI3MyAxMi4wMDU0IDkuNzEyOTkgMTEuNDIwNSAxMC41MDExQzEwLjc4MTQgMTEuMzYyMiA5Ljk1NjE2IDEwLjUwMjEgOS44OTg0MSA5LjQzMTMxQzkuODcyMDEgOC45NDE5MyA5LjM2NDIxIDguNzY4NjQgOC45NTU5MyA5LjAzOTc2QzguMDYyOTIgOS42MzI3NiA3IDEwLjgxMDkgNyAxMi42NjY3QzcgMTYuOTMzMyAxMC4xMTExIDE4IDExLjY2NjcgMThDMTIuNDc0IDE4IDEzLjY0OCAxNy43OCAxNC42ODkxIDE3LjE0MDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuNTM1NSAyMC41MzU1QzE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyIDIyQzcuMjg1OTUgMjIgNC45Mjg5MyAyMiAzLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJDMiA3LjI4NTk1IDIgNC45Mjg5MyAzLjQ2NDQ3IDMuNDY0NDdDNC45Mjg5MyAyIDcuMjg1OTUgMiAxMiAyQzE2LjcxNCAyIDE5LjA3MTEgMiAyMC41MzU1IDMuNDY0NDdDMjEuNTA5MyA0LjQzODIxIDIxLjgzNTYgNS44MDY1NSAyMS45NDQ5IDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class FireSquareBrokenIcon extends StatelessWidget {
  /// Creates the `fire-square` icon in the broken style.
  const FireSquareBrokenIcon({
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
    name: 'fire-square',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16.5582 15.0001C16.835 14.3566 17 13.5859 17 12.6667C17 10.0558 15.4593 8.16231 14.0008 7.03166C13.2525 6.45159 12.2941 7.05323 12.2941 8.00001C12.2941 8.64273 12.0054 9.71299 11.4205 10.5011C10.7814 11.3622 9.95616 10.5021 9.89841 9.43131C9.87201 8.94193 9.36421 8.76864 8.95593 9.03976C8.06292 9.63276 7 10.8109 7 12.6667C7 16.9333 10.1111 18 11.6667 18C12.474 18 13.648 17.78 14.6891 17.1403" stroke="currentColor" stroke-linecap="round"/>
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
