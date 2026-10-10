// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smartphone-2` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik01LjE3MTU3IDMuMTcxNTdDNCA0LjM0MzE1IDQgNi4yMjg3NiA0IDEwVjE0QzQgMTcuNzcxMiA0IDE5LjY1NjkgNS4xNzE1NyAyMC44Mjg0QzYuMzQzMTUgMjIgOC4yMjg3NiAyMiAxMiAyMkMxNS43NzEyIDIyIDE3LjY1NjkgMjIgMTguODI4NCAyMC44Mjg0QzIwIDE5LjY1NjkgMjAgMTcuNzcxMiAyMCAxNFYxMEMyMCA2LjIyODc2IDIwIDQuMzQzMTUgMTguODI4NCAzLjE3MTU3QzE3LjY1NjkgMiAxNS43NzEyIDIgMTIgMkM4LjIyODc2IDIgNi4zNDMxNSAyIDUuMTcxNTcgMy4xNzE1N1pNOSA0LjI1QzguNTg1NzkgNC4yNSA4LjI1IDQuNTg1NzkgOC4yNSA1QzguMjUgNS40MTQyMSA4LjU4NTc5IDUuNzUgOSA1Ljc1SDE1QzE1LjQxNDIgNS43NSAxNS43NSA1LjQxNDIxIDE1Ljc1IDVDMTUuNzUgNC41ODU3OSAxNS40MTQyIDQuMjUgMTUgNC4yNUg5Wk0xMiAxOUMxMy4xMDQ2IDE5IDE0IDE4LjEwNDYgMTQgMTdDMTQgMTUuODk1NCAxMy4xMDQ2IDE1IDEyIDE1QzEwLjg5NTQgMTUgMTAgMTUuODk1NCAxMCAxN0MxMCAxOC4xMDQ2IDEwLjg5NTQgMTkgMTIgMTlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class Smartphone2BoldIcon extends StatelessWidget {
  /// Creates the `smartphone-2` icon in the bold style.
  const Smartphone2BoldIcon({
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
    name: 'smartphone-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M5.17157 3.17157C4 4.34315 4 6.22876 4 10V14C4 17.7712 4 19.6569 5.17157 20.8284C6.34315 22 8.22876 22 12 22C15.7712 22 17.6569 22 18.8284 20.8284C20 19.6569 20 17.7712 20 14V10C20 6.22876 20 4.34315 18.8284 3.17157C17.6569 2 15.7712 2 12 2C8.22876 2 6.34315 2 5.17157 3.17157ZM9 4.25C8.58579 4.25 8.25 4.58579 8.25 5C8.25 5.41421 8.58579 5.75 9 5.75H15C15.4142 5.75 15.75 5.41421 15.75 5C15.75 4.58579 15.4142 4.25 15 4.25H9ZM12 19C13.1046 19 14 18.1046 14 17C14 15.8954 13.1046 15 12 15C10.8954 15 10 15.8954 10 17C10 18.1046 10.8954 19 12 19Z" fill="currentColor"/>''',
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
