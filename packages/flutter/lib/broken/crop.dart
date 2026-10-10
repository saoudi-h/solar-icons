// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `crop` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTguNSAxMS41QzguNSAxMC4wODU4IDguNSA5LjM3ODY4IDguOTM5MzQgOC45MzkzNEM5LjM3ODY4IDguNSAxMC4wODU4IDguNSAxMS41IDguNUgxMi41QzEzLjkxNDIgOC41IDE0LjYyMTMgOC41IDE1LjA2MDcgOC45MzkzNEMxNS41IDkuMzc4NjggMTUuNSAxMC4wODU4IDE1LjUgMTEuNVYxMi41QzE1LjUgMTMuOTE0MiAxNS41IDE0LjYyMTMgMTUuMDYwNyAxNS4wNjA3QzE0LjYyMTMgMTUuNSAxMy45MTQyIDE1LjUgMTIuNSAxNS41SDExLjVDMTAuMDg1OCAxNS41IDkuMzc4NjggMTUuNSA4LjkzOTM0IDE1LjA2MDdDOC41IDE0LjYyMTMgOC41IDEzLjkxNDIgOC41IDEyLjVWMTEuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgMTlIMTNDOS4yMjg3NiAxOSA3LjM0MzE1IDE5IDYuMTcxNTcgMTcuODI4NEM1LjUxODM5IDE3LjE3NTIgNS4yMjkzNyAxNi4zMDAxIDUuMTAxNDkgMTVNNSAxMVYyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggNUgxMUMxNC43NzEyIDUgMTYuNjU2OSA1IDE3LjgyODQgNi4xNzE1N0MxOC40ODE2IDYuODI0NzUgMTguNzcwNiA3LjY5OTg5IDE4Ljg5ODUgOU0yIDVINU0xOSAxOVYyMk0xOSAxM1YxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class CropBrokenIcon extends StatelessWidget {
  /// Creates the `crop` icon in the broken style.
  const CropBrokenIcon({
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
    name: 'crop',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8.5 11.5C8.5 10.0858 8.5 9.37868 8.93934 8.93934C9.37868 8.5 10.0858 8.5 11.5 8.5H12.5C13.9142 8.5 14.6213 8.5 15.0607 8.93934C15.5 9.37868 15.5 10.0858 15.5 11.5V12.5C15.5 13.9142 15.5 14.6213 15.0607 15.0607C14.6213 15.5 13.9142 15.5 12.5 15.5H11.5C10.0858 15.5 9.37868 15.5 8.93934 15.0607C8.5 14.6213 8.5 13.9142 8.5 12.5V11.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 19H13C9.22876 19 7.34315 19 6.17157 17.8284C5.51839 17.1752 5.22937 16.3001 5.10149 15M5 11V2" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 5H11C14.7712 5 16.6569 5 17.8284 6.17157C18.4816 6.82475 18.7706 7.69989 18.8985 9M2 5H5M19 19V22M19 13V16" stroke="currentColor" stroke-linecap="round"/>''',
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
