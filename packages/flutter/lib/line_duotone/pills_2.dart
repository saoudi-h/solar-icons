// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pills-2` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExLjUzNTUgMTAuNTM1NUMxMi40NDA0IDkuNjMwNzEgMTMgOC4zODA3MSAxMyA3QzEzIDQuMjM4NTggMTAuNzYxNCAyIDggMkM2LjYxOTI5IDIgNS4zNjkyOSAyLjU1OTY0IDQuNDY0NDcgMy40NjQ0N00xMS41MzU1IDEwLjUzNTVDMTAuNjMwNyAxMS40NDA0IDkuMzgwNzEgMTIgOCAxMkM1LjIzODU4IDEyIDMgOS43NjE0MiAzIDdDMyA1LjYxOTI5IDMuNTU5NjQgNC4zNjkyOSA0LjQ2NDQ3IDMuNDY0NDdNMTEuNTM1NSAxMC41MzU1TDQuNDY0NDcgMy40NjQ0NyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIyIDE3QzIyIDE1LjcyMDQgMjEuNTExOCAxNC40NDA4IDIwLjUzNTUgMTMuNDY0NUMxOC41ODI5IDExLjUxMTggMTUuNDE3MSAxMS41MTE4IDEzLjQ2NDUgMTMuNDY0NUMxMi40ODgyIDE0LjQ0MDggMTIgMTUuNzIwNCAxMiAxN00yMiAxN0MyMiAxOC4yNzk2IDIxLjUxMTggMTkuNTU5MiAyMC41MzU1IDIwLjUzNTVDMTguNTgyOSAyMi40ODgyIDE1LjQxNzEgMjIuNDg4MiAxMy40NjQ1IDIwLjUzNTVDMTIuNDg4MiAxOS41NTkyIDEyIDE4LjI3OTYgMTIgMTdNMjIgMTdIMTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Pills2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `pills-2` icon in the lineDuotone style.
  const Pills2LineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11.5355 10.5355C12.4404 9.63071 13 8.38071 13 7C13 4.23858 10.7614 2 8 2C6.61929 2 5.36929 2.55964 4.46447 3.46447M11.5355 10.5355C10.6307 11.4404 9.38071 12 8 12C5.23858 12 3 9.76142 3 7C3 5.61929 3.55964 4.36929 4.46447 3.46447M11.5355 10.5355L4.46447 3.46447" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 17C22 15.7204 21.5118 14.4408 20.5355 13.4645C18.5829 11.5118 15.4171 11.5118 13.4645 13.4645C12.4882 14.4408 12 15.7204 12 17M22 17C22 18.2796 21.5118 19.5592 20.5355 20.5355C18.5829 22.4882 15.4171 22.4882 13.4645 20.5355C12.4882 19.5592 12 18.2796 12 17M22 17H12" stroke="currentColor" stroke-linecap="round"/>''',
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
