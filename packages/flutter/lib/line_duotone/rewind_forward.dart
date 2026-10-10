// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEwLjk5OTggOC43Njg0NEw0LjkwMzEyIDQuMzA4MzhDMy42MDA2NCAzLjQxMTIyIDIgNC41Nzg5NSAyIDYuNDI2MzJMMiAxNy41NzM3QzIgMTkuNDIxMSAzLjYwMDY1IDIwLjU4ODggNC45MDMxMyAxOS42OTE2TDEwLjk5OTggMTUuMjMxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMS4wNzg2IDEwLjE0NjhDMjIuMzA3MSAxMC45NTQ1IDIyLjMwNzEgMTMuMDQ1NSAyMS4wNzg2IDEzLjg1MzJMMTMuNjYxMiAxOC43MzAyQzEyLjQ2NzMgMTkuNTE1MiAxMSAxOC40OTM0IDExIDE2Ljg3N0wxMSA3LjEyMzAzQzExIDUuNTA2NTggMTIuNDY3MyA0LjQ4NDgyIDEzLjY2MTIgNS4yNjk4M0wyMS4wNzg2IDEwLjE0NjhaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class RewindForwardLineDuotoneIcon extends StatelessWidget {
  /// Creates the `rewind-forward` icon in the lineDuotone style.
  const RewindForwardLineDuotoneIcon({
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
    name: 'rewind-forward',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21.0786 10.1468C22.3071 10.9545 22.3071 13.0455 21.0786 13.8532L13.6612 18.7302C12.4673 19.5152 11 18.4934 11 16.877L11 7.12303C11 5.50658 12.4673 4.48482 13.6612 5.26983L21.0786 10.1468Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.9998 8.76844L4.90312 4.30838C3.60064 3.41122 2 4.57895 2 6.42632L2 17.5737C2 19.4211 3.60065 20.5888 4.90313 19.6916L10.9998 15.2316" stroke="currentColor" stroke-linecap="round"/>''',
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
