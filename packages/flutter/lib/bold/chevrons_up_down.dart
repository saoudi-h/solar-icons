// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevrons-up-down` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjQ2OTcgMTQuNDY5N0MxNy43NjI2IDE0LjE3NjggMTguMjM3MyAxNC4xNzY4IDE4LjUzMDIgMTQuNDY5N0MxOC44MjMgMTQuNzYyNiAxOC44MjMxIDE1LjIzNzQgMTguNTMwMiAxNS41MzAyTDEyLjUzMDIgMjEuNTMwMkMxMi4yMzc0IDIxLjgyMzEgMTEuNzYyNiAyMS44MjMgMTEuNDY5NyAyMS41MzAyTDUuNDY5NjcgMTUuNTMwMkM1LjE3Njc4IDE1LjIzNzMgNS4xNzY3OCAxNC43NjI2IDUuNDY5NjcgMTQuNDY5N0M1Ljc2MjU2IDE0LjE3NjggNi4yMzczMiAxNC4xNzY4IDYuNTMwMjIgMTQuNDY5N0wxMS45OTk5IDE5LjkzOTRMMTcuNDY5NyAxNC40Njk3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTEuNDY5NyAyLjQ2OTY3QzExLjc2MjYgMi4xNzY3OCAxMi4yMzczIDIuMTc2NzggMTIuNTMwMiAyLjQ2OTY3TDE4LjUzMDIgOC40Njk2N0MxOC44MjMgOC43NjI1NyAxOC44MjMxIDkuMjM3MzYgMTguNTMwMiA5LjUzMDIyQzE4LjIzNzQgOS44MjMwNyAxNy43NjI2IDkuODIzIDE3LjQ2OTcgOS41MzAyMkwxMS45OTk5IDQuMDYwNDlMNi41MzAyMiA5LjUzMDIyQzYuMjM3MzYgOS44MjMwNyA1Ljc2MjU3IDkuODIzIDUuNDY5NjcgOS41MzAyMkM1LjE3Njc4IDkuMjM3MzIgNS4xNzY3OCA4Ljc2MjU2IDUuNDY5NjcgOC40Njk2N0wxMS40Njk3IDIuNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
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
