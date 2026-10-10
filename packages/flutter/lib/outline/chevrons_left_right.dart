// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevrons-left-right` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTguNDY5NjcgNS40Njk2N0M4Ljc2MjU2IDUuMTc2NzggOS4yMzczMiA1LjE3Njc4IDkuNTMwMjIgNS40Njk2N0M5LjgyMzA1IDUuNzYyNTcgOS44MjMwOSA2LjIzNzM0IDkuNTMwMjIgNi41MzAyMkw0LjA2MDQ5IDExLjk5OTlMOS41MzAyMiAxNy40Njk3QzkuODIzMDUgMTcuNzYyNiA5LjgyMzA5IDE4LjIzNzMgOS41MzAyMiAxOC41MzAyQzkuMjM3MzQgMTguODIzMSA4Ljc2MjU3IDE4LjgyMzEgOC40Njk2NyAxOC41MzAyTDIuNDY5NjcgMTIuNTMwMkMyLjE3Njc4IDEyLjIzNzMgMi4xNzY3OCAxMS43NjI2IDIuNDY5NjcgMTEuNDY5N0w4LjQ2OTY3IDUuNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNC40Njk3IDUuNDY5NjdDMTQuNzYyNiA1LjE3Njc4IDE1LjIzNzMgNS4xNzY3OCAxNS41MzAyIDUuNDY5NjdMMjEuNTMwMiAxMS40Njk3QzIxLjgyMzEgMTEuNzYyNiAyMS44MjMxIDEyLjIzNzMgMjEuNTMwMiAxMi41MzAyTDE1LjUzMDIgMTguNTMwMkMxNS4yMzczIDE4LjgyMzEgMTQuNzYyNiAxOC44MjMxIDE0LjQ2OTcgMTguNTMwMkMxNC4xNzY4IDE4LjIzNzMgMTQuMTc2OCAxNy43NjI2IDE0LjQ2OTcgMTcuNDY5N0wxOS45Mzk0IDExLjk5OTlMMTQuNDY5NyA2LjUzMDIyQzE0LjE3NjggNi4yMzczMiAxNC4xNzY4IDUuNzYyNTYgMTQuNDY5NyA1LjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ChevronsLeftRightOutlineIcon extends StatelessWidget {
  /// Creates the `chevrons-left-right` icon in the outline style.
  const ChevronsLeftRightOutlineIcon({
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
    name: 'chevrons-left-right',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M8.46967 5.46967C8.76256 5.17678 9.23732 5.17678 9.53022 5.46967C9.82305 5.76257 9.82309 6.23734 9.53022 6.53022L4.06049 11.9999L9.53022 17.4697C9.82305 17.7626 9.82309 18.2373 9.53022 18.5302C9.23734 18.8231 8.76257 18.8231 8.46967 18.5302L2.46967 12.5302C2.17678 12.2373 2.17678 11.7626 2.46967 11.4697L8.46967 5.46967Z" fill="currentColor"/>
<path d="M14.4697 5.46967C14.7626 5.17678 15.2373 5.17678 15.5302 5.46967L21.5302 11.4697C21.8231 11.7626 21.8231 12.2373 21.5302 12.5302L15.5302 18.5302C15.2373 18.8231 14.7626 18.8231 14.4697 18.5302C14.1768 18.2373 14.1768 17.7626 14.4697 17.4697L19.9394 11.9999L14.4697 6.53022C14.1768 6.23732 14.1768 5.76256 14.4697 5.46967Z" fill="currentColor"/>''',
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
