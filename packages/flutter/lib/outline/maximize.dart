// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `maximize` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2LjE0MjkgMS4yNUMxNS43Mjg2IDEuMjUgMTUuMzkyOSAxLjU4NTc5IDE1LjM5MjkgMkMxNS4zOTI5IDIuNDE0MjEgMTUuNzI4NiAyLjc1IDE2LjE0MjkgMi43NUgyMC4xODkzTDE0LjQ2OTcgOC40Njk2N0MxNC4xNzY4IDguNzYyNTYgMTQuMTc2OCA5LjIzNzQ0IDE0LjQ2OTcgOS41MzAzM0MxNC43NjI2IDkuODIzMjIgMTUuMjM3NCA5LjgyMzIyIDE1LjUzMDMgOS41MzAzM0wyMS4yNSAzLjgxMDY2VjcuODU3MTRDMjEuMjUgOC4yNzEzNiAyMS41ODU4IDguNjA3MTQgMjIgOC42MDcxNEMyMi40MTQyIDguNjA3MTQgMjIuNzUgOC4yNzEzNiAyMi43NSA3Ljg1NzE0VjJDMjIuNzUgMS41ODU3OSAyMi40MTQyIDEuMjUgMjIgMS4yNUgxNi4xNDI5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNNy44NTcxNCAyMi43NUM4LjI3MTM2IDIyLjc1IDguNjA3MTQgMjIuNDE0MiA4LjYwNzE0IDIyQzguNjA3MTQgMjEuNTg1OCA4LjI3MTM2IDIxLjI1IDcuODU3MTQgMjEuMjVIMy44MTA2Nkw5LjUzMDMzIDE1LjUzMDNDOS44MjMyMiAxNS4yMzc0IDkuODIzMjIgMTQuNzYyNiA5LjUzMDMzIDE0LjQ2OTdDOS4yMzc0NCAxNC4xNzY4IDguNzYyNTYgMTQuMTc2OCA4LjQ2OTY3IDE0LjQ2OTdMMi43NSAyMC4xODkzVjE2LjE0MjlDMi43NSAxNS43Mjg2IDIuNDE0MjEgMTUuMzkyOSAyIDE1LjM5MjlDMS41ODU3OSAxNS4zOTI5IDEuMjUgMTUuNzI4NiAxLjI1IDE2LjE0MjlWMjJDMS4yNSAyMi40MTQyIDEuNTg1NzkgMjIuNzUgMiAyMi43NUg3Ljg1NzE0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MaximizeOutlineIcon extends StatelessWidget {
  /// Creates the `maximize` icon in the outline style.
  const MaximizeOutlineIcon({
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
    name: 'maximize',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M16.1429 1.25C15.7286 1.25 15.3929 1.58579 15.3929 2C15.3929 2.41421 15.7286 2.75 16.1429 2.75H20.1893L14.4697 8.46967C14.1768 8.76256 14.1768 9.23744 14.4697 9.53033C14.7626 9.82322 15.2374 9.82322 15.5303 9.53033L21.25 3.81066V7.85714C21.25 8.27136 21.5858 8.60714 22 8.60714C22.4142 8.60714 22.75 8.27136 22.75 7.85714V2C22.75 1.58579 22.4142 1.25 22 1.25H16.1429Z" fill="currentColor"/>
<path d="M7.85714 22.75C8.27136 22.75 8.60714 22.4142 8.60714 22C8.60714 21.5858 8.27136 21.25 7.85714 21.25H3.81066L9.53033 15.5303C9.82322 15.2374 9.82322 14.7626 9.53033 14.4697C9.23744 14.1768 8.76256 14.1768 8.46967 14.4697L2.75 20.1893V16.1429C2.75 15.7286 2.41421 15.3929 2 15.3929C1.58579 15.3929 1.25 15.7286 1.25 16.1429V22C1.25 22.4142 1.58579 22.75 2 22.75H7.85714Z" fill="currentColor"/>''',
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
