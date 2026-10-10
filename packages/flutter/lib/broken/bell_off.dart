// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bell-off` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwIDlIMTRMMTAgMTNIMTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNNy41IDE5QzguMTU1MDMgMjAuNzQ3OCA5LjkyMjQ2IDIyIDEyIDIyQzEyLjI0NDUgMjIgMTIuNDg0NyAyMS45ODI3IDEyLjcxOTIgMjEuOTQ5Mk0xNi41IDE5QzE2LjIzMjkgMTkuNzEyNiAxNS43ODEgMjAuMzQyOCAxNS4xOTg1IDIwLjgzOTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOS4xMDc0NSAyLjY3NDE0QzkuOTg0MTQgMi4yNDE4NyAxMC45NjQ5IDIgMTIgMkMxNS43Mjc0IDIgMTguNzQ5MSA1LjEzNjIzIDE4Ljc0OTEgOS4wMDQ5N1Y5LjcwOTU3QzE4Ljc0OTEgMTAuNTU1MiAxOC45OTAzIDExLjM4MTggMTkuNDQyMiAxMi4wODU0TDIwLjU0OTYgMTMuODA5NUMyMS41NjEyIDE1LjM4NDMgMjAuNzg5IDE3LjUyNDkgMTkuMDI5NiAxOC4wMjI5QzE0LjQyNzMgMTkuMzI1NyA5LjU3Mjc0IDE5LjMyNTcgNC45NzAzNiAxOC4wMjI5QzMuMjExMDUgMTcuNTI0OSAyLjQzODgyIDE1LjM4NDMgMy40NTAzNiAxMy44MDk1TDQuNTU3OCAxMi4wODU0QzUuMDA5NzIgMTEuMzgxOCA1LjI1MDg3IDEwLjU1NTIgNS4yNTA4NyA5LjcwOTU3VjkuMDA0OTdDNS4yNTA4NyA3LjkzMDU4IDUuNDgzOTEgNi45MTI2OSA1LjkwMDM5IDYuMDAyNzciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BellOffBrokenIcon extends StatelessWidget {
  /// Creates the `bell-off` icon in the broken style.
  const BellOffBrokenIcon({
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
    name: 'bell-off',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 9H14L10 13H14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7.5 19C8.15503 20.7478 9.92246 22 12 22C12.2445 22 12.4847 21.9827 12.7192 21.9492M16.5 19C16.2329 19.7126 15.781 20.3428 15.1985 20.8393" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.10745 2.67414C9.98414 2.24187 10.9649 2 12 2C15.7274 2 18.7491 5.13623 18.7491 9.00497V9.70957C18.7491 10.5552 18.9903 11.3818 19.4422 12.0854L20.5496 13.8095C21.5612 15.3843 20.789 17.5249 19.0296 18.0229C14.4273 19.3257 9.57274 19.3257 4.97036 18.0229C3.21105 17.5249 2.43882 15.3843 3.45036 13.8095L4.5578 12.0854C5.00972 11.3818 5.25087 10.5552 5.25087 9.70957V9.00497C5.25087 7.93058 5.48391 6.91269 5.90039 6.00277" stroke="currentColor" stroke-linecap="round"/>''',
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
