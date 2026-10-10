// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJDMiA2LjQ3NzE1IDYuNDc3MTUgMiAxMiAyQzE3LjUyMjggMiAyMiA2LjQ3NzE1IDIyIDEyQzIyIDE3LjUyMjggMTcuNTIyOCAyMiAxMiAyMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEzLjUgOC4yNUMxMy45MTQyIDguMjUgMTQuMjUgOC41ODU3OSAxNC4yNSA5QzE0LjI1IDkuNDE0MjEgMTMuOTE0MiA5Ljc1IDEzLjUgOS43NUgxMC44MTA3TDE1LjUzMDMgMTQuNDY5N0MxNS44MjMyIDE0Ljc2MjYgMTUuODIzMiAxNS4yMzc0IDE1LjUzMDMgMTUuNTMwM0MxNS4yMzc0IDE1LjgyMzIgMTQuNzYyNiAxNS44MjMyIDE0LjQ2OTcgMTUuNTMwM0w5Ljc1IDEwLjgxMDdWMTMuNUM5Ljc1IDEzLjkxNDIgOS40MTQyMSAxNC4yNSA5IDE0LjI1QzguNTg1NzkgMTQuMjUgOC4yNSAxMy45MTQyIDguMjUgMTMuNVY5QzguMjUgOC41ODU3OSA4LjU4NTc5IDguMjUgOSA4LjI1SDEzLjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RoundArrowLeftUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-arrow-left-up` icon in the boldDuotone style.
  const RoundArrowLeftUpBoldDuotoneIcon({
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
    name: 'round-arrow-left-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.5 8.25C13.9142 8.25 14.25 8.58579 14.25 9C14.25 9.41421 13.9142 9.75 13.5 9.75H10.8107L15.5303 14.4697C15.8232 14.7626 15.8232 15.2374 15.5303 15.5303C15.2374 15.8232 14.7626 15.8232 14.4697 15.5303L9.75 10.8107V13.5C9.75 13.9142 9.41421 14.25 9 14.25C8.58579 14.25 8.25 13.9142 8.25 13.5V9C8.25 8.58579 8.58579 8.25 9 8.25H13.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22Z" fill="currentColor"/>''',
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
