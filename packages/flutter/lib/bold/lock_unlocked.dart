// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `lock-unlocked` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuNzUgOEM2Ljc1IDUuMTAwNTEgOS4xMDA1MSAyLjc1IDEyIDIuNzVDMTQuNDQ1MyAyLjc1IDE2LjUwMTggNC40MjI0MiAxNy4wODQ2IDYuNjg2OTRDMTcuMTg3OSA3LjA4ODA4IDE3LjU5NjggNy4zMjk1NyAxNy45OTc5IDcuMjI2MzNDMTguMzk5MSA3LjEyMzA4IDE4LjY0MDUgNi43MTQyIDE4LjUzNzMgNi4zMTMwNkMxNy43ODggMy40MDE5IDE1LjE0NjMgMS4yNSAxMiAxLjI1QzguMjcyMDggMS4yNSA1LjI1IDQuMjcyMDggNS4yNSA4VjEwLjA1NDZDNC4xMzUyNSAxMC4xMzc5IDMuNDA5MzEgMTAuMzQ4IDIuODc4NjggMTAuODc4N0MyIDExLjc1NzQgMiAxMy4xNzE2IDIgMTZDMiAxOC44Mjg0IDIgMjAuMjQyNiAyLjg3ODY4IDIxLjEyMTNDMy43NTczNiAyMiA1LjE3MTU3IDIyIDggMjJIMTZDMTguODI4NCAyMiAyMC4yNDI2IDIyIDIxLjEyMTMgMjEuMTIxM0MyMiAyMC4yNDI2IDIyIDE4LjgyODQgMjIgMTZDMjIgMTMuMTcxNiAyMiAxMS43NTc0IDIxLjEyMTMgMTAuODc4N0MyMC4yNDI2IDEwIDE4LjgyODQgMTAgMTYgMTBIOEM3LjU0ODQ5IDEwIDcuMTMzMDEgMTAgNi43NSAxMC4wMDM2VjhaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class LockUnlockedBoldIcon extends StatelessWidget {
  /// Creates the `lock-unlocked` icon in the bold style.
  const LockUnlockedBoldIcon({
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
    name: 'lock-unlocked',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M6.75 8C6.75 5.10051 9.10051 2.75 12 2.75C14.4453 2.75 16.5018 4.42242 17.0846 6.68694C17.1879 7.08808 17.5968 7.32957 17.9979 7.22633C18.3991 7.12308 18.6405 6.7142 18.5373 6.31306C17.788 3.4019 15.1463 1.25 12 1.25C8.27208 1.25 5.25 4.27208 5.25 8V10.0546C4.13525 10.1379 3.40931 10.348 2.87868 10.8787C2 11.7574 2 13.1716 2 16C2 18.8284 2 20.2426 2.87868 21.1213C3.75736 22 5.17157 22 8 22H16C18.8284 22 20.2426 22 21.1213 21.1213C22 20.2426 22 18.8284 22 16C22 13.1716 22 11.7574 21.1213 10.8787C20.2426 10 18.8284 10 16 10H8C7.54849 10 7.13301 10 6.75 10.0036V8Z" fill="currentColor"/>''',
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
