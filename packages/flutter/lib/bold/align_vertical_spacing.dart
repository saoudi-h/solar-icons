// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMS4yNSAyMUMxLjI1IDIwLjU4NTggMS41ODU3OSAyMC4yNSAyIDIwLjI1TDIyIDIwLjI1QzIyLjQxNDIgMjAuMjUgMjIuNzUgMjAuNTg1OCAyMi43NSAyMUMyMi43NSAyMS40MTQyIDIyLjQxNDIgMjEuNzUgMjIgMjEuNzVMMiAyMS43NUMxLjU4NTc5IDIxLjc1IDEuMjUgMjEuNDE0MiAxLjI1IDIxWk0xLjI1IDNDMS4yNSAyLjU4NTc5IDEuNTg1NzkgMi4yNSAyIDIuMjVMMjIgMi4yNUMyMi40MTQyIDIuMjUgMjIuNzUgMi41ODU3OSAyMi43NSAzQzIyLjc1IDMuNDE0MjEgMjIuNDE0MiAzLjc1IDIyIDMuNzVMMiAzLjc1QzEuNTg1NzkgMy43NSAxLjI1IDMuNDE0MjEgMS4yNSAzWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNNCAxMkM0IDEzLjg4NTYgNCAxNC44Mjg0IDQuNTg1NzkgMTUuNDE0MkM1LjE3MTU3IDE2IDYuMTE0MzggMTYgOCAxNkwxNiAxNkMxNy44ODU2IDE2IDE4LjgyODQgMTYgMTkuNDE0MiAxNS40MTQyQzIwIDE0LjgyODQgMjAgMTMuODg1NiAyMCAxMkMyMCAxMC4xMTQ0IDIwIDkuMTcxNTcgMTkuNDE0MiA4LjU4NTc5QzE4LjgyODQgOCAxNy44ODU2IDggMTYgOEg4QzYuMTE0MzggOCA1LjE3MTU3IDggNC41ODU3OSA4LjU4NTc5QzQgOS4xNzE1OCA0IDEwLjExNDQgNCAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class AlignVerticalSpacingBoldIcon extends StatelessWidget {
  /// Creates the `align-vertical-spacing` icon in the bold style.
  const AlignVerticalSpacingBoldIcon({
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
    name: 'align-vertical-spacing',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M1.25 21C1.25 20.5858 1.58579 20.25 2 20.25L22 20.25C22.4142 20.25 22.75 20.5858 22.75 21C22.75 21.4142 22.4142 21.75 22 21.75L2 21.75C1.58579 21.75 1.25 21.4142 1.25 21ZM1.25 3C1.25 2.58579 1.58579 2.25 2 2.25L22 2.25C22.4142 2.25 22.75 2.58579 22.75 3C22.75 3.41421 22.4142 3.75 22 3.75L2 3.75C1.58579 3.75 1.25 3.41421 1.25 3Z" fill="currentColor"/>
<path d="M4 12C4 13.8856 4 14.8284 4.58579 15.4142C5.17157 16 6.11438 16 8 16L16 16C17.8856 16 18.8284 16 19.4142 15.4142C20 14.8284 20 13.8856 20 12C20 10.1144 20 9.17157 19.4142 8.58579C18.8284 8 17.8856 8 16 8H8C6.11438 8 5.17157 8 4.58579 8.58579C4 9.17158 4 10.1144 4 12Z" fill="currentColor"/>''',
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
