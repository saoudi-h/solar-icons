// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `shuffle` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTdINS42MDI4NkM3LjI2MjEzIDE3IDguMDkxNzcgMTcgOC43Nzk1MyAxNi42MTA2QzkuNDY3MjggMTYuMjIxMiA5Ljg5NDEzIDE1LjUwOTggMTAuNzQ3OCAxNC4wODdMMTMuMjUyMiA5LjkxMzAzQzE0LjEwNTkgOC40OTAyMSAxNC41MzI3IDcuNzc4OCAxNS4yMjA1IDcuMzg5NEMxNS45MDgyIDcgMTYuNzM3OSA3IDE4LjM5NzEgN0gyMk0yMCA1TDIyIDdMMjAgOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDdINi42Njc2MkM3LjI4Mjk5IDcgNy41OTA2OCA3IDcuODc0NiA3LjA1NTI2QzguNTE0MTcgNy4xNzk3NSA5LjA5NTgyIDcuNTA5MDggOS41MzE2MyA3Ljk5MzQ2QzkuNzI1MDkgOC4yMDg0OCA5Ljg4MzM5IDguNDcyMzIgMTAuMiA5TTIyIDE3SDE3LjMzMjRDMTYuNzE3IDE3IDE2LjQwOTMgMTcgMTYuMTI1NCAxNi45NDQ3QzE1LjQ4NTggMTYuODIwMiAxNC45MDQyIDE2LjQ5MDkgMTQuNDY4NCAxNi4wMDY1QzE0LjI3NDkgMTUuNzkxNSAxNC4xMTY2IDE1LjUyNzcgMTMuOCAxNU0yMCAxOUwyMiAxN0wyMCAxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class ShuffleLinearIcon extends StatelessWidget {
  /// Creates the `shuffle` icon in the linear style.
  const ShuffleLinearIcon({
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
    name: 'shuffle',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 17H5.60286C7.26213 17 8.09177 17 8.77953 16.6106C9.46728 16.2212 9.89413 15.5098 10.7478 14.087L13.2522 9.91303C14.1059 8.49021 14.5327 7.7788 15.2205 7.3894C15.9082 7 16.7379 7 18.3971 7H22M20 5L22 7L20 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 7H6.66762C7.28299 7 7.59068 7 7.8746 7.05526C8.51417 7.17975 9.09582 7.50908 9.53163 7.99346C9.72509 8.20848 9.88339 8.47232 10.2 9M22 17H17.3324C16.717 17 16.4093 17 16.1254 16.9447C15.4858 16.8202 14.9042 16.4909 14.4684 16.0065C14.2749 15.7915 14.1166 15.5277 13.8 15M20 19L22 17L20 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
