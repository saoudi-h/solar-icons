// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `multiple-forward-right` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUuOTk5ODYgMTAuMTMwOEM3LjYxMzIgOC45NzY3MSA5LjQ1NDQ4IDguNTcwNzUgMTAuOTk5OCA4LjU3MDc1VjYuMjI2MTZDMTAuOTk5OCA1LjI2ODE3IDEwLjk5OTggNC43ODkxNyAxMS4yOTQ5IDQuNjU2NjJDMTEuNTkwMSA0LjUyNDA3IDExLjk0ODEgNC44NDIzIDEyLjY2NDEgNS40Nzg3NUwxNi42MzY0IDkuMDA5NjhDMTguMjA1IDEwLjQwNCAxOC45ODk0IDExLjEwMTIgMTguOTg5NCAxMS45OTkzQzE4Ljk4OTQgMTIuODk3NSAxOC4yMDUgMTMuNTk0NiAxNi42MzY0IDE0Ljk4OUwxMi42NjQxIDE4LjUxOTlDMTEuOTQ4MSAxOS4xNTYzIDExLjU5MDEgMTkuNDc0NiAxMS4yOTQ5IDE5LjM0MkMxMC45OTk4IDE5LjIwOTUgMTAuOTk5OCAxOC43MzA1IDEwLjk5OTggMTcuNzcyNVYxNS40Mjc5QzcuMzk5NzYgMTUuNDI3OSAzLjQ5OTc2IDE3LjE0MjIgMS45OTk3NiAxOS45OTkzQzEuOTk5NzYgMTcuNTY3NiAyLjM3NzAyIDE1LjYyMSAyLjk5OTg2IDE0LjA3MzUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUuNTM4NiA0LjVMMjAuNzU0OCA5LjM0MzYyQzIxLjU0ODkgMTAuMDgxIDIyLjAwMDEgMTEuMTE1OCAyMi4wMDAxIDEyLjE5OTRDMjIuMDAwMSAxMy4zNDE4IDIxLjQ5ODkgMTQuNDI2NiAyMC42MjkgMTUuMTY3MUwxNS41Mzg2IDE5LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class MultipleForwardRightBrokenIcon extends StatelessWidget {
  /// Creates the `multiple-forward-right` icon in the broken style.
  const MultipleForwardRightBrokenIcon({
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
    name: 'multiple-forward-right',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5.99986 10.1308C7.6132 8.97671 9.45448 8.57075 10.9998 8.57075V6.22616C10.9998 5.26817 10.9998 4.78917 11.2949 4.65662C11.5901 4.52407 11.9481 4.8423 12.6641 5.47875L16.6364 9.00968C18.205 10.404 18.9894 11.1012 18.9894 11.9993C18.9894 12.8975 18.205 13.5946 16.6364 14.989L12.6641 18.5199C11.9481 19.1563 11.5901 19.4746 11.2949 19.342C10.9998 19.2095 10.9998 18.7305 10.9998 17.7725V15.4279C7.39976 15.4279 3.49976 17.1422 1.99976 19.9993C1.99976 17.5676 2.37702 15.621 2.99986 14.0735" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15.5386 4.5L20.7548 9.34362C21.5489 10.081 22.0001 11.1158 22.0001 12.1994C22.0001 13.3418 21.4989 14.4266 20.629 15.1671L15.5386 19.5" stroke="currentColor" stroke-linecap="round"/>''',
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
