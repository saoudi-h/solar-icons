// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAyQzE3LjUyMjggMiAyMiA2LjQ3NzE1IDIyIDEyQzIyIDEzLjgyMTQgMjEuNTEzIDE1LjUyOTEgMjAuNjYyMiAxN001IDQuODU4NTdDMy4xNDg2NCA2LjY3MzQ5IDIgOS4yMDI2MSAyIDEyQzIgMTcuNTIyOCA2LjQ3NzE1IDIyIDEyIDIyQzEzLjgyMTQgMjIgMTUuNTI5MSAyMS41MTMgMTcgMjAuNjYyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik01IDEyQzUgMTMuNDg3MiA1LjQ2MzgxIDE0Ljg2NjIgNi4yNTQ2OSAxNk0xMiA1QzE1Ljg2NiA1IDE5IDguMTM0MDEgMTkgMTJDMTkgMTUuODY2IDE1Ljg2NiAxOSAxMiAxOUMxMC45MjY0IDE5IDkuOTA5MjYgMTguNzU4MyA5IDE4LjMyNjQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTZDMTQuMjA5MSAxNiAxNiAxNC4yMDkxIDE2IDEyQzE2IDkuNzkwODYgMTQuMjA5MSA4IDEyIDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class RoundGraphBrokenIcon extends StatelessWidget {
  /// Creates the `round-graph` icon in the broken style.
  const RoundGraphBrokenIcon({
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
    name: 'round-graph',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 2C17.5228 2 22 6.47715 22 12C22 13.8214 21.513 15.5291 20.6622 17M5 4.85857C3.14864 6.67349 2 9.20261 2 12C2 17.5228 6.47715 22 12 22C13.8214 22 15.5291 21.513 17 20.6622" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 12C5 13.4872 5.46381 14.8662 6.25469 16M12 5C15.866 5 19 8.13401 19 12C19 15.866 15.866 19 12 19C10.9264 19 9.90926 18.7583 9 18.3264" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 16C14.2091 16 16 14.2091 16 12C16 9.79086 14.2091 8 12 8" stroke="currentColor" stroke-linecap="round"/>''',
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
