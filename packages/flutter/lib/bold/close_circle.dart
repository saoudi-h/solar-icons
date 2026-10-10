// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `close-circle` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMiAxMkMyMiAxNy41MjI4IDE3LjUyMjggMjIgMTIgMjJDNi40NzcxNSAyMiAyIDE3LjUyMjggMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJaTTguOTY5NjMgOC45Njk2NUM5LjI2MjUyIDguNjc2NzYgOS43MzczOSA4LjY3Njc2IDEwLjAzMDMgOC45Njk2NUwxMiAxMC45MzkzTDEzLjk2OTYgOC45Njk2N0MxNC4yNjI1IDguNjc2NzggMTQuNzM3NCA4LjY3Njc4IDE1LjAzMDMgOC45Njk2N0MxNS4zMjMyIDkuMjYyNTYgMTUuMzIzMiA5LjczNzQ0IDE1LjAzMDMgMTAuMDMwM0wxMy4wNjA2IDEyTDE1LjAzMDMgMTMuOTY5NkMxNS4zMjMyIDE0LjI2MjUgMTUuMzIzMiAxNC43Mzc0IDE1LjAzMDMgMTUuMDMwM0MxNC43Mzc0IDE1LjMyMzIgMTQuMjYyNSAxNS4zMjMyIDEzLjk2OTYgMTUuMDMwM0wxMiAxMy4wNjA3TDEwLjAzMDMgMTUuMDMwM0M5LjczNzQyIDE1LjMyMzIgOS4yNjI1NCAxNS4zMjMyIDguOTY5NjUgMTUuMDMwM0M4LjY3Njc2IDE0LjczNzQgOC42NzY3NiAxNC4yNjI1IDguOTY5NjUgMTMuOTY5N0wxMC45MzkzIDEyTDguOTY5NjMgMTAuMDMwM0M4LjY3NjczIDkuNzM3NDIgOC42NzY3MyA5LjI2MjU0IDguOTY5NjMgOC45Njk2NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class CloseCircleBoldIcon extends StatelessWidget {
  /// Creates the `close-circle` icon in the bold style.
  const CloseCircleBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12ZM8.96963 8.96965C9.26252 8.67676 9.73739 8.67676 10.0303 8.96965L12 10.9393L13.9696 8.96967C14.2625 8.67678 14.7374 8.67678 15.0303 8.96967C15.3232 9.26256 15.3232 9.73744 15.0303 10.0303L13.0606 12L15.0303 13.9696C15.3232 14.2625 15.3232 14.7374 15.0303 15.0303C14.7374 15.3232 14.2625 15.3232 13.9696 15.0303L12 13.0607L10.0303 15.0303C9.73742 15.3232 9.26254 15.3232 8.96965 15.0303C8.67676 14.7374 8.67676 14.2625 8.96965 13.9697L10.9393 12L8.96963 10.0303C8.67673 9.73742 8.67673 9.26254 8.96963 8.96965Z" fill="currentColor"/>''',
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
