// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-left` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMC44Mjg0IDE5LjgyODRDMjIgMTguNjU2OSAyMiAxNi43NzEyIDIyIDEzTDIyIDExQzIyIDcuMjI4NzYgMjIgNS4zNDMxNSAyMC44Mjg0IDQuMTcxNTdDMTkuNjU2OSAzIDE3Ljc3MTIgMyAxNCAzTDEwIDNDOS45MTU3MyAzIDkuODMyNCAyLjk5OTk5IDkuNzUgM0w5Ljc1IDIxQzkuODMyNCAyMSA5LjkxNTczIDIxIDEwIDIxTDE0IDIxQzE3Ljc3MTIgMjEgMTkuNjU2OSAyMSAyMC44Mjg0IDE5LjgyODRaTTguMjUgMjAuOTk0NEw4LjI1IDMuMDA1NTlDNS42MTQwOSAzLjAzMzIxIDQuMTQ1OTEgMy4xOTcyNCAzLjE3MTU4IDQuMTcxNTdDMiA1LjM0MzE0IDIgNy4yMjg3NiAyIDExTDIgMTNDMiAxNi43NzEyIDIgMTguNjU2OSAzLjE3MTU3IDE5LjgyODRDNC4xNDU5IDIwLjgwMjggNS42MTQwOSAyMC45NjY4IDguMjUgMjAuOTk0NFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class PanelLeftBoldIcon extends StatelessWidget {
  /// Creates the `panel-left` icon in the bold style.
  const PanelLeftBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M20.8284 19.8284C22 18.6569 22 16.7712 22 13L22 11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3L10 3C9.91573 3 9.8324 2.99999 9.75 3L9.75 21C9.8324 21 9.91573 21 10 21L14 21C17.7712 21 19.6569 21 20.8284 19.8284ZM8.25 20.9944L8.25 3.00559C5.61409 3.03321 4.14591 3.19724 3.17158 4.17157C2 5.34314 2 7.22876 2 11L2 13C2 16.7712 2 18.6569 3.17157 19.8284C4.1459 20.8028 5.61409 20.9668 8.25 20.9944Z" fill="currentColor"/>''',
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
