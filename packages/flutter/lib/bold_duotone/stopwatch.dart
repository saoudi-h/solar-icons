// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDIzQzE2Ljk3MDYgMjMgMjEgMTguOTcwNiAyMSAxNEMyMSA5LjAyOTQ0IDE2Ljk3MDYgNSAxMiA1QzcuMDI5NDQgNSAzIDkuMDI5NDQgMyAxNEMzIDE4Ljk3MDYgNy4wMjk0NCAyMyAxMiAyM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyIDkuMjVDMTIuNDE0MiA5LjI1IDEyLjc1IDkuNTg1NzkgMTIuNzUgMTBWMTRDMTIuNzUgMTQuNDE0MiAxMi40MTQyIDE0Ljc1IDEyIDE0Ljc1QzExLjU4NTggMTQuNzUgMTEuMjUgMTQuNDE0MiAxMS4yNSAxNFYxMEMxMS4yNSA5LjU4NTc5IDExLjU4NTggOS4yNSAxMiA5LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTQgMkMxNC40MTQyIDIgMTQuNzUgMi4zMzU3OSAxNC43NSAyLjc1QzE0Ljc1IDMuMTY0MjEgMTQuNDE0MiAzLjUgMTQgMy41SDEwQzkuNTg1NzkgMy41IDkuMjUgMy4xNjQyMSA5LjI1IDIuNzVDOS4yNSAyLjMzNTc5IDkuNTg1NzkgMiAxMCAySDE0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class StopwatchBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `stopwatch` icon in the boldDuotone style.
  const StopwatchBoldDuotoneIcon({
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
    name: 'stopwatch',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 9.25C12.4142 9.25 12.75 9.58579 12.75 10V14C12.75 14.4142 12.4142 14.75 12 14.75C11.5858 14.75 11.25 14.4142 11.25 14V10C11.25 9.58579 11.5858 9.25 12 9.25Z" fill="currentColor"/>
<path d="M14 2C14.4142 2 14.75 2.33579 14.75 2.75C14.75 3.16421 14.4142 3.5 14 3.5H10C9.58579 3.5 9.25 3.16421 9.25 2.75C9.25 2.33579 9.58579 2 10 2H14Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 23C16.9706 23 21 18.9706 21 14C21 9.02944 16.9706 5 12 5C7.02944 5 3 9.02944 3 14C3 18.9706 7.02944 23 12 23Z" fill="currentColor"/>''',
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
