// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `multiple-forward-left` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExLjMzNTUgNS40Nzg3NUw3LjM2MzIgOS4wMDk2OEM1Ljc5NDU3IDEwLjQwNCA1LjAxMDI1IDExLjEwMTIgNS4wMTAyNSAxMS45OTkzQzUuMDEwMjUgMTIuODk3NSA1Ljc5NDU3IDEzLjU5NDYgNy4zNjMyIDE0Ljk4OUwxMS4zMzU1IDE4LjUxOTlDMTIuMDUxNSAxOS4xNTYzIDEyLjQwOTUgMTkuNDc0NiAxMi43MDQ3IDE5LjM0MkMxMi45OTk5IDE5LjIwOTUgMTIuOTk5OSAxOC43MzA1IDEyLjk5OTkgMTcuNzcyNVYxNS40Mjc5QzE2LjU5OTkgMTUuNDI3OSAyMC40OTk5IDE3LjE0MjIgMjEuOTk5OSAxOS45OTkzQzIxLjk5OTkgMTAuODU2NSAxNi42NjY1IDguNTcwNzUgMTIuOTk5OSA4LjU3MDc1VjYuMjI2MTZDMTIuOTk5OSA1LjI2ODE3IDEyLjk5OTkgNC43ODkxNyAxMi43MDQ3IDQuNjU2NjJDMTIuNDA5NSA0LjUyNDA3IDEyLjA1MTUgNC44NDIzIDExLjMzNTUgNS40Nzg3NVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNOC40NjE1NCA0LjVMMy4yNDUzMyA5LjM0MzYyQzIuNDUxMjIgMTAuMDgxIDIgMTEuMTE1OCAyIDEyLjE5OTRDMiAxMy4zNDE4IDIuNTAxMjIgMTQuNDI2NiAzLjM3MTEyIDE1LjE2NzFMOC40NjE1NCAxOS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MultipleForwardLeftLinearIcon extends StatelessWidget {
  /// Creates the `multiple-forward-left` icon in the linear style.
  const MultipleForwardLeftLinearIcon({
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
    name: 'multiple-forward-left',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M11.3355 5.47875L7.3632 9.00968C5.79457 10.404 5.01025 11.1012 5.01025 11.9993C5.01025 12.8975 5.79457 13.5946 7.3632 14.989L11.3355 18.5199C12.0515 19.1563 12.4095 19.4746 12.7047 19.342C12.9999 19.2095 12.9999 18.7305 12.9999 17.7725V15.4279C16.5999 15.4279 20.4999 17.1422 21.9999 19.9993C21.9999 10.8565 16.6665 8.57075 12.9999 8.57075V6.22616C12.9999 5.26817 12.9999 4.78917 12.7047 4.65662C12.4095 4.52407 12.0515 4.8423 11.3355 5.47875Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8.46154 4.5L3.24533 9.34362C2.45122 10.081 2 11.1158 2 12.1994C2 13.3418 2.50122 14.4266 3.37112 15.1671L8.46154 19.5" stroke="currentColor" stroke-linecap="round"/>''',
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
