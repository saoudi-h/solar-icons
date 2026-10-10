// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIyIDEyQzIyIDE3LjUyMjggMTcuNTIyOCAyMiAxMiAyMkM2LjQ3NzE1IDIyIDIgMTcuNTIyOCAyIDEyQzIgNi40NzcxNSA2LjQ3NzE1IDIgMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTguOTY5NjcgOC45Njk2N0M5LjI2MjU2IDguNjc2NzggOS43Mzc0NCA4LjY3Njc4IDEwLjAzMDMgOC45Njk2N0wxMiAxMC45Mzk0TDEzLjk2OTcgOC45Njk2OUMxNC4yNjI2IDguNjc2OCAxNC43Mzc0IDguNjc2OCAxNS4wMzAzIDguOTY5NjlDMTUuMzIzMiA5LjI2MjU4IDE1LjMyMzIgOS43Mzc0NiAxNS4wMzAzIDEwLjAzMDRMMTMuMDYwNyAxMkwxNS4wMzAzIDEzLjk2OTZDMTUuMzIzMiAxNC4yNjI1IDE1LjMyMzIgMTQuNzM3NCAxNS4wMzAzIDE1LjAzMDNDMTQuNzM3NCAxNS4zMjMyIDE0LjI2MjUgMTUuMzIzMiAxMy45Njk2IDE1LjAzMDNMMTIgMTMuMDYwN0wxMC4wMzA0IDE1LjAzMDNDOS43Mzc0NiAxNS4zMjMyIDkuMjYyNTggMTUuMzIzMiA4Ljk2OTY5IDE1LjAzMDNDOC42NzY4IDE0LjczNzQgOC42NzY4IDE0LjI2MjYgOC45Njk2OSAxMy45Njk3TDEwLjkzOTQgMTJMOC45Njk2NyAxMC4wMzAzQzguNjc2NzggOS43Mzc0NCA4LjY3Njc4IDkuMjYyNTYgOC45Njk2NyA4Ljk2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class CloseCircleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `close-circle` icon in the boldDuotone style.
  const CloseCircleBoldDuotoneIcon({
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
    name: 'close-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.96967 8.96967C9.26256 8.67678 9.73744 8.67678 10.0303 8.96967L12 10.9394L13.9697 8.96969C14.2626 8.6768 14.7374 8.6768 15.0303 8.96969C15.3232 9.26258 15.3232 9.73746 15.0303 10.0304L13.0607 12L15.0303 13.9696C15.3232 14.2625 15.3232 14.7374 15.0303 15.0303C14.7374 15.3232 14.2625 15.3232 13.9696 15.0303L12 13.0607L10.0304 15.0303C9.73746 15.3232 9.26258 15.3232 8.96969 15.0303C8.6768 14.7374 8.6768 14.2626 8.96969 13.9697L10.9394 12L8.96967 10.0303C8.67678 9.73744 8.67678 9.26256 8.96967 8.96967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" fill="currentColor"/>''',
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
