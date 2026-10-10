// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yLjQ2OTY3IDUuNDY5NjdDMi43NjI1NiA1LjE3Njc4IDMuMjM3MzIgNS4xNzY3OCAzLjUzMDIyIDUuNDY5NjdMOS41MzAyMiAxMS40Njk3QzkuODIzMDUgMTEuNzYyNiA5LjgyMzA5IDEyLjIzNzMgOS41MzAyMiAxMi41MzAyTDMuNTMwMjIgMTguNTMwMkMzLjIzNzM0IDE4LjgyMzEgMi43NjI1NyAxOC44MjMxIDIuNDY5NjcgMTguNTMwMkMyLjE3Njc4IDE4LjIzNzMgMi4xNzY3OCAxNy43NjI2IDIuNDY5NjcgMTcuNDY5N0w3LjkzOTQgMTEuOTk5OUwyLjQ2OTY3IDYuNTMwMjJDMi4xNzY3OCA2LjIzNzMyIDIuMTc2NzggNS43NjI1NiAyLjQ2OTY3IDUuNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMC40Njk3IDUuNDY5NjdDMjAuNzYyNiA1LjE3Njc4IDIxLjIzNzMgNS4xNzY3OCAyMS41MzAyIDUuNDY5NjdDMjEuODIzMSA1Ljc2MjU3IDIxLjgyMzEgNi4yMzczNCAyMS41MzAyIDYuNTMwMjJMMTYuMDYwNSAxMS45OTk5TDIxLjUzMDIgMTcuNDY5N0MyMS44MjMxIDE3Ljc2MjYgMjEuODIzMSAxOC4yMzczIDIxLjUzMDIgMTguNTMwMkMyMS4yMzczIDE4LjgyMzEgMjAuNzYyNiAxOC44MjMxIDIwLjQ2OTcgMTguNTMwMkwxNC40Njk3IDEyLjUzMDJDMTQuMTc2OCAxMi4yMzczIDE0LjE3NjggMTEuNzYyNiAxNC40Njk3IDExLjQ2OTdMMjAuNDY5NyA1LjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ChevronsRightLeftBoldIcon extends StatelessWidget {
  /// Creates the `chevrons-right-left` icon in the bold style.
  const ChevronsRightLeftBoldIcon({
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
    name: 'chevrons-right-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M2.46967 5.46967C2.76256 5.17678 3.23732 5.17678 3.53022 5.46967L9.53022 11.4697C9.82305 11.7626 9.82309 12.2373 9.53022 12.5302L3.53022 18.5302C3.23734 18.8231 2.76257 18.8231 2.46967 18.5302C2.17678 18.2373 2.17678 17.7626 2.46967 17.4697L7.9394 11.9999L2.46967 6.53022C2.17678 6.23732 2.17678 5.76256 2.46967 5.46967Z" fill="currentColor"/>
<path d="M20.4697 5.46967C20.7626 5.17678 21.2373 5.17678 21.5302 5.46967C21.8231 5.76257 21.8231 6.23734 21.5302 6.53022L16.0605 11.9999L21.5302 17.4697C21.8231 17.7626 21.8231 18.2373 21.5302 18.5302C21.2373 18.8231 20.7626 18.8231 20.4697 18.5302L14.4697 12.5302C14.1768 12.2373 14.1768 11.7626 14.4697 11.4697L20.4697 5.46967Z" fill="currentColor"/>''',
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
