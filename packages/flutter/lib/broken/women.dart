// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `women` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExLjk5OTcgMTZWMTguNU0xMS45OTk3IDE4LjVIOS41TTExLjk5OTcgMTguNUgxNC41TTExLjk5OTcgMTguNUwxMiAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik04LjUgMi45MzY0OEM5LjUyOTYxIDIuMzQwODggMTAuNzI1IDIgMTIgMkMxNS44NjYgMiAxOSA1LjEzNDAxIDE5IDlDMTkgMTIuODY2IDE1Ljg2NiAxNiAxMiAxNkM4LjEzNDAxIDE2IDUgMTIuODY2IDUgOUM1IDcuNzI0OTkgNS4zNDA4OCA2LjUyOTYxIDUuOTM2NDggNS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class WomenBrokenIcon extends StatelessWidget {
  /// Creates the `women` icon in the broken style.
  const WomenBrokenIcon({
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
    name: 'women',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M11.9997 16V18.5M11.9997 18.5H9.5M11.9997 18.5H14.5M11.9997 18.5L12 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8.5 2.93648C9.52961 2.34088 10.725 2 12 2C15.866 2 19 5.13401 19 9C19 12.866 15.866 16 12 16C8.13401 16 5 12.866 5 9C5 7.72499 5.34088 6.52961 5.93648 5.5" stroke="currentColor" stroke-linecap="round"/>''',
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
