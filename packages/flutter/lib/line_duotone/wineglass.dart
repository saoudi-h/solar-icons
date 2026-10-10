// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wineglass` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE1Ljc1IDIwLjk5OTlIMTJIOC4yNU01IDQuODk0NzRDNSAzLjg0ODMgNS44NDgzIDMgNi44OTQ3NCAzSDE3LjEwNTNDMTguMTUxNyAzIDE5IDMuODQ4MyAxOSA0Ljg5NDc0VjhDMTkgMTEuODY2IDE1Ljg2NiAxNSAxMiAxNUM4LjEzNDAxIDE1IDUgMTEuODY2IDUgOFY0Ljg5NDc0WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDE1LjI4NTZWMjAuOTk5OSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTUuNSA5LjAwMDFDNS41IDkuMDAwMSA3LjU4MTE1IDguMDg3MzYgOSA4LjAwMDFDMTEuNDY1MiA3Ljg0ODQ3IDEyLjUzNDggMTAuMTUxNyAxNSAxMC4wMDAxQzE2LjQxODggOS45MTI4MyAxOC41IDkuMDAwMSAxOC41IDkuMDAwMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class WineglassLineDuotoneIcon extends StatelessWidget {
  /// Creates the `wineglass` icon in the lineDuotone style.
  const WineglassLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15.75 20.9999H12H8.25M5 4.89474C5 3.8483 5.8483 3 6.89474 3H17.1053C18.1517 3 19 3.8483 19 4.89474V8C19 11.866 15.866 15 12 15C8.13401 15 5 11.866 5 8V4.89474Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 15.2856V20.9999" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5.5 9.0001C5.5 9.0001 7.58115 8.08736 9 8.0001C11.4652 7.84847 12.5348 10.1517 15 10.0001C16.4188 9.91283 18.5 9.0001 18.5 9.0001" stroke="currentColor" stroke-linecap="round"/>''',
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
