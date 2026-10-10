// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `lock-keyhole-minimalistic` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik01LjI1IDEwLjA1NDZWOEM1LjI1IDQuMjcyMDggOC4yNzIwOCAxLjI1IDEyIDEuMjVDMTUuNzI3OSAxLjI1IDE4Ljc1IDQuMjcyMDggMTguNzUgOFYxMC4wNTQ2QzE5Ljg2NDggMTAuMTM3OSAyMC41OTA3IDEwLjM0OCAyMS4xMjEzIDEwLjg3ODdDMjIgMTEuNzU3NCAyMiAxMy4xNzE2IDIyIDE2QzIyIDE4LjgyODQgMjIgMjAuMjQyNiAyMS4xMjEzIDIxLjEyMTNDMjAuMjQyNiAyMiAxOC44Mjg0IDIyIDE2IDIySDhDNS4xNzE1NyAyMiAzLjc1NzM2IDIyIDIuODc4NjggMjEuMTIxM0MyIDIwLjI0MjYgMiAxOC44Mjg0IDIgMTZDMiAxMy4xNzE2IDIgMTEuNzU3NCAyLjg3ODY4IDEwLjg3ODdDMy40MDkzMSAxMC4zNDggNC4xMzUyNSAxMC4xMzc5IDUuMjUgMTAuMDU0NlpNNi43NSA4QzYuNzUgNS4xMDA1MSA5LjEwMDUxIDIuNzUgMTIgMi43NUMxNC44OTk1IDIuNzUgMTcuMjUgNS4xMDA1MSAxNy4yNSA4VjEwLjAwMzZDMTYuODY3IDEwIDE2LjQ1MTUgMTAgMTYgMTBIOEM3LjU0ODQ5IDEwIDcuMTMzMDEgMTAgNi43NSAxMC4wMDM2VjhaTTEyIDEzLjI1QzEyLjQxNDIgMTMuMjUgMTIuNzUgMTMuNTg1OCAxMi43NSAxNFYxOEMxMi43NSAxOC40MTQyIDEyLjQxNDIgMTguNzUgMTIgMTguNzVDMTEuNTg1OCAxOC43NSAxMS4yNSAxOC40MTQyIDExLjI1IDE4VjE0QzExLjI1IDEzLjU4NTggMTEuNTg1OCAxMy4yNSAxMiAxMy4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class LockKeyholeMinimalisticBoldIcon extends StatelessWidget {
  /// Creates the `lock-keyhole-minimalistic` icon in the bold style.
  const LockKeyholeMinimalisticBoldIcon({
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
    name: 'lock-keyhole-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M5.25 10.0546V8C5.25 4.27208 8.27208 1.25 12 1.25C15.7279 1.25 18.75 4.27208 18.75 8V10.0546C19.8648 10.1379 20.5907 10.348 21.1213 10.8787C22 11.7574 22 13.1716 22 16C22 18.8284 22 20.2426 21.1213 21.1213C20.2426 22 18.8284 22 16 22H8C5.17157 22 3.75736 22 2.87868 21.1213C2 20.2426 2 18.8284 2 16C2 13.1716 2 11.7574 2.87868 10.8787C3.40931 10.348 4.13525 10.1379 5.25 10.0546ZM6.75 8C6.75 5.10051 9.10051 2.75 12 2.75C14.8995 2.75 17.25 5.10051 17.25 8V10.0036C16.867 10 16.4515 10 16 10H8C7.54849 10 7.13301 10 6.75 10.0036V8ZM12 13.25C12.4142 13.25 12.75 13.5858 12.75 14V18C12.75 18.4142 12.4142 18.75 12 18.75C11.5858 18.75 11.25 18.4142 11.25 18V14C11.25 13.5858 11.5858 13.25 12 13.25Z" fill="currentColor"/>''',
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
