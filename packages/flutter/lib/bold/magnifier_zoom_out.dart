// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `magnifier-zoom-out` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMS43ODgzIDIxLjc4ODNDMjIuMDcwNiAyMS41MDYgMjIuMDcwNiAyMS4wNDgzIDIxLjc4ODMgMjAuNzY1OUwxOC4xMjI0IDE3LjEwMDJDMTkuNDg4NCAxNS41MDA3IDIwLjMxMzMgMTMuNDI1IDIwLjMxMzMgMTEuMTU2NkMyMC4zMTMzIDYuMDk5NTYgMTYuMjEzNyAyIDExLjE1NjYgMkM2LjA5OTU2IDIgMiA2LjA5OTU2IDIgMTEuMTU2NkMyIDE2LjIxMzcgNi4wOTk1NiAyMC4zMTMzIDExLjE1NjYgMjAuMzEzM0MxMy40MjQ5IDIwLjMxMzMgMTUuNTAwNiAxOS40ODg1IDE3LjEgMTguMTIyNUwyMC43NjU5IDIxLjc4ODNDMjEuMDQ4MyAyMi4wNzA2IDIxLjUwNiAyMi4wNzA2IDIxLjc4ODMgMjEuNzg4M1pNOC4wMjQxIDExLjE1NjZDOC4wMjQxIDEwLjc1NzQgOC4zNDc3NSAxMC40MzM3IDguNzQ2OTkgMTAuNDMzN0gxMy41NjYzQzEzLjk2NTUgMTAuNDMzNyAxNC4yODkyIDEwLjc1NzQgMTQuMjg5MiAxMS4xNTY2QzE0LjI4OTIgMTEuNTU1OSAxMy45NjU1IDExLjg3OTUgMTMuNTY2MyAxMS44Nzk1SDguNzQ2OTlDOC4zNDc3NSAxMS44Nzk1IDguMDI0MSAxMS41NTU5IDguMDI0MSAxMS4xNTY2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MagnifierZoomOutBoldIcon extends StatelessWidget {
  /// Creates the `magnifier-zoom-out` icon in the bold style.
  const MagnifierZoomOutBoldIcon({
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
    name: 'magnifier-zoom-out',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21.7883 21.7883C22.0706 21.506 22.0706 21.0483 21.7883 20.7659L18.1224 17.1002C19.4884 15.5007 20.3133 13.425 20.3133 11.1566C20.3133 6.09956 16.2137 2 11.1566 2C6.09956 2 2 6.09956 2 11.1566C2 16.2137 6.09956 20.3133 11.1566 20.3133C13.4249 20.3133 15.5006 19.4885 17.1 18.1225L20.7659 21.7883C21.0483 22.0706 21.506 22.0706 21.7883 21.7883ZM8.0241 11.1566C8.0241 10.7574 8.34775 10.4337 8.74699 10.4337H13.5663C13.9655 10.4337 14.2892 10.7574 14.2892 11.1566C14.2892 11.5559 13.9655 11.8795 13.5663 11.8795H8.74699C8.34775 11.8795 8.0241 11.5559 8.0241 11.1566Z" fill="currentColor"/>''',
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
