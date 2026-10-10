// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `align-horizontal-spacing` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zIDEuMjVDMy40MTQyMiAxLjI1IDMuNzUgMS41ODU3OSAzLjc1IDJMMy43NSAyMkMzLjc1IDIyLjQxNDIgMy40MTQyMSAyMi43NSAzIDIyLjc1QzIuNTg1NzkgMjIuNzUgMi4yNSAyMi40MTQyIDIuMjUgMjJMMi4yNSAyQzIuMjUgMS41ODU3OSAyLjU4NTc5IDEuMjUgMyAxLjI1Wk0yMSAxLjI1QzIxLjQxNDIgMS4yNSAyMS43NSAxLjU4NTc5IDIxLjc1IDJMMjEuNzUgMjJDMjEuNzUgMjIuNDE0MiAyMS40MTQyIDIyLjc1IDIxIDIyLjc1QzIwLjU4NTggMjIuNzUgMjAuMjUgMjIuNDE0MiAyMC4yNSAyMkwyMC4yNSAyQzIwLjI1IDEuNTg1NzkgMjAuNTg1OCAxLjI1IDIxIDEuMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiA0QzEwLjExNDQgNCA5LjE3MTU3IDQgOC41ODU3OSA0LjU4NTc5QzggNS4xNzE1NyA4IDYuMTE0MzggOCA4VjE2QzggMTcuODg1NiA4IDE4LjgyODQgOC41ODU3OSAxOS40MTQyQzkuMTcxNTcgMjAgMTAuMTE0NCAyMCAxMiAyMEMxMy44ODU2IDIwIDE0LjgyODQgMjAgMTUuNDE0MiAxOS40MTQyQzE2IDE4LjgyODQgMTYgMTcuODg1NiAxNiAxNlY4QzE2IDYuMTE0MzggMTYgNS4xNzE1NyAxNS40MTQyIDQuNTg1NzlDMTQuODI4NCA0IDEzLjg4NTYgNCAxMiA0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class AlignHorizontalSpacingBoldIcon extends StatelessWidget {
  /// Creates the `align-horizontal-spacing` icon in the bold style.
  const AlignHorizontalSpacingBoldIcon({
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
    name: 'align-horizontal-spacing',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3 1.25C3.41422 1.25 3.75 1.58579 3.75 2L3.75 22C3.75 22.4142 3.41421 22.75 3 22.75C2.58579 22.75 2.25 22.4142 2.25 22L2.25 2C2.25 1.58579 2.58579 1.25 3 1.25ZM21 1.25C21.4142 1.25 21.75 1.58579 21.75 2L21.75 22C21.75 22.4142 21.4142 22.75 21 22.75C20.5858 22.75 20.25 22.4142 20.25 22L20.25 2C20.25 1.58579 20.5858 1.25 21 1.25Z" fill="currentColor"/>
<path d="M12 4C10.1144 4 9.17157 4 8.58579 4.58579C8 5.17157 8 6.11438 8 8V16C8 17.8856 8 18.8284 8.58579 19.4142C9.17157 20 10.1144 20 12 20C13.8856 20 14.8284 20 15.4142 19.4142C16 18.8284 16 17.8856 16 16V8C16 6.11438 16 5.17157 15.4142 4.58579C14.8284 4 13.8856 4 12 4Z" fill="currentColor"/>''',
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
