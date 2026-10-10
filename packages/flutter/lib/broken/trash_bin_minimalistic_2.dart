// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `trash-bin-minimalistic-2` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwLjUwMDEgNkgzLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOS4xNzA2NSA0QzkuNTgyNDkgMi44MzQ4MSAxMC42OTM3IDIgMTEuOTk5OSAyQzEzLjMwNjIgMiAxNC40MTc0IDIuODM0ODEgMTQuODI5MiA0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE4LjM3MzUgMTUuMzk5MUMxOC4xOTY1IDE4LjA1NCAxOC4xMDggMTkuMzgxNSAxNy4yNDMgMjAuMTkwN0MxNi4zNzggMjEgMTUuMDQ3NiAyMSAxMi4zODY4IDIxSDExLjYxMzRDOC45NTI2IDIxIDcuNjIyMiAyMSA2Ljc1NzE5IDIwLjE5MDdDNS44OTIxOCAxOS4zODE1IDUuODAzNjggMTguMDU0IDUuNjI2NjkgMTUuMzk5MUw1LjE2Njc1IDguNU0xOC44MzM0IDguNUwxOC42MzM0IDExLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class TrashBinMinimalistic2BrokenIcon extends StatelessWidget {
  /// Creates the `trash-bin-minimalistic-2` icon in the broken style.
  const TrashBinMinimalistic2BrokenIcon({
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
    name: 'trash-bin-minimalistic-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20.5001 6H3.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.17065 4C9.58249 2.83481 10.6937 2 11.9999 2C13.3062 2 14.4174 2.83481 14.8292 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.3735 15.3991C18.1965 18.054 18.108 19.3815 17.243 20.1907C16.378 21 15.0476 21 12.3868 21H11.6134C8.9526 21 7.6222 21 6.75719 20.1907C5.89218 19.3815 5.80368 18.054 5.62669 15.3991L5.16675 8.5M18.8334 8.5L18.6334 11.5" stroke="currentColor" stroke-linecap="round"/>''',
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
