// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-arrow-right-down` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMC41MzU1IDMuNDY0NDdDMjIgNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyQzIyIDE2LjcxNCAyMiAxOS4wNzExIDIwLjUzNTUgMjAuNTM1NUMxOS4wNzExIDIyIDE2LjcxNCAyMiAxMiAyMkM3LjI4NTk1IDIyIDQuOTI4OTMgMjIgMy40NjQ0NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyQzIgNy4yODU5NSAyIDQuOTI4OTMgMy40NjQ0NyAzLjQ2NDQ3QzQuOTI4OTMgMiA3LjI4NTk1IDIgMTIgMkMxNi43MTQgMiAxOS4wNzExIDIgMjAuNTM1NSAzLjQ2NDQ3Wk0xNC44Mjg0IDE1LjU3ODRDMTUuMjQyNiAxNS41Nzg0IDE1LjU3ODQgMTUuMjQyNiAxNS41Nzg0IDE0LjgyODRMMTUuNTc4NCAxMC41ODU4QzE1LjU3ODQgMTAuMTcxNiAxNS4yNDI2IDkuODM1NzggMTQuODI4NCA5LjgzNTc4QzE0LjQxNDIgOS44MzU3OCAxNC4wNzg0IDEwLjE3MTYgMTQuMDc4NCAxMC41ODU4TDE0LjA3ODQgMTMuMDE3OEw5LjcwMTkgOC42NDEyNEM5LjQwOTAxIDguMzQ4MzUgOC45MzQxMyA4LjM0ODM1IDguNjQxMjQgOC42NDEyNEM4LjM0ODM1IDguOTM0MTQgOC4zNDgzNSA5LjQwOTAxIDguNjQxMjQgOS43MDE5TDEzLjAxNzggMTQuMDc4NEgxMC41ODU4QzEwLjE3MTYgMTQuMDc4NCA5LjgzNTc5IDE0LjQxNDIgOS44MzU3OSAxNC44Mjg0QzkuODM1NzkgMTUuMjQyNiAxMC4xNzE2IDE1LjU3ODQgMTAuNTg1OCAxNS41Nzg0TDE0LjgyODQgMTUuNTc4NFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class SquareArrowRightDownBoldIcon extends StatelessWidget {
  /// Creates the `square-arrow-right-down` icon in the bold style.
  const SquareArrowRightDownBoldIcon({
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
    name: 'square-arrow-right-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447ZM14.8284 15.5784C15.2426 15.5784 15.5784 15.2426 15.5784 14.8284L15.5784 10.5858C15.5784 10.1716 15.2426 9.83578 14.8284 9.83578C14.4142 9.83578 14.0784 10.1716 14.0784 10.5858L14.0784 13.0178L9.7019 8.64124C9.40901 8.34835 8.93413 8.34835 8.64124 8.64124C8.34835 8.93414 8.34835 9.40901 8.64124 9.7019L13.0178 14.0784H10.5858C10.1716 14.0784 9.83579 14.4142 9.83579 14.8284C9.83579 15.2426 10.1716 15.5784 10.5858 15.5784L14.8284 15.5784Z" fill="currentColor"/>''',
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
