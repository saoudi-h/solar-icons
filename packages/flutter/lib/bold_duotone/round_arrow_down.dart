// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIyIDEyQzIyIDE3LjUyMjggMTcuNTIyOCAyMiAxMiAyMkM2LjQ3NzE1IDIyIDIgMTcuNTIyOCAyIDEyQzIgNi40NzcxNSA2LjQ3NzE1IDIgMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTguNDY5NjcgMTMuNTMwM0M4LjE3Njc4IDEzLjIzNzQgOC4xNzY3OCAxMi43NjI2IDguNDY5NjcgMTIuNDY5N0M4Ljc2MjU2IDEyLjE3NjggOS4yMzc0NCAxMi4xNzY4IDkuNTMwMzMgMTIuNDY5N0wxMS4yNSAxNC4xODkzTDExLjI1IDhDMTEuMjUgNy41ODU3OSAxMS41ODU4IDcuMjUgMTIgNy4yNUMxMi40MTQyIDcuMjUgMTIuNzUgNy41ODU3OSAxMi43NSA4VjE0LjE4OTNMMTQuNDY5NyAxMi40Njk3QzE0Ljc2MjYgMTIuMTc2OCAxNS4yMzc0IDEyLjE3NjggMTUuNTMwMyAxMi40Njk3QzE1LjgyMzIgMTIuNzYyNiAxNS44MjMyIDEzLjIzNzQgMTUuNTMwMyAxMy41MzAzTDEyLjUzMDMgMTYuNTMwM0MxMi4yMzc0IDE2LjgyMzIgMTEuNzYyNiAxNi44MjMyIDExLjQ2OTcgMTYuNTMwM0w4LjQ2OTY3IDEzLjUzMDNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RoundArrowDownBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-arrow-down` icon in the boldDuotone style.
  const RoundArrowDownBoldDuotoneIcon({
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
    name: 'round-arrow-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.46967 13.5303C8.17678 13.2374 8.17678 12.7626 8.46967 12.4697C8.76256 12.1768 9.23744 12.1768 9.53033 12.4697L11.25 14.1893L11.25 8C11.25 7.58579 11.5858 7.25 12 7.25C12.4142 7.25 12.75 7.58579 12.75 8V14.1893L14.4697 12.4697C14.7626 12.1768 15.2374 12.1768 15.5303 12.4697C15.8232 12.7626 15.8232 13.2374 15.5303 13.5303L12.5303 16.5303C12.2374 16.8232 11.7626 16.8232 11.4697 16.5303L8.46967 13.5303Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" fill="currentColor"/>''',
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
