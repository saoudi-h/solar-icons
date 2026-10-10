// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-arrow-left-up` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyMkM2LjQ3NzE1IDIyIDIgMTcuNTIyOCAyIDEyQzIgNi40NzcxNSA2LjQ3NzE1IDIgMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMkMyMiAxNy41MjI4IDE3LjUyMjggMjIgMTIgMjJaTTE0LjI1IDlDMTQuMjUgOC41ODU3OSAxMy45MTQyIDguMjUgMTMuNSA4LjI1SDlDOC41ODU3OSA4LjI1IDguMjUgOC41ODU3OSA4LjI1IDlWMTMuNUM4LjI1IDEzLjkxNDIgOC41ODU3OSAxNC4yNSA5IDE0LjI1QzkuNDE0MjEgMTQuMjUgOS43NSAxMy45MTQyIDkuNzUgMTMuNVYxMC44MTA3TDE0LjQ2OTcgMTUuNTMwM0MxNC43NjI2IDE1LjgyMzIgMTUuMjM3NCAxNS44MjMyIDE1LjUzMDMgMTUuNTMwM0MxNS44MjMyIDE1LjIzNzQgMTUuODIzMiAxNC43NjI2IDE1LjUzMDMgMTQuNDY5N0wxMC44MTA3IDkuNzVIMTMuNUMxMy45MTQyIDkuNzUgMTQuMjUgOS40MTQyMSAxNC4yNSA5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class RoundArrowLeftUpBoldIcon extends StatelessWidget {
  /// Creates the `round-arrow-left-up` icon in the bold style.
  const RoundArrowLeftUpBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22ZM14.25 9C14.25 8.58579 13.9142 8.25 13.5 8.25H9C8.58579 8.25 8.25 8.58579 8.25 9V13.5C8.25 13.9142 8.58579 14.25 9 14.25C9.41421 14.25 9.75 13.9142 9.75 13.5V10.8107L14.4697 15.5303C14.7626 15.8232 15.2374 15.8232 15.5303 15.5303C15.8232 15.2374 15.8232 14.7626 15.5303 14.4697L10.8107 9.75H13.5C13.9142 9.75 14.25 9.41421 14.25 9Z" fill="currentColor"/>''',
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
