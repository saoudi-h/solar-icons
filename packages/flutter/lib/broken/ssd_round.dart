// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ssd-round` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDIxSDE4LjVDMjAuNDMzIDIxIDIyIDE5LjM0MDggMjIgMTcuMjk0MUMyMiAxNi42MzU2IDIxLjgzNzggMTYuMDE3MiAyMS41NTM0IDE1LjQ4MTNDMjAuOTUzOCAxNC4zNTE1IDE5LjgxMTEgMTMuNTg4MiAxOC41IDEzLjU4ODJINS41QzQuMTg4OTMgMTMuNTg4MiAzLjA0NjIzIDE0LjM1MTUgMi40NDY2NCAxNS40ODEzQzIuMTYyMjEgMTYuMDE3MiAyIDE2LjYzNTYgMiAxNy4yOTQxQzIgMTkuMzQwOCAzLjU2NyAyMSA1LjUgMjFIOE0yMS41NTM0IDE1LjQ4MTNMMjAuMjc2NyAxMC4yOTk1TTIuNDQ2NjQgMTUuNDgxM0w1IDUuMTE3NjVDNS41IDMuNTI5NDEgNi4zOTU0MyAzIDcuNSAzSDE2LjVDMTcuNjA0NiAzIDE4LjUgMy41Mjk0MSAxOSA1LjExNzY1TDE5LjMxOTIgNi40MTMxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE4IDE3VjE4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1LjUgMTdWMTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTMgMTdWMTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAuNSAxN1YxOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class SsdRoundBrokenIcon extends StatelessWidget {
  /// Creates the `ssd-round` icon in the broken style.
  const SsdRoundBrokenIcon({
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
    name: 'ssd-round',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 21H18.5C20.433 21 22 19.3408 22 17.2941C22 16.6356 21.8378 16.0172 21.5534 15.4813C20.9538 14.3515 19.8111 13.5882 18.5 13.5882H5.5C4.18893 13.5882 3.04623 14.3515 2.44664 15.4813C2.16221 16.0172 2 16.6356 2 17.2941C2 19.3408 3.567 21 5.5 21H8M21.5534 15.4813L20.2767 10.2995M2.44664 15.4813L5 5.11765C5.5 3.52941 6.39543 3 7.5 3H16.5C17.6046 3 18.5 3.52941 19 5.11765L19.3192 6.4131" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 17V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 17V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 17V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 17V18" stroke="currentColor" stroke-linecap="round"/>''',
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
