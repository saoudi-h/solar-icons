// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `broom` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjcyOCA1LjUzNTg3QzE0LjI5MDEgMy45NzM3NyAxNi44MjI3IDMuOTczNyAxOC4zODQ4IDUuNTM1NzkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTguMzg0OCA1LjUzNTY0QzE5Ljk0NjkgNy4wOTc3NCAxOS45NDY5IDkuNjMwNDggMTguMzg0OCAxMS4xOTI2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIwLjUwNjEgMy40MTQwNkwxOC4zODQ4IDUuNTM1MzgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTguMjUyMyAxNS45OTk5QzE4LjE5NjQgMTYuMjQ2NCAxOC4xMzI3IDE2LjQ5NzIgMTguMDYwMiAxNi43NTA4QzE3Ljc4ODQgMTcuNzAxNyAxNy4zNTk5IDE4LjY1ODYgMTYuOTA5MSAxOS41MTI0QzE1Ljk1NTEgMjEuMzE5MyAxMy43NDU3IDIxLjg3OTYgMTIuMDM3MyAyMS4wMDc1TDEwLjk0MDkgMjAuMzQwNkM3LjkzMzUyIDE4LjUxMSA1LjQwOTAzIDE1Ljk4NjUgMy41Nzk1MiAxMi45NzkxTDIuOTEyNjQgMTEuODgyOUMyLjA0MDU5IDEwLjE3NDUgMi42MDA4MyA3Ljk2NTA0IDQuNDA3NzMgNy4wMTEwMUM1LjI2MTUzIDYuNTYwMiA2LjIxODQ2IDYuMTMxNzggNy4xNjkzMyA1Ljg1OTk1QzEwLjAyODggNS4wNDI0OSAxMi41MzQ3IDUuMzQyMjIgMTIuNTM0NyA1LjM0MjIyTDE4LjM4NDggMTEuMTkyNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BroomBrokenIcon extends StatelessWidget {
  /// Creates the `broom` icon in the broken style.
  const BroomBrokenIcon({
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
    name: 'broom',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.728 5.53587C14.2901 3.97377 16.8227 3.9737 18.3848 5.53579" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.3848 5.53564C19.9469 7.09774 19.9469 9.63048 18.3848 11.1926" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.5061 3.41406L18.3848 5.53538" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.2523 15.9999C18.1964 16.2464 18.1327 16.4972 18.0602 16.7508C17.7884 17.7017 17.3599 18.6586 16.9091 19.5124C15.9551 21.3193 13.7457 21.8796 12.0373 21.0075L10.9409 20.3406C7.93352 18.511 5.40903 15.9865 3.57952 12.9791L2.91264 11.8829C2.04059 10.1745 2.60083 7.96504 4.40773 7.01101C5.26153 6.5602 6.21846 6.13178 7.16933 5.85995C10.0288 5.04249 12.5347 5.34222 12.5347 5.34222L18.3848 11.1924" stroke="currentColor" stroke-linecap="round"/>''',
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
