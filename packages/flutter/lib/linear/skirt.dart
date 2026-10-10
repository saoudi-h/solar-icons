// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `skirt` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4LjE2MjQgNS41VjRDMTguMTYyNCAzLjA1NzE5IDE4LjE2MjQgMi41ODU3OSAxNy44NjE2IDIuMjkyODlDMTcuNTYwOCAyIDE3LjA3NjYgMiAxNi4xMDgzIDJINy44OTE3QzYuOTIzMzcgMiA2LjQzOTIgMiA2LjEzODM4IDIuMjkyODlDNS44Mzc1NiAyLjU4NTc5IDUuODM3NTYgMy4wNTcxOSA1LjgzNzU2IDRWNS41TTE4LjE2MjQgNS41SDUuODM3NTZNMTguMTYyNCA1LjVMMjEuOTE5MyAxNy45NTI5QzIyLjEzNTMgMTguNjY4NiAyMS45MTc4IDE5LjQzNzkgMjEuMjY1NSAxOS44MjkzQzE5Ljg0MjkgMjAuNjgyOCAxNi44NjAyIDIyIDEyIDIyQzcuMTM5ODIgMjIgNC4xNTcwOSAyMC42ODI4IDIuNzM0NSAxOS44MjkzQzIuMDgyMjIgMTkuNDM3OSAxLjg2NDczIDE4LjY2ODYgMi4wODA2NiAxNy45NTI5TDUuODM3NTYgNS41TTEwIDUuNUw3Ljg5MTcgMjEuNU0xNCA1LjVMMTYuMTA4MyAyMS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SkirtLinearIcon extends StatelessWidget {
  /// Creates the `skirt` icon in the linear style.
  const SkirtLinearIcon({
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
    name: 'skirt',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18.1624 5.5V4C18.1624 3.05719 18.1624 2.58579 17.8616 2.29289C17.5608 2 17.0766 2 16.1083 2H7.8917C6.92337 2 6.4392 2 6.13838 2.29289C5.83756 2.58579 5.83756 3.05719 5.83756 4V5.5M18.1624 5.5H5.83756M18.1624 5.5L21.9193 17.9529C22.1353 18.6686 21.9178 19.4379 21.2655 19.8293C19.8429 20.6828 16.8602 22 12 22C7.13982 22 4.15709 20.6828 2.7345 19.8293C2.08222 19.4379 1.86473 18.6686 2.08066 17.9529L5.83756 5.5M10 5.5L7.8917 21.5M14 5.5L16.1083 21.5" stroke="currentColor" stroke-linecap="round"/>''',
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
