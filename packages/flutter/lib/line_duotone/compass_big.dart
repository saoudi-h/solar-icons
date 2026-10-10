// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `compass-big` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTQuNzg5OCAxOC45NzQ2QzguNDk3NDkgMjEuNDkxNSA1LjM1MTMyIDIyLjc1IDMuNTU0MjggMjEuNTI4OEMzLjEyODIgMjEuMjM5MyAyLjc2MDcxIDIwLjg3MTggMi40NzExNyAyMC40NDU3QzEuMjUwMDEgMTguNjQ4NyAyLjUwODQ4IDE1LjUwMjUgNS4wMjU0MiA5LjIxMDE3QzUuNTYyMjggNy44NjgwMiA1LjgzMDcgNy4xOTY5NSA2LjI5MjM4IDYuNjcwNDhDNi40MTAwMiA2LjUzNjMzIDYuNTM2MzMgNi40MTAwMiA2LjY3MDQ4IDYuMjkyMzhDNy4xOTY5NSA1LjgzMDcgNy44NjgwMiA1LjU2MjI4IDkuMjEwMTcgNS4wMjU0MkMxNS41MDI1IDIuNTA4NDggMTguNjQ4NyAxLjI1MDAxIDIwLjQ0NTcgMi40NzExN0MyMC44NzE4IDIuNzYwNyAyMS4yMzkzIDMuMTI4MiAyMS41Mjg4IDMuNTU0MjhDMjIuNzUgNS4zNTEzMiAyMS40OTE1IDguNDk3NDkgMTguOTc0NiAxNC43ODk4QzE4LjQzNzcgMTYuMTMyIDE4LjE2OTMgMTYuODAzMSAxNy43MDc2IDE3LjMyOTVDMTcuNTkgMTcuNDYzNyAxNy40NjM3IDE3LjU5IDE3LjMyOTUgMTcuNzA3NkMxNi44MDMxIDE4LjE2OTMgMTYuMTMyIDE4LjQzNzcgMTQuNzg5OCAxOC45NzQ2WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class CompassBigLineDuotoneIcon extends StatelessWidget {
  /// Creates the `compass-big` icon in the lineDuotone style.
  const CompassBigLineDuotoneIcon({
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
    name: 'compass-big',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="12" r="3" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.7898 18.9746C8.49749 21.4915 5.35132 22.75 3.55428 21.5288C3.1282 21.2393 2.76071 20.8718 2.47117 20.4457C1.25001 18.6487 2.50848 15.5025 5.02542 9.21017C5.56228 7.86802 5.8307 7.19695 6.29238 6.67048C6.41002 6.53633 6.53633 6.41002 6.67048 6.29238C7.19695 5.8307 7.86802 5.56228 9.21017 5.02542C15.5025 2.50848 18.6487 1.25001 20.4457 2.47117C20.8718 2.7607 21.2393 3.1282 21.5288 3.55428C22.75 5.35132 21.4915 8.49749 18.9746 14.7898C18.4377 16.132 18.1693 16.8031 17.7076 17.3295C17.59 17.4637 17.4637 17.59 17.3295 17.7076C16.8031 18.1693 16.132 18.4377 14.7898 18.9746Z" stroke="currentColor" stroke-linecap="round"/>''',
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
