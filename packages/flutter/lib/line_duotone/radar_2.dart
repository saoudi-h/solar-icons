// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAxMS45OTk2TDUuMDAxOTcgNi4zMzU0NkM0LjU3Mjg1IDUuOTg4MTMgMy45Mzg2OSA2LjA1MTgyIDMuNjM1OTkgNi41MTM1QzMuMDY2NzggNy4zODE2MyAyLjYyNDEzIDguMzUzODkgMi4zNDA3OCA5LjQxMTM2QzAuOTExMzY0IDE0Ljc0NiA0LjA3NzE5IDIwLjIyOTQgOS40MTE4NSAyMS42NTg4QzE0Ljc0NjUgMjMuMDg4MiAyMC4yMjk5IDE5LjkyMjQgMjEuNjU5MyAxNC41ODc3QzIzLjA4ODcgOS4yNTMwOCAxOS45MjI5IDMuNzY5NzEgMTQuNTg4MiAyLjM0MDI5QzExLjk1NTYgMS42MzQ4OSA5LjI4Njg0IDIuMDQ4NTcgNy4wODY5IDMuMjg5NzIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik03LjM2OTE0IDguMTg0NjFDNi41MTM3OSA5LjIyMTYgNiAxMC41NTA4IDYgMTJDNiAxNS4zMTM3IDguNjg2MjkgMTggMTIgMThDMTUuMzEzNyAxOCAxOCAxNS4zMTM3IDE4IDEyQzE4IDguNjg2MjkgMTUuMzEzNyA2IDEyIDZDMTEuMzM3IDYgMTAuNjk5MSA2LjEwNzU0IDEwLjEwMjggNi4zMDYxMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class Radar2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `radar-2` icon in the lineDuotone style.
  const Radar2LineDuotoneIcon({
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
    name: 'radar-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 11.9996L5.00197 6.33546C4.57285 5.98813 3.93869 6.05182 3.63599 6.5135C3.06678 7.38163 2.62413 8.35389 2.34078 9.41136C0.911364 14.746 4.07719 20.2294 9.41185 21.6588C14.7465 23.0882 20.2299 19.9224 21.6593 14.5877C23.0887 9.25308 19.9229 3.76971 14.5882 2.34029C11.9556 1.63489 9.28684 2.04857 7.0869 3.28972" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M7.36914 8.18461C6.51379 9.2216 6 10.5508 6 12C6 15.3137 8.68629 18 12 18C15.3137 18 18 15.3137 18 12C18 8.68629 15.3137 6 12 6C11.337 6 10.6991 6.10754 10.1028 6.30613" stroke="currentColor" stroke-linecap="round"/>''',
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
