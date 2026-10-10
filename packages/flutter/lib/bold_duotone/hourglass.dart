// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMkM3Ljg2Njk3IDIgNS44MDA0NiAyIDUuMTk4MjUgMy4yOTkxOEM1LjE0NjQ5IDMuNDEwODYgNS4xMDI4MiAzLjUyNjg2IDUuMDY3NjUgMy42NDYxQzQuNjU4NTcgNS4wMzMzIDYuMTE5ODEgNi42NDExMSA5LjA0MjMgOS44NTY3NEwxMSAxMkgxM0wxNC45NTc3IDkuODU2NzRDMTcuODgwMiA2LjY0MTExIDE5LjM0MTQgNS4wMzMzIDE4LjkzMjMgMy42NDYxQzE4Ljg5NzIgMy41MjY4NiAxOC44NTM1IDMuNDEwODYgMTguODAxNyAzLjI5OTE4QzE4LjE5OTUgMiAxNi4xMzMgMiAxMiAyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik01LjE5ODI1IDIwLjcwMDhDNS44MDA0NiAyMiA3Ljg2Njk3IDIyIDEyIDIyQzE2LjEzMyAyMiAxOC4xOTk1IDIyIDE4LjgwMTcgMjAuNzAwOEMxOC44NTM1IDIwLjU4OTEgMTguODk3MiAyMC40NzMxIDE4LjkzMjMgMjAuMzUzOUMxOS4zNDE0IDE4Ljk2NjcgMTcuODgwMiAxNy4zNTg5IDE0Ljk1NzcgMTQuMTQzM0wxMyAxMkgxMUw5LjA0MjMgMTQuMTQzM0M2LjExOTgxIDE3LjM1ODkgNC42NTg1NyAxOC45NjY3IDUuMDY3NjUgMjAuMzUzOUM1LjEwMjgyIDIwLjQ3MzEgNS4xNDY0OSAyMC41ODkxIDUuMTk4MjUgMjAuNzAwOFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class HourglassBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `hourglass` icon in the boldDuotone style.
  const HourglassBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C7.86697 2 5.80046 2 5.19825 3.29918C5.14649 3.41086 5.10282 3.52686 5.06765 3.6461C4.65857 5.0333 6.11981 6.64111 9.0423 9.85674L11 12H13L14.9577 9.85674C17.8802 6.64111 19.3414 5.0333 18.9323 3.6461C18.8972 3.52686 18.8535 3.41086 18.8017 3.29918C18.1995 2 16.133 2 12 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.19825 20.7008C5.80046 22 7.86697 22 12 22C16.133 22 18.1995 22 18.8017 20.7008C18.8535 20.5891 18.8972 20.4731 18.9323 20.3539C19.3414 18.9667 17.8802 17.3589 14.9577 14.1433L13 12H11L9.0423 14.1433C6.11981 17.3589 4.65857 18.9667 5.06765 20.3539C5.10282 20.4731 5.14649 20.5891 5.19825 20.7008Z" fill="currentColor"/>''',
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
