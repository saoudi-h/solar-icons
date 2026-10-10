// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDExLjk5OTZMNS4wMDE5NyA2LjMzNTQ2QzQuNTcyODUgNS45ODgxMyAzLjkzODY5IDYuMDUxODIgMy42MzU5OSA2LjUxMzVDMy4wNjY3OCA3LjM4MTYzIDIuNjI0MTMgOC4zNTM4OSAyLjM0MDc4IDkuNDExMzZDMC45MTEzNjQgMTQuNzQ2IDQuMDc3MTkgMjAuMjI5NCA5LjQxMTg1IDIxLjY1ODhDMTQuNzQ2NSAyMy4wODgyIDIwLjIyOTkgMTkuOTIyNCAyMS42NTkzIDE0LjU4NzdDMjMuMDg4NyA5LjI1MzA4IDE5LjkyMjkgMy43Njk3MSAxNC41ODgyIDIuMzQwMjlDMTEuOTU1NiAxLjYzNDg5IDkuMjg2ODQgMi4wNDg1NyA3LjA4NjkgMy4yODk3MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAxMkw1LjAwMTk1IDYuMzM1OTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class RadarLineDuotoneIcon extends StatelessWidget {
  /// Creates the `radar` icon in the lineDuotone style.
  const RadarLineDuotoneIcon({
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
    name: 'radar',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 12L5.00195 6.33594" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 11.9996L5.00197 6.33546C4.57285 5.98813 3.93869 6.05182 3.63599 6.5135C3.06678 7.38163 2.62413 8.35389 2.34078 9.41136C0.911364 14.746 4.07719 20.2294 9.41185 21.6588C14.7465 23.0882 20.2299 19.9224 21.6593 14.5877C23.0887 9.25308 19.9229 3.76971 14.5882 2.34029C11.9556 1.63489 9.28684 2.04857 7.0869 3.28972" stroke="currentColor" stroke-linecap="round"/>''',
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
