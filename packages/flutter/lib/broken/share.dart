// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `share` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQuNSAxMkM0LjUgMTMuMzgwNyA1LjYxOTI5IDE0LjUgNyAxNC41QzguMzgwNzEgMTQuNSA5LjUgMTMuMzgwNyA5LjUgMTJDOS41IDEwLjYxOTMgOC4zODA3MSA5LjUgNyA5LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTcgMjFDMTguMzgwNyAyMSAxOS41IDE5Ljg4MDcgMTkuNSAxOC41QzE5LjUgMTcuMTE5MyAxOC4zODA3IDE2IDE3IDE2QzE1LjYxOTMgMTYgMTQuNSAxNy4xMTkzIDE0LjUgMTguNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOS4xNjU1IDYuNzUwNDJDMTguNDc1MSA3Ljk0NjE1IDE2Ljk0NjEgOC4zNTU4NCAxNS43NTA0IDcuNjY1NDhDMTQuNTU0NyA2Ljk3NTEzIDE0LjE0NSA1LjQ0NjE1IDE0LjgzNTQgNC4yNTA0MkMxNS41MjU3IDMuMDU0NjkgMTcuMDU0NyAyLjY0NSAxOC4yNTA0IDMuMzM1MzUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOS4wOTY0NCAxMy4zNjI4QzExLjAzMjIgMTQuNjIxIDEyLjk2NzkgMTUuODc5MiAxNC45MDM2IDE3LjEzNzQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOS4wOTY0NCAxMC42MzcyQzExLjAzMjIgOS4zNzkgMTIuOTY3OSA4LjEyMDc5IDE0LjkwMzYgNi44NjI1OCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ShareBrokenIcon extends StatelessWidget {
  /// Creates the `share` icon in the broken style.
  const ShareBrokenIcon({
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
    name: 'share',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4.5 12C4.5 13.3807 5.61929 14.5 7 14.5C8.38071 14.5 9.5 13.3807 9.5 12C9.5 10.6193 8.38071 9.5 7 9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 21C18.3807 21 19.5 19.8807 19.5 18.5C19.5 17.1193 18.3807 16 17 16C15.6193 16 14.5 17.1193 14.5 18.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.1655 6.75042C18.4751 7.94615 16.9461 8.35584 15.7504 7.66548C14.5547 6.97513 14.145 5.44615 14.8354 4.25042C15.5257 3.05469 17.0547 2.645 18.2504 3.33535" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.09644 13.3628C11.0322 14.621 12.9679 15.8792 14.9036 17.1374" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.09644 10.6372C11.0322 9.379 12.9679 8.12079 14.9036 6.86258" stroke="currentColor" stroke-linecap="round"/>''',
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
