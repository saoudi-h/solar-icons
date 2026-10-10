// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tablet` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjE3MTU3IDE4LjgyODRDNC4zNDMxNSAyMCA2LjIyODc2IDIwIDEwIDIwTDE0IDIwQzE3Ljc3MTIgMjAgMTkuNjU2OSAyMCAyMC44Mjg0IDE4LjgyODRDMjIgMTcuNjU2OSAyMiAxNS43NzEyIDIyIDEyQzIyIDguMjI4NzYgMjIgNi4zNDMxNCAyMC44Mjg0IDUuMTcxNTdDMTkuNjU2OSA0IDE3Ljc3MTIgNCAxNCA0SDEwQzYuMjI4NzYgNCA0LjM0MzE1IDQgMy4xNzE1NyA1LjE3MTU3QzIgNi4zNDMxNSAyIDguMjI4NzYgMiAxMkMyIDE1Ljc3MTIgMiAxNy42NTY5IDMuMTcxNTcgMTguODI4NFpNOSAxNi4yNUM4LjU4NTc5IDE2LjI1IDguMjUgMTYuNTg1OCA4LjI1IDE3QzguMjUgMTcuNDE0MiA4LjU4NTc5IDE3Ljc1IDkgMTcuNzVIMTVDMTUuNDE0MiAxNy43NSAxNS43NSAxNy40MTQyIDE1Ljc1IDE3QzE1Ljc1IDE2LjU4NTggMTUuNDE0MiAxNi4yNSAxNSAxNi4yNUg5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class TabletBoldIcon extends StatelessWidget {
  /// Creates the `tablet` icon in the bold style.
  const TabletBoldIcon({
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
    name: 'tablet',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.17157 18.8284C4.34315 20 6.22876 20 10 20L14 20C17.7712 20 19.6569 20 20.8284 18.8284C22 17.6569 22 15.7712 22 12C22 8.22876 22 6.34314 20.8284 5.17157C19.6569 4 17.7712 4 14 4H10C6.22876 4 4.34315 4 3.17157 5.17157C2 6.34315 2 8.22876 2 12C2 15.7712 2 17.6569 3.17157 18.8284ZM9 16.25C8.58579 16.25 8.25 16.5858 8.25 17C8.25 17.4142 8.58579 17.75 9 17.75H15C15.4142 17.75 15.75 17.4142 15.75 17C15.75 16.5858 15.4142 16.25 15 16.25H9Z" fill="currentColor"/>''',
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
