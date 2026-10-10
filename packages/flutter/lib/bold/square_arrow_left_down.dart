// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-arrow-left-down` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjQ2NDQ3IDMuNDY0NDdDMiA0LjkyODkzIDIgNy4yODU5NSAyIDEyQzIgMTYuNzE0IDIgMTkuMDcxMSAzLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyQzE2LjcxNCAyMiAxOS4wNzExIDIyIDIwLjUzNTUgMjAuNTM1NUMyMiAxOS4wNzExIDIyIDE2LjcxNCAyMiAxMkMyMiA3LjI4NTk1IDIyIDQuOTI4OTMgMjAuNTM1NSAzLjQ2NDQ3QzE5LjA3MTEgMiAxNi43MTQgMiAxMiAyQzcuMjg1OTUgMiA0LjkyODkzIDIgMy40NjQ0NyAzLjQ2NDQ3Wk05LjE3MTU3IDE1LjU3ODRDOC43NTczNiAxNS41Nzg0IDguNDIxNTcgMTUuMjQyNiA4LjQyMTU3IDE0LjgyODRMOC40MjE1NyAxMC41ODU4QzguNDIxNTcgMTAuMTcxNiA4Ljc1NzM2IDkuODM1NzggOS4xNzE1NyA5LjgzNTc4QzkuNTg1NzkgOS44MzU3OCA5LjkyMTU3IDEwLjE3MTYgOS45MjE1NyAxMC41ODU4TDkuOTIxNTcgMTMuMDE3OEwxNC4yOTgxIDguNjQxMjRDMTQuNTkxIDguMzQ4MzUgMTUuMDY1OSA4LjM0ODM1IDE1LjM1ODggOC42NDEyNEMxNS42NTE3IDguOTM0MTQgMTUuNjUxNyA5LjQwOTAxIDE1LjM1ODggOS43MDE5TDEwLjk4MjIgMTQuMDc4NEgxMy40MTQyQzEzLjgyODQgMTQuMDc4NCAxNC4xNjQyIDE0LjQxNDIgMTQuMTY0MiAxNC44Mjg0QzE0LjE2NDIgMTUuMjQyNiAxMy44Mjg0IDE1LjU3ODQgMTMuNDE0MiAxNS41Nzg0TDkuMTcxNTcgMTUuNTc4NFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class SquareArrowLeftDownBoldIcon extends StatelessWidget {
  /// Creates the `square-arrow-left-down` icon in the bold style.
  const SquareArrowLeftDownBoldIcon({
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
    name: 'square-arrow-left-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447ZM9.17157 15.5784C8.75736 15.5784 8.42157 15.2426 8.42157 14.8284L8.42157 10.5858C8.42157 10.1716 8.75736 9.83578 9.17157 9.83578C9.58579 9.83578 9.92157 10.1716 9.92157 10.5858L9.92157 13.0178L14.2981 8.64124C14.591 8.34835 15.0659 8.34835 15.3588 8.64124C15.6517 8.93414 15.6517 9.40901 15.3588 9.7019L10.9822 14.0784H13.4142C13.8284 14.0784 14.1642 14.4142 14.1642 14.8284C14.1642 15.2426 13.8284 15.5784 13.4142 15.5784L9.17157 15.5784Z" fill="currentColor"/>''',
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
