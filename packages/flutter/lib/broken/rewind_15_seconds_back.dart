// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-15-seconds-back` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2LjUgOC41SDEzLjg2MDRDMTMuNjQ1MiA4LjUgMTMuNDU0MSA4LjYzNzcyIDEzLjM4NiA4Ljg0MTg5TDEyLjcxOTQgMTAuODQxOUMxMi42MTE0IDExLjE2NTcgMTIuODUyNCAxMS41IDEzLjE5MzcgMTEuNUgxNC41QzE1LjYwNDYgMTEuNSAxNi41IDEyLjM5NTQgMTYuNSAxMy41QzE2LjUgMTQuNjA0NiAxNS42MDQ2IDE1LjUgMTQuNSAxNS41SDEyLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNy41IDEwLjVMMTAgOC41VjE1LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTQgNC41TDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzguNzI4OCAyMiA1LjgyNDQ2IDIwLjQyOTMgNCAxOC4wMDFNOCAyLjgzMjA5QzYuODc3NTQgMy4zMjI1MSA1Ljg2MjUxIDQuMDEzMDMgNSA0Ljg1ODU3QzMuMTQ4NjQgNi42NzM0OSAyIDkuMjAyNjEgMiAxMkMyIDEyLjY4NDkgMi4wNjg4NiAxMy4zNTM4IDIuMjAwMDQgMTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class Rewind15SecondsBackBrokenIcon extends StatelessWidget {
  /// Creates the `rewind-15-seconds-back` icon in the broken style.
  const Rewind15SecondsBackBrokenIcon({
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
    name: 'rewind-15-seconds-back',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16.5 8.5H13.8604C13.6452 8.5 13.4541 8.63772 13.386 8.84189L12.7194 10.8419C12.6114 11.1657 12.8524 11.5 13.1937 11.5H14.5C15.6046 11.5 16.5 12.3954 16.5 13.5C16.5 14.6046 15.6046 15.5 14.5 15.5H12.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.5 10.5L10 8.5V15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14 4.5L12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C8.7288 22 5.82446 20.4293 4 18.001M8 2.83209C6.87754 3.32251 5.86251 4.01303 5 4.85857C3.14864 6.67349 2 9.20261 2 12C2 12.6849 2.06886 13.3538 2.20004 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
