// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `mirror` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUgOS41VjE5QzUgMTkuNjQ5MSA0Ljc4OTQ3IDIwLjI4MDcgNC40IDIwLjhMMy41IDIyTTE5IDkuNVYxOUMxOSAxOS42NDkxIDE5LjIxMDUgMjAuMjgwNyAxOS42IDIwLjhMMjAuNSAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik02LjM0MTQxIDdDNi4xMjAzMSA3Ljc4MTk1IDYgOC42MjM0MSA2IDkuNUM2IDEzLjY0MjEgOC42ODYyOSAxNyAxMiAxN0MxNS4zMTM3IDE3IDE4IDEzLjY0MjEgMTggOS41QzE4IDUuMzU3ODYgMTUuMzEzNyAyIDEyIDJDMTAuOTA5MSAyIDkuODg2MTMgMi4zNjM5NCA5LjAwNDY2IDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNSAyMEgxMk0xOSAyMEgxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMyA1LjI1NjFDMTMuOTYwOCA1Ljc2NTUyIDE0LjY5NyA2Ljk4ODMyIDE0LjkyNTcgOC41MDAyNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class MirrorBrokenIcon extends StatelessWidget {
  /// Creates the `mirror` icon in the broken style.
  const MirrorBrokenIcon({
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
    name: 'mirror',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5 9.5V19C5 19.6491 4.78947 20.2807 4.4 20.8L3.5 22M19 9.5V19C19 19.6491 19.2105 20.2807 19.6 20.8L20.5 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.34141 7C6.12031 7.78195 6 8.62341 6 9.5C6 13.6421 8.68629 17 12 17C15.3137 17 18 13.6421 18 9.5C18 5.35786 15.3137 2 12 2C10.9091 2 9.88613 2.36394 9.00466 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 20H12M19 20H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 5.2561C13.9608 5.76552 14.697 6.98832 14.9257 8.50024" stroke="currentColor" stroke-linecap="round"/>''',
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
