// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hourglass-line` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDEyTDkuMDQyMyAxNC45Mjg5QzYuMTE5ODEgMTcuODIzIDQuNjU4NTcgMTkuMjcgNS4wNjc2NSAyMC41MTg1QzUuMTAyODIgMjAuNjI1OCA1LjE0NjQ5IDIwLjczMDIgNS4xOTgyNSAyMC44MzA3QzUuODAwNDYgMjIgNy44NjY5NyAyMiAxMiAyMkMxNi4xMzMgMjIgMTguMTk5NSAyMiAxOC44MDE3IDIwLjgzMDdDMTguODUzNSAyMC43MzAyIDE4Ljg5NzIgMjAuNjI1OCAxOC45MzIzIDIwLjUxODVDMTkuMTYyNSAxOS44MTYgMTguODAwNSAxOS4wNTA2IDE3LjkxOTMgMThNMTIgMTJMMTQuOTU3NyAxNC45Mjg5TTEyIDEyTDE0Ljk1NzcgOS4wNzEwN0MxNy44ODAyIDYuMTc3IDE5LjM0MTQgNC43Mjk5NyAxOC45MzIzIDMuNDgxNDlDMTguODk3MiAzLjM3NDE3IDE4Ljg1MzUgMy4yNjk3NyAxOC44MDE3IDMuMTY5MjZDMTguMTk5NSAyIDE2LjEzMyAyIDEyIDJDNy44NjY5NyAyIDUuODAwNDYgMiA1LjE5ODI1IDMuMTY5MjZDNS4xNDY0OSAzLjI2OTc3IDUuMTAyODIgMy4zNzQxNyA1LjA2NzY1IDMuNDgxNDlDNC44Mzc0NyA0LjE4Mzk5IDUuMTk5NDUgNC45NDkzNSA2LjA4MDczIDZNMTIgMTJMOS4wNDIzIDkuMDcxMDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAgNS41SDE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwIDE4LjVIMTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class HourglassLineBrokenIcon extends StatelessWidget {
  /// Creates the `hourglass-line` icon in the broken style.
  const HourglassLineBrokenIcon({
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
    name: 'hourglass-line',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 12L9.0423 14.9289C6.11981 17.823 4.65857 19.27 5.06765 20.5185C5.10282 20.6258 5.14649 20.7302 5.19825 20.8307C5.80046 22 7.86697 22 12 22C16.133 22 18.1995 22 18.8017 20.8307C18.8535 20.7302 18.8972 20.6258 18.9323 20.5185C19.1625 19.816 18.8005 19.0506 17.9193 18M12 12L14.9577 14.9289M12 12L14.9577 9.07107C17.8802 6.177 19.3414 4.72997 18.9323 3.48149C18.8972 3.37417 18.8535 3.26977 18.8017 3.16926C18.1995 2 16.133 2 12 2C7.86697 2 5.80046 2 5.19825 3.16926C5.14649 3.26977 5.10282 3.37417 5.06765 3.48149C4.83747 4.18399 5.19945 4.94935 6.08073 6M12 12L9.0423 9.07107" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 5.5H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 18.5H14" stroke="currentColor" stroke-linecap="round"/>''',
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
