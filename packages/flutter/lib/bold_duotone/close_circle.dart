// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `close-circle` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJDMiA2LjQ3NzE1IDYuNDc3MTUgMiAxMiAyQzE3LjUyMjggMiAyMiA2LjQ3NzE1IDIyIDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNOC45Njk2NyA4Ljk2OTY3QzkuMjYyNTYgOC42NzY3OCA5LjczNzQ0IDguNjc2NzggMTAuMDMwMyA4Ljk2OTY3TDEyIDEwLjkzOTRMMTMuOTY5NyA4Ljk2OTY5QzE0LjI2MjYgOC42NzY4IDE0LjczNzQgOC42NzY4IDE1LjAzMDMgOC45Njk2OUMxNS4zMjMyIDkuMjYyNTggMTUuMzIzMiA5LjczNzQ2IDE1LjAzMDMgMTAuMDMwNEwxMy4wNjA3IDEyTDE1LjAzMDMgMTMuOTY5NkMxNS4zMjMyIDE0LjI2MjUgMTUuMzIzMiAxNC43Mzc0IDE1LjAzMDMgMTUuMDMwM0MxNC43Mzc0IDE1LjMyMzIgMTQuMjYyNSAxNS4zMjMyIDEzLjk2OTYgMTUuMDMwM0wxMiAxMy4wNjA3TDEwLjAzMDQgMTUuMDMwM0M5LjczNzQ2IDE1LjMyMzIgOS4yNjI1OCAxNS4zMjMyIDguOTY5NjkgMTUuMDMwM0M4LjY3NjggMTQuNzM3NCA4LjY3NjggMTQuMjYyNiA4Ljk2OTY5IDEzLjk2OTdMMTAuOTM5NCAxMkw4Ljk2OTY3IDEwLjAzMDNDOC42NzY3OCA5LjczNzQ0IDguNjc2NzggOS4yNjI1NiA4Ljk2OTY3IDguOTY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
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
