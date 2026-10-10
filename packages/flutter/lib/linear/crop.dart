// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `crop` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDE5SDEzQzkuMjI4NzYgMTkgNy4zNDMxNSAxOSA2LjE3MTU3IDE3LjgyODRDNSAxNi42NTY5IDUgMTQuNzcxMiA1IDExVjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCA1SDExQzE0Ljc3MTIgNSAxNi42NTY5IDUgMTcuODI4NCA2LjE3MTU3QzE5IDcuMzQzMTUgMTkgOS4yMjg3NiAxOSAxM1YxNk0yIDVINU0xOSAxOVYyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04LjUgMTEuNUM4LjUgMTAuMDg1OCA4LjUgOS4zNzg2OCA4LjkzOTM0IDguOTM5MzRDOS4zNzg2OCA4LjUgMTAuMDg1OCA4LjUgMTEuNSA4LjVIMTIuNUMxMy45MTQyIDguNSAxNC42MjEzIDguNSAxNS4wNjA3IDguOTM5MzRDMTUuNSA5LjM3ODY4IDE1LjUgMTAuMDg1OCAxNS41IDExLjVWMTIuNUMxNS41IDEzLjkxNDIgMTUuNSAxNC42MjEzIDE1LjA2MDcgMTUuMDYwN0MxNC42MjEzIDE1LjUgMTMuOTE0MiAxNS41IDEyLjUgMTUuNUgxMS41QzEwLjA4NTggMTUuNSA5LjM3ODY4IDE1LjUgOC45MzkzNCAxNS4wNjA3QzguNSAxNC42MjEzIDguNSAxMy45MTQyIDguNSAxMi41VjExLjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class CropLinearIcon extends StatelessWidget {
  /// Creates the `crop` icon in the linear style.
  const CropLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 19H13C9.22876 19 7.34315 19 6.17157 17.8284C5 16.6569 5 14.7712 5 11V2" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 5H11C14.7712 5 16.6569 5 17.8284 6.17157C19 7.34315 19 9.22876 19 13V16M2 5H5M19 19V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 11.5C8.5 10.0858 8.5 9.37868 8.93934 8.93934C9.37868 8.5 10.0858 8.5 11.5 8.5H12.5C13.9142 8.5 14.6213 8.5 15.0607 8.93934C15.5 9.37868 15.5 10.0858 15.5 11.5V12.5C15.5 13.9142 15.5 14.6213 15.0607 15.0607C14.6213 15.5 13.9142 15.5 12.5 15.5H11.5C10.0858 15.5 9.37868 15.5 8.93934 15.0607C8.5 14.6213 8.5 13.9142 8.5 12.5V11.5Z" stroke="currentColor" stroke-linecap="round"/>''',
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
