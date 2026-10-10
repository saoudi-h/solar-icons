// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMi44NTcxIDlMMTAgMTJIMTRMMTEuMTQyOSAxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik03IDJIMTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNyAyMkgxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOC45NjE0IDkuMkMxOC44ODQ5IDcuNjY0NTkgMTguNjU2NSA2LjcwNjc0IDE3Ljk3NDkgNi4wMjUxM0MxNi45NDk3IDUgMTUuMjk5OCA1IDEyIDVDOC43MDAxNyA1IDcuMDUwMjUgNSA2LjAyNTEzIDYuMDI1MTNDNSA3LjA1MDI1IDUgOC43MDAxNyA1IDEyQzUgMTUuMjk5OCA1IDE2Ljk0OTcgNi4wMjUxMyAxNy45NzQ5QzcuMDUwMjUgMTkgOC43MDAxNyAxOSAxMiAxOUMxNS4yOTk4IDE5IDE2Ljk0OTcgMTkgMTcuOTc0OSAxNy45NzQ5QzE4Ljc2NzggMTcuMTgxOSAxOC45NDc0IDE2LjAxNTEgMTguOTg4MSAxNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class WatchSquareMinimalisticChargeBrokenIcon extends StatelessWidget {
  /// Creates the `watch-square-minimalistic-charge` icon in the broken style.
  const WatchSquareMinimalisticChargeBrokenIcon({
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
    name: 'watch-square-minimalistic-charge',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.8571 9L10 12H14L11.1429 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 2H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 22H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.9614 9.2C18.8849 7.66459 18.6565 6.70674 17.9749 6.02513C16.9497 5 15.2998 5 12 5C8.70017 5 7.05025 5 6.02513 6.02513C5 7.05025 5 8.70017 5 12C5 15.2998 5 16.9497 6.02513 17.9749C7.05025 19 8.70017 19 12 19C15.2998 19 16.9497 19 17.9749 17.9749C18.7678 17.1819 18.9474 16.0151 18.9881 14" stroke="currentColor" stroke-linecap="round"/>''',
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
