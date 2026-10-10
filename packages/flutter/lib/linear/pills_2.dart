// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMS41MzU1IDEwLjUzNTVDMTIuNDQwNCA5LjYzMDcxIDEzIDguMzgwNzEgMTMgN0MxMyA0LjIzODU4IDEwLjc2MTQgMiA4IDJDNi42MTkyOSAyIDUuMzY5MjkgMi41NTk2NCA0LjQ2NDQ3IDMuNDY0NDdNMTEuNTM1NSAxMC41MzU1QzEwLjYzMDcgMTEuNDQwNCA5LjM4MDcxIDEyIDggMTJDNS4yMzg1OCAxMiAzIDkuNzYxNDIgMyA3QzMgNS42MTkyOSAzLjU1OTY0IDQuMzY5MjkgNC40NjQ0NyAzLjQ2NDQ3TTExLjUzNTUgMTAuNTM1NUw0LjQ2NDQ3IDMuNDY0NDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgMTdDMjIgMTUuNzIwNCAyMS41MTE4IDE0LjQ0MDggMjAuNTM1NSAxMy40NjQ1QzE4LjU4MjkgMTEuNTExOCAxNS40MTcxIDExLjUxMTggMTMuNDY0NSAxMy40NjQ1QzEyLjQ4ODIgMTQuNDQwOCAxMiAxNS43MjA0IDEyIDE3TTIyIDE3QzIyIDE4LjI3OTYgMjEuNTExOCAxOS41NTkyIDIwLjUzNTUgMjAuNTM1NUMxOC41ODI5IDIyLjQ4ODIgMTUuNDE3MSAyMi40ODgyIDEzLjQ2NDUgMjAuNTM1NUMxMi40ODgyIDE5LjU1OTIgMTIgMTguMjc5NiAxMiAxN00yMiAxN0gxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class Pills2LinearIcon extends StatelessWidget {
  /// Creates the `pills-2` icon in the linear style.
  const Pills2LinearIcon({
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
    name: 'pills-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M11.5355 10.5355C12.4404 9.63071 13 8.38071 13 7C13 4.23858 10.7614 2 8 2C6.61929 2 5.36929 2.55964 4.46447 3.46447M11.5355 10.5355C10.6307 11.4404 9.38071 12 8 12C5.23858 12 3 9.76142 3 7C3 5.61929 3.55964 4.36929 4.46447 3.46447M11.5355 10.5355L4.46447 3.46447" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 17C22 15.7204 21.5118 14.4408 20.5355 13.4645C18.5829 11.5118 15.4171 11.5118 13.4645 13.4645C12.4882 14.4408 12 15.7204 12 17M22 17C22 18.2796 21.5118 19.5592 20.5355 20.5355C18.5829 22.4882 15.4171 22.4882 13.4645 20.5355C12.4882 19.5592 12 18.2796 12 17M22 17H12" stroke="currentColor" stroke-linecap="round"/>''',
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
