// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-arrow-right-up` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMC41MzU1IDIwLjUzNTVDMjIgMTkuMDcxMSAyMiAxNi43MTQgMjIgMTJDMjIgNy4yODU5NSAyMiA0LjkyODkzIDIwLjUzNTUgMy40NjQ0N0MxOS4wNzExIDIgMTYuNzE0IDIgMTIgMkM3LjI4NTk1IDIgNC45Mjg5MyAyIDMuNDY0NDcgMy40NjQ0N0MyIDQuOTI4OTMgMiA3LjI4NTk1IDIgMTJDMiAxNi43MTQgMiAxOS4wNzExIDMuNDY0NDcgMjAuNTM1NUM0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTIgMjJDMTYuNzE0IDIyIDE5LjA3MTEgMjIgMjAuNTM1NSAyMC41MzU1Wk0xNC44Mjg0IDguNDIxNTdDMTUuMjQyNiA4LjQyMTU3IDE1LjU3ODQgOC43NTczNiAxNS41Nzg0IDkuMTcxNTdMMTUuNTc4NCAxMy40MTQyQzE1LjU3ODQgMTMuODI4NCAxNS4yNDI2IDE0LjE2NDIgMTQuODI4NCAxNC4xNjQyQzE0LjQxNDIgMTQuMTY0MiAxNC4wNzg0IDEzLjgyODQgMTQuMDc4NCAxMy40MTQyTDE0LjA3ODQgMTAuOTgyMkw5LjcwMTkgMTUuMzU4OEM5LjQwOTAxIDE1LjY1MTcgOC45MzQxMyAxNS42NTE3IDguNjQxMjQgMTUuMzU4OEM4LjM0ODM1IDE1LjA2NTkgOC4zNDgzNSAxNC41OTEgOC42NDEyNCAxNC4yOTgxTDEzLjAxNzggOS45MjE1N0gxMC41ODU4QzEwLjE3MTYgOS45MjE1NyA5LjgzNTc5IDkuNTg1NzkgOS44MzU3OSA5LjE3MTU3QzkuODM1NzkgOC43NTczNiAxMC4xNzE2IDguNDIxNTcgMTAuNTg1OCA4LjQyMTU3TDE0LjgyODQgOC40MjE1N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class SquareArrowRightUpBoldIcon extends StatelessWidget {
  /// Creates the `square-arrow-right-up` icon in the bold style.
  const SquareArrowRightUpBoldIcon({
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
    name: 'square-arrow-right-up',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355ZM14.8284 8.42157C15.2426 8.42157 15.5784 8.75736 15.5784 9.17157L15.5784 13.4142C15.5784 13.8284 15.2426 14.1642 14.8284 14.1642C14.4142 14.1642 14.0784 13.8284 14.0784 13.4142L14.0784 10.9822L9.7019 15.3588C9.40901 15.6517 8.93413 15.6517 8.64124 15.3588C8.34835 15.0659 8.34835 14.591 8.64124 14.2981L13.0178 9.92157H10.5858C10.1716 9.92157 9.83579 9.58579 9.83579 9.17157C9.83579 8.75736 10.1716 8.42157 10.5858 8.42157L14.8284 8.42157Z" fill="currentColor"/>''',
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
