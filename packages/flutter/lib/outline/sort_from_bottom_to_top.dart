// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTYuNzYyOCAzLjI4ODU0QzE3LjA2OTEgMy4xODY0NSAxNy40MDYzIDMuMjkxNzkgMTcuNiAzLjU1MDA1TDIwLjYgNy41NTAwNUMyMC44NDg1IDcuODgxNDIgMjAuNzgxNCA4LjM1MTUyIDIwLjQ1IDguNjAwMDVDMjAuMTE4NiA4Ljg0ODU4IDE5LjY0ODUgOC43ODE0MiAxOS40IDguNDUwMDVMMTcuNzUgNi4yNTAwNVYyMEMxNy43NSAyMC40MTQzIDE3LjQxNDIgMjAuNzUgMTcgMjAuNzVDMTYuNTg1OCAyMC43NSAxNi4yNSAyMC40MTQzIDE2LjI1IDIwVjQuMDAwMDVDMTYuMjUgMy42NzcyMyAxNi40NTY2IDMuMzkwNjIgMTYuNzYyOCAzLjI4ODU0Wk0xMyA4Ljc1MDA1SDRWNy4yNTAwNUgxM1Y4Ljc1MDA1Wk0xMyAxMy43NUg2VjEyLjI1SDEzVjEzLjc1Wk0xMyAxOC43NUg4VjE3LjI1SDEzVjE4Ljc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class SortFromBottomToTopOutlineIcon extends StatelessWidget {
  /// Creates the `sort-from-bottom-to-top` icon in the outline style.
  const SortFromBottomToTopOutlineIcon({
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
    name: 'sort-from-bottom-to-top',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.7628 3.28854C17.0691 3.18645 17.4063 3.29179 17.6 3.55005L20.6 7.55005C20.8485 7.88142 20.7814 8.35152 20.45 8.60005C20.1186 8.84858 19.6485 8.78142 19.4 8.45005L17.75 6.25005V20C17.75 20.4143 17.4142 20.75 17 20.75C16.5858 20.75 16.25 20.4143 16.25 20V4.00005C16.25 3.67723 16.4566 3.39062 16.7628 3.28854ZM13 8.75005H4V7.25005H13V8.75005ZM13 13.75H6V12.25H13V13.75ZM13 18.75H8V17.25H13V18.75Z" fill="currentColor"/>''',
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
