// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `lock-keyhole-unlocked` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik02Ljc1IDhDNi43NSA1LjEwMDUxIDkuMTAwNTEgMi43NSAxMiAyLjc1QzE0LjQ0NTMgMi43NSAxNi41MDE4IDQuNDIyNDIgMTcuMDg0NiA2LjY4Njk0QzE3LjE4NzkgNy4wODgwOCAxNy41OTY4IDcuMzI5NTcgMTcuOTk3OSA3LjIyNjMzQzE4LjM5OTEgNy4xMjMwOCAxOC42NDA1IDYuNzE0MiAxOC41MzczIDYuMzEzMDZDMTcuNzg4IDMuNDAxOSAxNS4xNDYzIDEuMjUgMTIgMS4yNUM4LjI3MjA4IDEuMjUgNS4yNSA0LjI3MjA4IDUuMjUgOFYxMC4wNTQ2QzQuMTM1MjUgMTAuMTM3OSAzLjQwOTMxIDEwLjM0OCAyLjg3ODY4IDEwLjg3ODdDMiAxMS43NTc0IDIgMTMuMTcxNiAyIDE2QzIgMTguODI4NCAyIDIwLjI0MjYgMi44Nzg2OCAyMS4xMjEzQzMuNzU3MzYgMjIgNS4xNzE1NyAyMiA4IDIySDE2QzE4LjgyODQgMjIgMjAuMjQyNiAyMiAyMS4xMjEzIDIxLjEyMTNDMjIgMjAuMjQyNiAyMiAxOC44Mjg0IDIyIDE2QzIyIDEzLjE3MTYgMjIgMTEuNzU3NCAyMS4xMjEzIDEwLjg3ODdDMjAuMjQyNiAxMCAxOC44Mjg0IDEwIDE2IDEwSDhDNy41NDg0OSAxMCA3LjEzMzAxIDEwIDYuNzUgMTAuMDAzNlY4Wk0xNCAxNkMxNCAxNy4xMDQ2IDEzLjEwNDYgMTggMTIgMThDMTAuODk1NCAxOCAxMCAxNy4xMDQ2IDEwIDE2QzEwIDE0Ljg5NTQgMTAuODk1NCAxNCAxMiAxNEMxMy4xMDQ2IDE0IDE0IDE0Ljg5NTQgMTQgMTZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class LockKeyholeUnlockedBoldIcon extends StatelessWidget {
  /// Creates the `lock-keyhole-unlocked` icon in the bold style.
  const LockKeyholeUnlockedBoldIcon({
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
    name: 'lock-keyhole-unlocked',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.75 8C6.75 5.10051 9.10051 2.75 12 2.75C14.4453 2.75 16.5018 4.42242 17.0846 6.68694C17.1879 7.08808 17.5968 7.32957 17.9979 7.22633C18.3991 7.12308 18.6405 6.7142 18.5373 6.31306C17.788 3.4019 15.1463 1.25 12 1.25C8.27208 1.25 5.25 4.27208 5.25 8V10.0546C4.13525 10.1379 3.40931 10.348 2.87868 10.8787C2 11.7574 2 13.1716 2 16C2 18.8284 2 20.2426 2.87868 21.1213C3.75736 22 5.17157 22 8 22H16C18.8284 22 20.2426 22 21.1213 21.1213C22 20.2426 22 18.8284 22 16C22 13.1716 22 11.7574 21.1213 10.8787C20.2426 10 18.8284 10 16 10H8C7.54849 10 7.13301 10 6.75 10.0036V8ZM14 16C14 17.1046 13.1046 18 12 18C10.8954 18 10 17.1046 10 16C10 14.8954 10.8954 14 12 14C13.1046 14 14 14.8954 14 16Z" fill="currentColor"/>''',
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
