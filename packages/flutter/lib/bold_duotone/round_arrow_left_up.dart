// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-arrow-left-up` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDNi40NzcxNSAyMiAyIDE3LjUyMjggMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTMuNSA4LjI1QzEzLjkxNDIgOC4yNSAxNC4yNSA4LjU4NTc5IDE0LjI1IDlDMTQuMjUgOS40MTQyMSAxMy45MTQyIDkuNzUgMTMuNSA5Ljc1SDEwLjgxMDdMMTUuNTMwMyAxNC40Njk3QzE1LjgyMzIgMTQuNzYyNiAxNS44MjMyIDE1LjIzNzQgMTUuNTMwMyAxNS41MzAzQzE1LjIzNzQgMTUuODIzMiAxNC43NjI2IDE1LjgyMzIgMTQuNDY5NyAxNS41MzAzTDkuNzUgMTAuODEwN1YxMy41QzkuNzUgMTMuOTE0MiA5LjQxNDIxIDE0LjI1IDkgMTQuMjVDOC41ODU3OSAxNC4yNSA4LjI1IDEzLjkxNDIgOC4yNSAxMy41VjlDOC4yNSA4LjU4NTc5IDguNTg1NzkgOC4yNSA5IDguMjVIMTMuNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
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
