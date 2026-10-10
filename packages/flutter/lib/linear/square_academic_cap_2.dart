// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-academic-cap-2` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuMDkxOCA2LjYzNjU5TDkuNzgyOTEgMy40OTk2NUMxMS4yMDM5IDIuODMzNDUgMTIuNzk2NCAyLjgzMzQ1IDE0LjIxNzQgMy40OTk2NUwyMC45MDg2IDYuNjM2NjRDMjIuMzY0MSA3LjMxODk5IDIyLjM2NDEgOS42ODEwNSAyMC45MDg2IDEwLjM2MzRMMTQuMjE3NSAxMy41MDAzQzEyLjc5NjUgMTQuMTY2NSAxMS4yMDQgMTQuMTY2NSA5Ljc4MyAxMy41MDAzTDUuMDAwMTkgMTEuMjU4MSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yLjUgMTVWMTIuMTM3NkMyLjUgMTAuODU4NCAyLjUgMTAuMjE4OCAyLjgzMDMyIDkuNzE3ODFDMy4xNjA2NCA5LjIxNjg3IDMuNzQ4NTMgOC45NjQ5MiA0LjkyNDMyIDguNDYxTDYgOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOSAxMS41VjE2LjYyNTRDMTkgMTcuNjMzNCAxOC40OTY1IDE4LjU3NzIgMTcuNjE0NyAxOS4wNjU2QzE2LjE0NjMgMTkuODc4NyAxMy43OTYgMjEgMTIgMjFDMTAuMjA0IDIxIDcuODUzNyAxOS44Nzg3IDYuMzg1MzMgMTkuMDY1NkM1LjUwMzUgMTguNTc3MiA1IDE3LjYzMzQgNSAxNi42MjU0VjExLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class SquareAcademicCap2LinearIcon extends StatelessWidget {
  /// Creates the `square-academic-cap-2` icon in the linear style.
  const SquareAcademicCap2LinearIcon({
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
    name: 'square-academic-cap-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.0918 6.63659L9.78291 3.49965C11.2039 2.83345 12.7964 2.83345 14.2174 3.49965L20.9086 6.63664C22.3641 7.31899 22.3641 9.68105 20.9086 10.3634L14.2175 13.5003C12.7965 14.1665 11.204 14.1665 9.783 13.5003L5.00019 11.2581" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.5 15V12.1376C2.5 10.8584 2.5 10.2188 2.83032 9.71781C3.16064 9.21687 3.74853 8.96492 4.92432 8.461L6 8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 11.5V16.6254C19 17.6334 18.4965 18.5772 17.6147 19.0656C16.1463 19.8787 13.796 21 12 21C10.204 21 7.8537 19.8787 6.38533 19.0656C5.5035 18.5772 5 17.6334 5 16.6254V11.5" stroke="currentColor" stroke-linecap="round"/>''',
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
