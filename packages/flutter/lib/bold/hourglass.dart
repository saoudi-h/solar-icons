// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01LjE5ODI1IDMuMjk5MThDNS44MDA0NiAyIDcuODY2OTcgMiAxMiAyQzE2LjEzMyAyIDE4LjE5OTUgMiAxOC44MDE3IDMuMjk5MThDMTguODUzNSAzLjQxMDg2IDE4Ljg5NzIgMy41MjY4NiAxOC45MzIzIDMuNjQ2MUMxOS4zNDE0IDUuMDMzMyAxNy44ODAyIDYuNjQxMTEgMTQuOTU3NyA5Ljg1Njc0TDEzIDEyTDE0Ljk1NzcgMTQuMTQzM0MxNy44ODAyIDE3LjM1ODkgMTkuMzQxNCAxOC45NjY3IDE4LjkzMjMgMjAuMzUzOUMxOC44OTcyIDIwLjQ3MzEgMTguODUzNSAyMC41ODkxIDE4LjgwMTcgMjAuNzAwOEMxOC4xOTk1IDIyIDE2LjEzMyAyMiAxMiAyMkM3Ljg2Njk3IDIyIDUuODAwNDYgMjIgNS4xOTgyNSAyMC43MDA4QzUuMTQ2NDkgMjAuNTg5MSA1LjEwMjgyIDIwLjQ3MzEgNS4wNjc2NSAyMC4zNTM5QzQuNjU4NTcgMTguOTY2NyA2LjExOTgxIDE3LjM1ODkgOS4wNDIzIDE0LjE0MzNMMTEgMTJMOS4wNDIzIDkuODU2NzRDNi4xMTk4MSA2LjY0MTExIDQuNjU4NTcgNS4wMzMzIDUuMDY3NjUgMy42NDYxQzUuMTAyODIgMy41MjY4NiA1LjE0NjQ5IDMuNDEwODYgNS4xOTgyNSAzLjI5OTE4WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
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
