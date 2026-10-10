// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `double-alt-arrow-left` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMy40ODgxIDQuNDMwNTdDMTMuODAyNiA0LjcwMDE0IDEzLjgzOSA1LjE3MzYxIDEzLjU2OTQgNS40ODgxMUw3Ljk4NzgxIDEyTDEzLjU2OTQgMTguNTExOUMxMy44MzkgMTguODI2NCAxMy44MDI2IDE5LjI5OTkgMTMuNDg4MSAxOS41Njk1QzEzLjE3MzYgMTkuODM5IDEyLjcwMDEgMTkuODAyNiAxMi40MzA2IDE5LjQ4ODFMNi40MzA1NiAxMi40ODgxQzYuMTg5ODEgMTIuMjA3MiA2LjE4OTgxIDExLjc5MjggNi40MzA1NiAxMS41MTE5TDEyLjQzMDYgNC41MTE5MkMxMi43MDAxIDQuMTk3NDMgMTMuMTczNiA0LjE2MSAxMy40ODgxIDQuNDMwNTdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNy43NSA1LjAwMDA1QzE3Ljc1IDQuNjg2MTkgMTcuNTU0NiA0LjQwNTUzIDE3LjI2MDIgNC4yOTY2NEMxNi45NjU4IDQuMTg3NzQgMTYuNjM0OCA0LjI3MzY2IDE2LjQzMDYgNC41MTE5NkwxMC40MzA2IDExLjUxMkMxMC4xODk4IDExLjc5MjggMTAuMTg5OCAxMi4yMDczIDEwLjQzMDYgMTIuNDg4MUwxNi40MzA2IDE5LjQ4ODFDMTYuNjM0OCAxOS43MjY0IDE2Ljk2NTggMTkuODEyNCAxNy4yNjAyIDE5LjcwMzVDMTcuNTU0NiAxOS41OTQ2IDE3Ljc1IDE5LjMxMzkgMTcuNzUgMTlMMTcuNzUgNS4wMDAwNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class DoubleAltArrowLeftBoldIcon extends StatelessWidget {
  /// Creates the `double-alt-arrow-left` icon in the bold style.
  const DoubleAltArrowLeftBoldIcon({
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
    name: 'double-alt-arrow-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M13.4881 4.43057C13.8026 4.70014 13.839 5.17361 13.5694 5.48811L7.98781 12L13.5694 18.5119C13.839 18.8264 13.8026 19.2999 13.4881 19.5695C13.1736 19.839 12.7001 19.8026 12.4306 19.4881L6.43056 12.4881C6.18981 12.2072 6.18981 11.7928 6.43056 11.5119L12.4306 4.51192C12.7001 4.19743 13.1736 4.161 13.4881 4.43057Z" fill="currentColor"/>
<path d="M17.75 5.00005C17.75 4.68619 17.5546 4.40553 17.2602 4.29664C16.9658 4.18774 16.6348 4.27366 16.4306 4.51196L10.4306 11.512C10.1898 11.7928 10.1898 12.2073 10.4306 12.4881L16.4306 19.4881C16.6348 19.7264 16.9658 19.8124 17.2602 19.7035C17.5546 19.5946 17.75 19.3139 17.75 19L17.75 5.00005Z" fill="currentColor"/>''',
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
