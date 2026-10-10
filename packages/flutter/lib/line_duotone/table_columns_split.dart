// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `table-columns-split` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEzLjUgMi4wMDg3M0wxMy41IDMuNjcyNjFNMTMuNSAyMC4zNTAxTDEzLjUgMjIuMDE0TTEzLjUgNy4wMDI2MkwxMy41IDEwLjM0ODdNMTMuNSAxMy42NkwxMy41IDE3LjAwNjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0yIDE1LjMzM0gxMU0yIDguNjY2NUgxMU01IDIuMDA4NzNMNSAyMS45OTEzTTIgMkwzIDJDNi43NzEyNCAyIDguNjU2ODUgMiA5LjgyODQzIDMuMTcxNTdDMTEgNC4zNDMxNSAxMSA2LjIyODc2IDExIDEwTDExIDE0QzExIDE3Ljc3MTIgMTEgMTkuNjU2OSA5LjgyODQzIDIwLjgyODRDOC42NTY4NSAyMiA2Ljc3MTI0IDIyIDMgMjJIMk0yMS45OTg1IDE1LjMzM0gxNi4wMDQzTTIxLjk5NjEgOC42NjY1SDE2LjAwNDNNMjEuOTkxOCAyLjAwODg1QzE5LjUyMDEgMi4wNDUxNiAxOC4xMTc1IDIuMjMwMDYgMTcuMTc2IDMuMTcxNTVDMTYuMDA0NCA0LjM0MzEyIDE2LjAwNDQgNi4yMjg3NCAxNi4wMDQ0IDkuOTk5OThWMTRDMTYuMDA0NCAxNy43NzEyIDE2LjAwNDQgMTkuNjU2OCAxNy4xNzYgMjAuODI4NEMxOC4xMTgzIDIxLjc3MDggMTkuNTIyNyAyMS45NTUxIDIxLjk5ODcgMjEuOTkxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class TableColumnsSplitLineDuotoneIcon extends StatelessWidget {
  /// Creates the `table-columns-split` icon in the lineDuotone style.
  const TableColumnsSplitLineDuotoneIcon({
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
    name: 'table-columns-split',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13.5 2.00873L13.5 3.67261M13.5 20.3501L13.5 22.014M13.5 7.00262L13.5 10.3487M13.5 13.66L13.5 17.0061" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 15.333H11M2 8.6665H11M5 2.00873L5 21.9913M2 2L3 2C6.77124 2 8.65685 2 9.82843 3.17157C11 4.34315 11 6.22876 11 10L11 14C11 17.7712 11 19.6569 9.82843 20.8284C8.65685 22 6.77124 22 3 22H2M21.9985 15.333H16.0043M21.9961 8.6665H16.0043M21.9918 2.00885C19.5201 2.04516 18.1175 2.23006 17.176 3.17155C16.0044 4.34312 16.0044 6.22874 16.0044 9.99998V14C16.0044 17.7712 16.0044 19.6568 17.176 20.8284C18.1183 21.7708 19.5227 21.9551 21.9987 21.9912" stroke="currentColor" stroke-linecap="round"/>''',
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
