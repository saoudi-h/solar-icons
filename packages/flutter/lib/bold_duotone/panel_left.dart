// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-left` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTIwLjgyODQgMTkuODI4NEMyMiAxOC42NTY4IDIyIDE2Ljc3MTIgMjIgMTNMMjIgMTFDMjIgNy4yMjg3MyAyMiA1LjM0MzEyIDIwLjgyODQgNC4xNzE1NEMxOS42NTY5IDIuOTk5OTcgMTcuNzcxMiAyLjk5OTk3IDE0IDIuOTk5OTdMMTAgMi45OTk5N0M5LjkxNTczIDIuOTk5OTcgOS4wODI0IDIuOTk5OTMgOSAyLjk5OTk0TDkgMjAuOTk5OUM5LjA4MjQgMjEgOS45MTU3MyAyMSAxMCAyMUwxNCAyMUMxNy43NzEyIDIxIDE5LjY1NjkgMjEgMjAuODI4NCAxOS44Mjg0WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMiAxMS4wMDAyTDIgMTMuMDAwMkMyIDE2Ljc3MTUgMiAxOC42NTcxIDMuMTcxNTcgMTkuODI4N0M0LjE0NTkgMjAuODAzIDYuMzY0MDkgMjAuOTY3IDkgMjAuOTk0N0w5IDMuMDA1ODNDNi4zNjQwOSAzLjAzMzQ1IDQuMTQ1OSAzLjE5NzQ5IDMuMTcxNTcgNC4xNzE4MkMyIDUuMzQzMzkgMiA3LjIyOTAxIDIgMTEuMDAwMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class PanelLeftBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `panel-left` icon in the boldDuotone style.
  const PanelLeftBoldDuotoneIcon({
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
    name: 'panel-left',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M2 11.0002L2 13.0002C2 16.7715 2 18.6571 3.17157 19.8287C4.1459 20.803 6.36409 20.967 9 20.9947L9 3.00583C6.36409 3.03345 4.1459 3.19749 3.17157 4.17182C2 5.34339 2 7.22901 2 11.0002Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M20.8284 19.8284C22 18.6568 22 16.7712 22 13L22 11C22 7.22873 22 5.34312 20.8284 4.17154C19.6569 2.99997 17.7712 2.99997 14 2.99997L10 2.99997C9.91573 2.99997 9.0824 2.99993 9 2.99994L9 20.9999C9.0824 21 9.91573 21 10 21L14 21C17.7712 21 19.6569 21 20.8284 19.8284Z" fill="currentColor"/>''',
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
