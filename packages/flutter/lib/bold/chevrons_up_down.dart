// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNy40Njk3IDE0LjQ2OTdDMTcuNzYyNiAxNC4xNzY4IDE4LjIzNzMgMTQuMTc2OCAxOC41MzAyIDE0LjQ2OTdDMTguODIzIDE0Ljc2MjYgMTguODIzMSAxNS4yMzc0IDE4LjUzMDIgMTUuNTMwMkwxMi41MzAyIDIxLjUzMDJDMTIuMjM3NCAyMS44MjMxIDExLjc2MjYgMjEuODIzIDExLjQ2OTcgMjEuNTMwMkw1LjQ2OTY3IDE1LjUzMDJDNS4xNzY3OCAxNS4yMzczIDUuMTc2NzggMTQuNzYyNiA1LjQ2OTY3IDE0LjQ2OTdDNS43NjI1NiAxNC4xNzY4IDYuMjM3MzIgMTQuMTc2OCA2LjUzMDIyIDE0LjQ2OTdMMTEuOTk5OSAxOS45Mzk0TDE3LjQ2OTcgMTQuNDY5N1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTExLjQ2OTcgMi40Njk2N0MxMS43NjI2IDIuMTc2NzggMTIuMjM3MyAyLjE3Njc4IDEyLjUzMDIgMi40Njk2N0wxOC41MzAyIDguNDY5NjdDMTguODIzIDguNzYyNTcgMTguODIzMSA5LjIzNzM2IDE4LjUzMDIgOS41MzAyMkMxOC4yMzc0IDkuODIzMDcgMTcuNzYyNiA5LjgyMyAxNy40Njk3IDkuNTMwMjJMMTEuOTk5OSA0LjA2MDQ5TDYuNTMwMjIgOS41MzAyMkM2LjIzNzM2IDkuODIzMDcgNS43NjI1NyA5LjgyMyA1LjQ2OTY3IDkuNTMwMjJDNS4xNzY3OCA5LjIzNzMyIDUuMTc2NzggOC43NjI1NiA1LjQ2OTY3IDguNDY5NjdMMTEuNDY5NyAyLjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ChevronsUpDownBoldIcon extends StatelessWidget {
  /// Creates the `chevrons-up-down` icon in the bold style.
  const ChevronsUpDownBoldIcon({
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
    name: 'chevrons-up-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.4697 14.4697C17.7626 14.1768 18.2373 14.1768 18.5302 14.4697C18.823 14.7626 18.8231 15.2374 18.5302 15.5302L12.5302 21.5302C12.2374 21.8231 11.7626 21.823 11.4697 21.5302L5.46967 15.5302C5.17678 15.2373 5.17678 14.7626 5.46967 14.4697C5.76256 14.1768 6.23732 14.1768 6.53022 14.4697L11.9999 19.9394L17.4697 14.4697Z" fill="currentColor"/>
<path d="M11.4697 2.46967C11.7626 2.17678 12.2373 2.17678 12.5302 2.46967L18.5302 8.46967C18.823 8.76257 18.8231 9.23736 18.5302 9.53022C18.2374 9.82307 17.7626 9.823 17.4697 9.53022L11.9999 4.06049L6.53022 9.53022C6.23736 9.82307 5.76257 9.823 5.46967 9.53022C5.17678 9.23732 5.17678 8.76256 5.46967 8.46967L11.4697 2.46967Z" fill="currentColor"/>''',
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
