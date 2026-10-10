// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `multiple-forward-left` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExLjMzNTcgNS40Nzg3NUw3LjM2MzQ0IDkuMDA5NjhDNS43OTQ4MiAxMC40MDQgNS4wMTA1IDExLjEwMTIgNS4wMTA1IDExLjk5OTNDNS4wMTA1IDEyLjg5NzUgNS43OTQ4MSAxMy41OTQ2IDcuMzYzNDQgMTQuOTg5TDExLjMzNTcgMTguNTE5OUMxMi4wNTE3IDE5LjE1NjMgMTIuNDA5OCAxOS40NzQ2IDEyLjcwNDkgMTkuMzQyQzEzLjAwMDEgMTkuMjA5NSAxMy4wMDAxIDE4LjczMDUgMTMuMDAwMSAxNy43NzI1VjE1LjQyNzlDMTYuNjAwMSAxNS40Mjc5IDIwLjUwMDEgMTcuMTQyMiAyMi4wMDAxIDE5Ljk5OTNDMjIuMDAwMSAxMC44NTY1IDE2LjY2NjggOC41NzA3NSAxMy4wMDAxIDguNTcwNzVWNi4yMjYxNkMxMy4wMDAxIDUuMjY4MTcgMTMuMDAwMSA0Ljc4OTE3IDEyLjcwNDkgNC42NTY2MkMxMi40MDk4IDQuNTI0MDcgMTIuMDUxNyA0Ljg0MjMgMTEuMzM1NyA1LjQ3ODc1WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTguNDYxMjkgNC41TDMuMjQ1MDkgOS4zNDM2MkMyLjQ1MDk4IDEwLjA4MSAxLjk5OTc2IDExLjExNTggMS45OTk3NiAxMi4xOTk0QzEuOTk5NzYgMTMuMzQxOCAyLjUwMDk3IDE0LjQyNjYgMy4zNzA4NyAxNS4xNjcxTDguNDYxMjkgMTkuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class MultipleForwardLeftLineDuotoneIcon extends StatelessWidget {
  /// Creates the `multiple-forward-left` icon in the lineDuotone style.
  const MultipleForwardLeftLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11.3357 5.47875L7.36344 9.00968C5.79482 10.404 5.0105 11.1012 5.0105 11.9993C5.0105 12.8975 5.79481 13.5946 7.36344 14.989L11.3357 18.5199C12.0517 19.1563 12.4098 19.4746 12.7049 19.342C13.0001 19.2095 13.0001 18.7305 13.0001 17.7725V15.4279C16.6001 15.4279 20.5001 17.1422 22.0001 19.9993C22.0001 10.8565 16.6668 8.57075 13.0001 8.57075V6.22616C13.0001 5.26817 13.0001 4.78917 12.7049 4.65662C12.4098 4.52407 12.0517 4.8423 11.3357 5.47875Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.46129 4.5L3.24509 9.34362C2.45098 10.081 1.99976 11.1158 1.99976 12.1994C1.99976 13.3418 2.50097 14.4266 3.37087 15.1671L8.46129 19.5" stroke="currentColor" stroke-linecap="round"/>''',
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
