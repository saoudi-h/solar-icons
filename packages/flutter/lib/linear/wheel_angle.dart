// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wheel-angle` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTcuNSAyMkM5Ljk4NTI4IDIyIDEyIDE3LjUyMjggMTIgMTJDMTIgNi40NzcxNSA5Ljk4NTI4IDIgNy41IDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSAxMkM5IDE1LjMxMzcgOC4zMjg0MyAxOCA3LjUgMThDNi42NzE1NyAxOCA2IDE1LjMxMzcgNiAxMkM2IDguNjg2MjkgNi42NzE1NyA2IDcuNSA2QzguMzI4NDMgNiA5IDguNjg2MjkgOSAxMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNy41IDIyQzkuOTg1MjggMjIgMTIgMTcuNTIyOCAxMiAxMkMxMiA2LjQ3NzE1IDkuOTg1MjggMiA3LjUgMk03LjUgMjJDNS4wMTQ3MiAyMiAzIDE3LjUyMjggMyAxMkMzIDYuNDc3MTUgNS4wMTQ3MiAyIDcuNSAyTTcuNSAyMkgxNi41QzE4Ljk4NTMgMjIgMjEgMTcuNTIyOCAyMSAxMkMyMSA2LjQ3NzE1IDE4Ljk4NTMgMiAxNi41IDJINy41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkgMTJIOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class WheelAngleLinearIcon extends StatelessWidget {
  /// Creates the `wheel-angle` icon in the linear style.
  const WheelAngleLinearIcon({
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
    name: 'wheel-angle',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M7.5 22C9.98528 22 12 17.5228 12 12C12 6.47715 9.98528 2 7.5 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 12C9 15.3137 8.32843 18 7.5 18C6.67157 18 6 15.3137 6 12C6 8.68629 6.67157 6 7.5 6C8.32843 6 9 8.68629 9 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.5 22C9.98528 22 12 17.5228 12 12C12 6.47715 9.98528 2 7.5 2M7.5 22C5.01472 22 3 17.5228 3 12C3 6.47715 5.01472 2 7.5 2M7.5 22H16.5C18.9853 22 21 17.5228 21 12C21 6.47715 18.9853 2 16.5 2H7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 12H8" stroke="currentColor" stroke-linecap="round"/>''',
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
