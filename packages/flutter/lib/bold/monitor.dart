// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `monitor` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTggMTdDNS4xNzE1NyAxNyAzLjc1NzM2IDE3IDIuODc4NjggMTYuMTIxM0MyLjMwOTM4IDE1LjU1MiAyLjEwODkzIDE0Ljc1NzkgMi4wMzgzNSAxMy41SDIxLjk2MTZDMjEuODkxMSAxNC43NTc5IDIxLjY5MDYgMTUuNTUyIDIxLjEyMTMgMTYuMTIxM0MyMC4yNDI2IDE3IDE4LjgyODQgMTcgMTYgMTdIMTIuNzVWMjFIMTZDMTYuNDE0MiAyMSAxNi43NSAyMS4zMzU4IDE2Ljc1IDIxLjc1QzE2Ljc1IDIyLjE2NDIgMTYuNDE0MiAyMi41IDE2IDIyLjVIOEM3LjU4NTc5IDIyLjUgNy4yNSAyMi4xNjQyIDcuMjUgMjEuNzVDNy4yNSAyMS4zMzU4IDcuNTg1NzkgMjEgOCAyMUgxMS4yNVYxN0g4WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTAgMkgxNEMxNy43NzEyIDIgMTkuNjU2OSAyIDIwLjgyODQgMy4xNzE1N0MyMiA0LjM0MzE1IDIyIDYuMjI4NzYgMjIgMTBWMTFDMjIgMTEuNTUxNiAyMiAxMi4wNDk0IDIxLjk5MzUgMTIuNUgyLjAwNjUyQzIgMTIuMDQ5NCAyIDExLjU1MTYgMiAxMVYxMEMyIDYuMjI4NzYgMiA0LjM0MzE1IDMuMTcxNTcgMy4xNzE1N0M0LjM0MzE1IDIgNi4yMjg3NiAyIDEwIDJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MonitorBoldIcon extends StatelessWidget {
  /// Creates the `monitor` icon in the bold style.
  const MonitorBoldIcon({
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
    name: 'monitor',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8 17C5.17157 17 3.75736 17 2.87868 16.1213C2.30938 15.552 2.10893 14.7579 2.03835 13.5H21.9616C21.8911 14.7579 21.6906 15.552 21.1213 16.1213C20.2426 17 18.8284 17 16 17H12.75V21H16C16.4142 21 16.75 21.3358 16.75 21.75C16.75 22.1642 16.4142 22.5 16 22.5H8C7.58579 22.5 7.25 22.1642 7.25 21.75C7.25 21.3358 7.58579 21 8 21H11.25V17H8Z" fill="currentColor"/>
<path d="M10 2H14C17.7712 2 19.6569 2 20.8284 3.17157C22 4.34315 22 6.22876 22 10V11C22 11.5516 22 12.0494 21.9935 12.5H2.00652C2 12.0494 2 11.5516 2 11V10C2 6.22876 2 4.34315 3.17157 3.17157C4.34315 2 6.22876 2 10 2Z" fill="currentColor"/>''',
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
