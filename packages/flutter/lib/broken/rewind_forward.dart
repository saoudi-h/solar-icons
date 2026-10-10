// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-forward` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwLjk5OTggMTUuMjMxNkw0LjkwMzEyIDE5LjY5MTZDMy42MDA2NCAyMC41ODg4IDIgMTkuNDIxMSAyIDE3LjU3MzdMMiAxNU0xMC45OTk4IDguNzY4NDRMNC45MDMxMyA0LjMwODM4QzMuNjAwNjUgMy40MTEyMiAyIDQuNTc4OTQgMiA2LjQyNjMxTDIgMTEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTcuMzY5OSA3LjcwODMyTDEzLjY2MTIgNS4yNjk4M0MxMi40NjczIDQuNDg0ODIgMTEgNS41MDY1OCAxMSA3LjEyMzAzTDExIDE2Ljg3N0MxMSAxOC40OTM0IDEyLjQ2NzMgMTkuNTE1MiAxMy42NjEyIDE4LjczMDJMMjEuMDc4NiAxMy44NTMyQzIyLjMwNzEgMTMuMDQ1NSAyMi4zMDcxIDEwLjk1NDUgMjEuMDc4NiAxMC4xNDY4TDIwLjE1MTUgOS41MzcxOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class RewindForwardBrokenIcon extends StatelessWidget {
  /// Creates the `rewind-forward` icon in the broken style.
  const RewindForwardBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10.9998 15.2316L4.90312 19.6916C3.60064 20.5888 2 19.4211 2 17.5737L2 15M10.9998 8.76844L4.90313 4.30838C3.60065 3.41122 2 4.57894 2 6.42631L2 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.3699 7.70832L13.6612 5.26983C12.4673 4.48482 11 5.50658 11 7.12303L11 16.877C11 18.4934 12.4673 19.5152 13.6612 18.7302L21.0786 13.8532C22.3071 13.0455 22.3071 10.9545 21.0786 10.1468L20.1515 9.53719" stroke="currentColor" stroke-linecap="round"/>''',
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
