// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-left-from-line` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2Ljc1IDEyQzE2Ljc1IDEyLjQxNDIgMTYuNDE0MiAxMi43NSAxNiAxMi43NUw0LjkzMTY0IDEyLjc1TDcuODgwODYgMTUuNDQ2M0M4LjE4NjQ5IDE1LjcyNTcgOC4yMDggMTYuMjAwMSA3LjkyODcxIDE2LjUwNTlDNy42NDkyOCAxNi44MTE1IDcuMTc0ODUgMTYuODMzIDYuODY5MTQgMTYuNTUzN0wyLjQ5NDE0IDEyLjU1MzdDMi4zMzg3NCAxMi40MTE2IDIuMjUgMTIuMjEwNiAyLjI1IDEyQzIuMjUgMTEuNzg5NCAyLjMzODc0IDExLjU4ODQgMi40OTQxNCAxMS40NDYzTDYuODY5MTQgNy40NDYyOUM3LjE3NDg1IDcuMTY2OTkgNy42NDkyOCA3LjE4ODUxIDcuOTI4NzEgNy40OTQxNEM4LjIwOCA3Ljc5OTg1IDguMTg2NDkgOC4yNzQyOCA3Ljg4MDg2IDguNTUzNzFMNC45MzE2NCAxMS4yNUwxNiAxMS4yNUMxNi40MTQyIDExLjI1IDE2Ljc1IDExLjU4NTggMTYuNzUgMTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMS43NSAyMEMyMS43NSAyMC40MTQyIDIxLjQxNDIgMjAuNzUgMjEgMjAuNzVDMjAuNTg1OCAyMC43NSAyMC4yNSAyMC40MTQyIDIwLjI1IDIwTDIwLjI1IDRDMjAuMjUgMy41ODU3OSAyMC41ODU4IDMuMjUgMjEgMy4yNUMyMS40MTQyIDMuMjUgMjEuNzUgMy41ODU3OSAyMS43NSA0TDIxLjc1IDIwWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowLeftFromLineBoldIcon extends StatelessWidget {
  /// Creates the `arrow-left-from-line` icon in the bold style.
  const ArrowLeftFromLineBoldIcon({
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
    name: 'arrow-left-from-line',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.75 12C16.75 12.4142 16.4142 12.75 16 12.75L4.93164 12.75L7.88086 15.4463C8.18649 15.7257 8.208 16.2001 7.92871 16.5059C7.64928 16.8115 7.17485 16.833 6.86914 16.5537L2.49414 12.5537C2.33874 12.4116 2.25 12.2106 2.25 12C2.25 11.7894 2.33874 11.5884 2.49414 11.4463L6.86914 7.44629C7.17485 7.16699 7.64928 7.18851 7.92871 7.49414C8.208 7.79985 8.18649 8.27428 7.88086 8.55371L4.93164 11.25L16 11.25C16.4142 11.25 16.75 11.5858 16.75 12Z" fill="currentColor"/>
<path d="M21.75 20C21.75 20.4142 21.4142 20.75 21 20.75C20.5858 20.75 20.25 20.4142 20.25 20L20.25 4C20.25 3.58579 20.5858 3.25 21 3.25C21.4142 3.25 21.75 3.58579 21.75 4L21.75 20Z" fill="currentColor"/>''',
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
