// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-back-circle` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMSA4LjA3MTQxTDcuNzc4NDQgMTAuMzcyNUM2LjY2MTc0IDExLjE3MDIgNi42NjE3NCAxMi44Mjk4IDcuNzc4NDQgMTMuNjI3NEwxMSAxNS45Mjg2TTE2LjUgMTUuMDU2OFY4Ljk0MzE3QzE2LjUgOC4xMjk4IDE1LjU4MDYgNy42NTY2NyAxNC45MTg4IDguMTI5NDRMMTAuNjM5MiAxMS4xODYyQzEwLjA4MDkgMTEuNTg1MSAxMC4wODA5IDEyLjQxNDkgMTAuNjM5MiAxMi44MTM3TDE0LjkxODggMTUuODcwNUMxNS41ODA2IDE2LjM0MzMgMTYuNSAxNS44NzAyIDE2LjUgMTUuMDU2OFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class RewindBackCircleLinearIcon extends StatelessWidget {
  /// Creates the `rewind-back-circle` icon in the linear style.
  const RewindBackCircleLinearIcon({
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
    name: 'rewind-back-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 8.07141L7.77844 10.3725C6.66174 11.1702 6.66174 12.8298 7.77844 13.6274L11 15.9286M16.5 15.0568V8.94317C16.5 8.1298 15.5806 7.65667 14.9188 8.12944L10.6392 11.1862C10.0809 11.5851 10.0809 12.4149 10.6392 12.8137L14.9188 15.8705C15.5806 16.3433 16.5 15.8702 16.5 15.0568Z" stroke="currentColor" stroke-linecap="round"/>''',
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
