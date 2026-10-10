// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-forward-circle` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyMkMxNy41MjI4IDIyIDIyIDE3LjUyMjggMjIgMTJDMjIgNi40NzcxNSAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJaTTEzLjQzNiA3LjQ2MTA1QzEzLjA5ODkgNy4yMjAyOSAxMi42MzA1IDcuMjk4MzYgMTIuMzg5OCA3LjYzNTQyQzEyLjE0OSA3Ljk3MjQ4IDEyLjIyNzEgOC40NDA4OSAxMi41NjQxIDguNjgxNjVMMTUuNzg1NyAxMC45ODI4QzE2LjQ4MzYgMTEuNDgxMyAxNi40ODM2IDEyLjUxODYgMTUuNzg1NyAxMy4wMTcxTDEyLjU2NDEgMTUuMzE4MkMxMi4yMjcxIDE1LjU1ODkgMTIuMTQ5IDE2LjAyNzQgMTIuMzg5OCAxNi4zNjQ0QzEyLjYzMDUgMTYuNzAxNSAxMy4wOTg5IDE2Ljc3OTUgMTMuNDM2IDE2LjUzODhMMTYuNjU3NSAxNC4yMzc3QzE4LjE5MyAxMy4xNDA5IDE4LjE5MyAxMC44NTg5IDE2LjY1NzUgOS43NjIxNUwxMy40MzYgNy40NjEwNVpNNy41IDE1LjEzMThWOC44Njg4N0M3LjUgOC4wNzAxNyA4LjM5MDE1IDcuNTkzNzggOS4wNTQ3IDguMDM2ODJMMTMuNzUxOSAxMS4xNjgzQzE0LjM0NTcgMTEuNTY0MSAxNC4zNDU3IDEyLjQzNjYgMTMuNzUxOSAxMi44MzI0TDkuMDU0NyAxNS45NjM5QzguMzkwMTQgMTYuNDA2OSA3LjUgMTUuOTMwNSA3LjUgMTUuMTMxOFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class RewindForwardCircleBoldIcon extends StatelessWidget {
  /// Creates the `rewind-forward-circle` icon in the bold style.
  const RewindForwardCircleBoldIcon({
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
    name: 'rewind-forward-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22ZM13.436 7.46105C13.0989 7.22029 12.6305 7.29836 12.3898 7.63542C12.149 7.97248 12.2271 8.44089 12.5641 8.68165L15.7857 10.9828C16.4836 11.4813 16.4836 12.5186 15.7857 13.0171L12.5641 15.3182C12.2271 15.5589 12.149 16.0274 12.3898 16.3644C12.6305 16.7015 13.0989 16.7795 13.436 16.5388L16.6575 14.2377C18.193 13.1409 18.193 10.8589 16.6575 9.76215L13.436 7.46105ZM7.5 15.1318V8.86887C7.5 8.07017 8.39015 7.59378 9.0547 8.03682L13.7519 11.1683C14.3457 11.5641 14.3457 12.4366 13.7519 12.8324L9.0547 15.9639C8.39014 16.4069 7.5 15.9305 7.5 15.1318Z" fill="currentColor"/>''',
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
