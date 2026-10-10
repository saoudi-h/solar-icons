// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04Ljc1IDEwLjI1MTJMMTAuNjA3MSAxMi4yMDEyTDE1LjI1IDcuMzI2MTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMyAxMS4wOTc1VjE2LjA5MDlDMyAxOS4xODc1IDMgMjAuNzM1OCAzLjczNDExIDIxLjQxMjNDNC4wODQyMiAyMS43MzUgNC41MjYxNSAyMS45Mzc3IDQuOTk2OTIgMjEuOTkxNUM1Ljk4NDAyIDIyLjEwNDUgNy4xMzY3NSAyMS4wODQ5IDkuNDQyMTYgMTkuMDQ1OEMxMC40NjEyIDE4LjE0NDUgMTAuOTcwOCAxNy42OTM4IDExLjU2MDMgMTcuNTc1MUMxMS44NTA2IDE3LjUxNjYgMTIuMTQ5NCAxNy41MTY2IDEyLjQzOTcgMTcuNTc1MUMxMy4wMjkyIDE3LjY5MzggMTMuNTM4OCAxOC4xNDQ1IDE0LjU1NzggMTkuMDQ1OEMxNi44NjMzIDIxLjA4NDkgMTguMDE2IDIyLjEwNDUgMTkuMDAzMSAyMS45OTE1QzE5LjQ3MzkgMjEuOTM3NyAxOS45MTU4IDIxLjczNSAyMC4yNjU5IDIxLjQxMjNDMjEgMjAuNzM1OCAyMSAxOS4xODc1IDIxIDE2LjA5MDlWMTEuMDk3NUMyMSA2LjgwODkxIDIxIDQuNjY0NiAxOS42ODIgMy4zMzIzQzE4LjM2NCAyIDE2LjI0MjYgMiAxMiAyQzcuNzU3MzYgMiA1LjYzNjA0IDIgNC4zMTgwMiAzLjMzMjNDMy41MTA4IDQuMTQ4MjcgMy4xOTc5NiA1LjI2ODgxIDMuMDc2NzIgNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BookmarkCheckBrokenIcon extends StatelessWidget {
  /// Creates the `bookmark-check` icon in the broken style.
  const BookmarkCheckBrokenIcon({
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
    name: 'bookmark-check',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8.75 10.2512L10.6071 12.2012L15.25 7.32617" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3 11.0975V16.0909C3 19.1875 3 20.7358 3.73411 21.4123C4.08422 21.735 4.52615 21.9377 4.99692 21.9915C5.98402 22.1045 7.13675 21.0849 9.44216 19.0458C10.4612 18.1445 10.9708 17.6938 11.5603 17.5751C11.8506 17.5166 12.1494 17.5166 12.4397 17.5751C13.0292 17.6938 13.5388 18.1445 14.5578 19.0458C16.8633 21.0849 18.016 22.1045 19.0031 21.9915C19.4739 21.9377 19.9158 21.735 20.2659 21.4123C21 20.7358 21 19.1875 21 16.0909V11.0975C21 6.80891 21 4.6646 19.682 3.3323C18.364 2 16.2426 2 12 2C7.75736 2 5.63604 2 4.31802 3.3323C3.5108 4.14827 3.19796 5.26881 3.07672 7" stroke="currentColor" stroke-linecap="round"/>''',
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
