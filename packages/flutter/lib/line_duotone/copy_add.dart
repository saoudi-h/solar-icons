// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `copy-add` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYgMTFDNiA4LjE3MTU3IDYgNi43NTczNiA2Ljg3ODY4IDUuODc4NjhDNy43NTczNiA1IDkuMTcxNTcgNSAxMiA1SDE1QzE3LjgyODQgNSAxOS4yNDI2IDUgMjAuMTIxMyA1Ljg3ODY4QzIxIDYuNzU3MzYgMjEgOC4xNzE1NyAyMSAxMVYxNkMyMSAxOC44Mjg0IDIxIDIwLjI0MjYgMjAuMTIxMyAyMS4xMjEzQzE5LjI0MjYgMjIgMTcuODI4NCAyMiAxNSAyMkgxMkM5LjE3MTU3IDIyIDcuNzU3MzYgMjIgNi44Nzg2OCAyMS4xMjEzQzYgMjAuMjQyNiA2IDE4LjgyODQgNiAxNlYxMVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik02IDE5QzQuMzQzMTUgMTkgMyAxNy42NTY5IDMgMTZWMTBDMyA2LjIyODc2IDMgNC4zNDMxNSA0LjE3MTU3IDMuMTcxNTdDNS4zNDMxNSAyIDcuMjI4NzYgMiAxMSAySDE1QzE2LjY1NjkgMiAxOCAzLjM0MzE1IDE4IDUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYuNzUgMTMuNUgxMy41TTEzLjUgMTMuNUwxMC4yNSAxMy41TTEzLjUgMTMuNUwxMy41IDEwLjI1TTEzLjUgMTMuNUwxMy41IDE2Ljc1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class CopyAddLineDuotoneIcon extends StatelessWidget {
  /// Creates the `copy-add` icon in the lineDuotone style.
  const CopyAddLineDuotoneIcon({
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
    name: 'copy-add',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M6 11C6 8.17157 6 6.75736 6.87868 5.87868C7.75736 5 9.17157 5 12 5H15C17.8284 5 19.2426 5 20.1213 5.87868C21 6.75736 21 8.17157 21 11V16C21 18.8284 21 20.2426 20.1213 21.1213C19.2426 22 17.8284 22 15 22H12C9.17157 22 7.75736 22 6.87868 21.1213C6 20.2426 6 18.8284 6 16V11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.75 13.5H13.5M13.5 13.5L10.25 13.5M13.5 13.5L13.5 10.25M13.5 13.5L13.5 16.75" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6 19C4.34315 19 3 17.6569 3 16V10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2H15C16.6569 2 18 3.34315 18 5" stroke="currentColor" stroke-linecap="round"/>''',
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
