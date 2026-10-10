// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wineglass` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDE1LjI4NTZWMjAuOTk5OU0xMiAyMC45OTk5SDE1Ljc1TTEyIDIwLjk5OTlIOC4yNU01IDQuODk0NzRDNSAzLjg0ODMgNS44NDgzIDMgNi44OTQ3NCAzSDE3LjEwNTNDMTguMTUxNyAzIDE5IDMuODQ4MyAxOSA0Ljg5NDc0VjhDMTkgMTEuODY2IDE1Ljg2NiAxNSAxMiAxNUM4LjEzNDAxIDE1IDUgMTEuODY2IDUgOFY0Ljg5NDc0WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik01LjUgOS4wMDAxQzUuNSA5LjAwMDEgNy41ODExNSA4LjA4NzM2IDkgOC4wMDAxQzExLjQ2NTIgNy44NDg0NyAxMi41MzQ4IDEwLjE1MTcgMTUgMTAuMDAwMUMxNi40MTg4IDkuOTEyODMgMTguNSA5LjAwMDEgMTguNSA5LjAwMDEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class WineglassLinearIcon extends StatelessWidget {
  /// Creates the `wineglass` icon in the linear style.
  const WineglassLinearIcon({
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
    name: 'wineglass',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 15.2856V20.9999M12 20.9999H15.75M12 20.9999H8.25M5 4.89474C5 3.8483 5.8483 3 6.89474 3H17.1053C18.1517 3 19 3.8483 19 4.89474V8C19 11.866 15.866 15 12 15C8.13401 15 5 11.866 5 8V4.89474Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.5 9.0001C5.5 9.0001 7.58115 8.08736 9 8.0001C11.4652 7.84847 12.5348 10.1517 15 10.0001C16.4188 9.91283 18.5 9.0001 18.5 9.0001" stroke="currentColor" stroke-linecap="round"/>''',
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
