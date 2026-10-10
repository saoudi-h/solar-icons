// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `add-circle` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjc1IDlDMTIuNzUgOC41ODU3OSAxMi40MTQyIDguMjUgMTIgOC4yNUMxMS41ODU4IDguMjUgMTEuMjUgOC41ODU3OSAxMS4yNSA5TDExLjI1IDExLjI1SDlDOC41ODU3OSAxMS4yNSA4LjI1IDExLjU4NTggOC4yNSAxMkM4LjI1IDEyLjQxNDIgOC41ODU3OSAxMi43NSA5IDEyLjc1SDExLjI1VjE1QzExLjI1IDE1LjQxNDIgMTEuNTg1OCAxNS43NSAxMiAxNS43NUMxMi40MTQyIDE1Ljc1IDEyLjc1IDE1LjQxNDIgMTIuNzUgMTVMMTIuNzUgMTIuNzVIMTVDMTUuNDE0MiAxMi43NSAxNS43NSAxMi40MTQyIDE1Ljc1IDEyQzE1Ljc1IDExLjU4NTggMTUuNDE0MiAxMS4yNSAxNSAxMS4yNUgxMi43NVY5WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDEuMjVDNi4wNjI5NCAxLjI1IDEuMjUgNi4wNjI5NCAxLjI1IDEyQzEuMjUgMTcuOTM3MSA2LjA2Mjk0IDIyLjc1IDEyIDIyLjc1QzE3LjkzNzEgMjIuNzUgMjIuNzUgMTcuOTM3MSAyMi43NSAxMkMyMi43NSA2LjA2Mjk0IDE3LjkzNzEgMS4yNSAxMiAxLjI1Wk0yLjc1IDEyQzIuNzUgNi44OTEzNyA2Ljg5MTM3IDIuNzUgMTIgMi43NUMxNy4xMDg2IDIuNzUgMjEuMjUgNi44OTEzNyAyMS4yNSAxMkMyMS4yNSAxNy4xMDg2IDE3LjEwODYgMjEuMjUgMTIgMjEuMjVDNi44OTEzNyAyMS4yNSAyLjc1IDE3LjEwODYgMi43NSAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class AddCircleOutlineIcon extends StatelessWidget {
  /// Creates the `add-circle` icon in the outline style.
  const AddCircleOutlineIcon({
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
    name: 'add-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.75 9C12.75 8.58579 12.4142 8.25 12 8.25C11.5858 8.25 11.25 8.58579 11.25 9L11.25 11.25H9C8.58579 11.25 8.25 11.5858 8.25 12C8.25 12.4142 8.58579 12.75 9 12.75H11.25V15C11.25 15.4142 11.5858 15.75 12 15.75C12.4142 15.75 12.75 15.4142 12.75 15L12.75 12.75H15C15.4142 12.75 15.75 12.4142 15.75 12C15.75 11.5858 15.4142 11.25 15 11.25H12.75V9Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25ZM2.75 12C2.75 6.89137 6.89137 2.75 12 2.75C17.1086 2.75 21.25 6.89137 21.25 12C21.25 17.1086 17.1086 21.25 12 21.25C6.89137 21.25 2.75 17.1086 2.75 12Z" fill="currentColor"/>''',
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
