// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `black-hole-2` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSIxMiIgcj0iMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMC4xNDIxIDEwLjM2MjhDMTMuNjg3OCA2LjgxNzA3IDIxLjkxMzkgMTUuNjEwNSAxNi41MjQ0IDIxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1kYXNoYXJyYXk9IjIgMiIvPgo8cGF0aCBkPSJNMTMuODU3OSAxMy42MzcyQzEwLjMxMjIgMTcuMTgyOSAyLjA4NjA5IDguMzg5NTIgNy40NzU2IDMuMDAwMDEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWRhc2hhcnJheT0iMiAyIi8+CjxwYXRoIGQ9Ik0xMC4zNjI4IDEzLjg1NzlDNi44MTcwNyAxMC4zMTIyIDE1LjYxMDUgMi4wODYwOSAyMSA3LjQ3NTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWRhc2hhcnJheT0iMiAyIi8+CjxwYXRoIGQ9Ik0xMy42MzcyIDEwLjE0MjFDMTcuMTgyOSAxMy42ODc4IDguMzg5NTIgMjEuOTEzOSAzLjAwMDAyIDE2LjUyNDQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWRhc2hhcnJheT0iMiAyIi8+Cjwvc3ZnPgo=)
class BlackHole2LinearIcon extends StatelessWidget {
  /// Creates the `black-hole-2` icon in the linear style.
  const BlackHole2LinearIcon({
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
    name: 'black-hole-2',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.1421 10.3628C13.6878 6.81707 21.9139 15.6105 16.5244 21" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M13.8579 13.6372C10.3122 17.1829 2.08609 8.38952 7.4756 3.00001" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M10.3628 13.8579C6.81707 10.3122 15.6105 2.08609 21 7.4756" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M13.6372 10.1421C17.1829 13.6878 8.38952 21.9139 3.00002 16.5244" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>''',
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
