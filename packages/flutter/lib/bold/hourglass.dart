// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hourglass` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUuMTk4MjUgMy4yOTkxOEM1LjgwMDQ2IDIgNy44NjY5NyAyIDEyIDJDMTYuMTMzIDIgMTguMTk5NSAyIDE4LjgwMTcgMy4yOTkxOEMxOC44NTM1IDMuNDEwODYgMTguODk3MiAzLjUyNjg2IDE4LjkzMjMgMy42NDYxQzE5LjM0MTQgNS4wMzMzIDE3Ljg4MDIgNi42NDExMSAxNC45NTc3IDkuODU2NzRMMTMgMTJMMTQuOTU3NyAxNC4xNDMzQzE3Ljg4MDIgMTcuMzU4OSAxOS4zNDE0IDE4Ljk2NjcgMTguOTMyMyAyMC4zNTM5QzE4Ljg5NzIgMjAuNDczMSAxOC44NTM1IDIwLjU4OTEgMTguODAxNyAyMC43MDA4QzE4LjE5OTUgMjIgMTYuMTMzIDIyIDEyIDIyQzcuODY2OTcgMjIgNS44MDA0NiAyMiA1LjE5ODI1IDIwLjcwMDhDNS4xNDY0OSAyMC41ODkxIDUuMTAyODIgMjAuNDczMSA1LjA2NzY1IDIwLjM1MzlDNC42NTg1NyAxOC45NjY3IDYuMTE5ODEgMTcuMzU4OSA5LjA0MjMgMTQuMTQzM0wxMSAxMkw5LjA0MjMgOS44NTY3NEM2LjExOTgxIDYuNjQxMTEgNC42NTg1NyA1LjAzMzMgNS4wNjc2NSAzLjY0NjFDNS4xMDI4MiAzLjUyNjg2IDUuMTQ2NDkgMy40MTA4NiA1LjE5ODI1IDMuMjk5MThaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class HourglassBoldIcon extends StatelessWidget {
  /// Creates the `hourglass` icon in the bold style.
  const HourglassBoldIcon({
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
    name: 'hourglass',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.19825 3.29918C5.80046 2 7.86697 2 12 2C16.133 2 18.1995 2 18.8017 3.29918C18.8535 3.41086 18.8972 3.52686 18.9323 3.6461C19.3414 5.0333 17.8802 6.64111 14.9577 9.85674L13 12L14.9577 14.1433C17.8802 17.3589 19.3414 18.9667 18.9323 20.3539C18.8972 20.4731 18.8535 20.5891 18.8017 20.7008C18.1995 22 16.133 22 12 22C7.86697 22 5.80046 22 5.19825 20.7008C5.14649 20.5891 5.10282 20.4731 5.06765 20.3539C4.65857 18.9667 6.11981 17.3589 9.0423 14.1433L11 12L9.0423 9.85674C6.11981 6.64111 4.65857 5.0333 5.06765 3.6461C5.10282 3.52686 5.14649 3.41086 5.19825 3.29918Z" fill="currentColor"/>''',
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
