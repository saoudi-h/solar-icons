// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `loader` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEuMjUgMTJDMS4yNSA2LjA2Mjk0IDYuMDYyOTQgMS4yNSAxMiAxLjI1QzEyLjczNjQgMS4yNSAxMy40NTYzIDEuMzI0MzMgMTQuMTUyMyAxLjQ2NTgyQzE0LjU1OCAxLjU0ODM2IDE0LjgyMDUgMS45NDM5MSAxNC43MzgzIDIuMzQ5NjFDMTQuNjU1OCAyLjc1NTQ5IDE0LjI1OTQgMy4wMTgwMSAxMy44NTM1IDIuOTM1NTVDMTMuMjU1MyAyLjgxMzk0IDEyLjYzNTUgMi43NSAxMiAyLjc1QzYuODkxMzcgMi43NSAyLjc1IDYuODkxMzcgMi43NSAxMkMyLjc1IDE3LjEwODYgNi44OTEzNyAyMS4yNSAxMiAyMS4yNUMxNy4xMDg2IDIxLjI1IDIxLjI1IDE3LjEwODYgMjEuMjUgMTJDMjEuMjUgMTEuMzY4OCAyMS4xODY0IDEwLjc1MjcgMjEuMDY2NCAxMC4xNTgyQzIwLjk4NDcgOS43NTI0NiAyMS4yNDc2IDkuMzU3NDkgMjEuNjUzMyA5LjI3NTM5QzIyLjA1OTIgOS4xOTM0NCAyMi40NTUgOS40NTU1NCAyMi41MzcxIDkuODYxMzNDMjIuNjc2OCAxMC41NTMgMjIuNzUgMTEuMjY4NSAyMi43NSAxMkMyMi43NSAxNy45MzcxIDE3LjkzNzEgMjIuNzUgMTIgMjIuNzVDNi4wNjI5NCAyMi43NSAxLjI1IDE3LjkzNzEgMS4yNSAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class LoaderBoldIcon extends StatelessWidget {
  /// Creates the `loader` icon in the bold style.
  const LoaderBoldIcon({
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
    name: 'loader',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C12.7364 1.25 13.4563 1.32433 14.1523 1.46582C14.558 1.54836 14.8205 1.94391 14.7383 2.34961C14.6558 2.75549 14.2594 3.01801 13.8535 2.93555C13.2553 2.81394 12.6355 2.75 12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 11.3688 21.1864 10.7527 21.0664 10.1582C20.9847 9.75246 21.2476 9.35749 21.6533 9.27539C22.0592 9.19344 22.455 9.45554 22.5371 9.86133C22.6768 10.553 22.75 11.2685 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12Z" fill="currentColor"/>''',
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
