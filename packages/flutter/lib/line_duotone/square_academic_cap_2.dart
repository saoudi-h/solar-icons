// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zLjA5MTU1IDYuNjM2NTlMOS43ODI2NyAzLjQ5OTY1QzExLjIwMzcgMi44MzM0NSAxMi43OTYxIDIuODMzNDUgMTQuMjE3MSAzLjQ5OTY1TDIwLjkwODMgNi42MzY2NEMyMi4zNjM4IDcuMzE4OTkgMjIuMzYzOCA5LjY4MTA1IDIwLjkwODMgMTAuMzYzNEwxNC4yMTcyIDEzLjUwMDNDMTIuNzk2MiAxNC4xNjY1IDExLjIwMzggMTQuMTY2NSA5Ljc4Mjc1IDEzLjUwMDNMNC45OTk5NSAxMS4yNTgxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMi41IDE1VjEyLjEzNzZDMi41IDEwLjg1ODQgMi41IDEwLjIxODggMi44MzAzMiA5LjcxNzgxQzMuMTYwNjQgOS4yMTY4NyAzLjc0ODUzIDguOTY0OTIgNC45MjQzMiA4LjQ2MUw2IDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xOSAxMS41VjE2LjYyNTRDMTkgMTcuNjMzNCAxOC40OTY1IDE4LjU3NzIgMTcuNjE0NyAxOS4wNjU2QzE2LjE0NjMgMTkuODc4NyAxMy43OTYgMjEgMTIgMjFDMTAuMjA0IDIxIDcuODUzNyAxOS44Nzg3IDYuMzg1MzMgMTkuMDY1NkM1LjUwMzUgMTguNTc3MiA1IDE3LjYzMzQgNSAxNi42MjU0VjExLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class SquareAcademicCap2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `square-academic-cap-2` icon in the lineDuotone style.
  const SquareAcademicCap2LineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.09155 6.63659L9.78267 3.49965C11.2037 2.83345 12.7961 2.83345 14.2171 3.49965L20.9083 6.63664C22.3638 7.31899 22.3638 9.68105 20.9083 10.3634L14.2172 13.5003C12.7962 14.1665 11.2038 14.1665 9.78275 13.5003L4.99995 11.2581" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.5 15V12.1376C2.5 10.8584 2.5 10.2188 2.83032 9.71781C3.16064 9.21687 3.74853 8.96492 4.92432 8.461L6 8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M19 11.5V16.6254C19 17.6334 18.4965 18.5772 17.6147 19.0656C16.1463 19.8787 13.796 21 12 21C10.204 21 7.8537 19.8787 6.38533 19.0656C5.5035 18.5772 5 17.6334 5 16.6254V11.5" stroke="currentColor" stroke-linecap="round"/>''',
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
