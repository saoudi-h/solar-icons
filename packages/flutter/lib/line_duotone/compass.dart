// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `compass` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxMiIgY3k9IjEyIiByPSIxMCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMy4wMjQgMTQuNTYwMUMxMC43MTQyIDE1LjQ4NCA5LjU1OTMgMTUuOTQ2IDguODk5NjQgMTUuNDk3N0M4Ljc0MzI0IDE1LjM5MTQgOC42MDgzNCAxNS4yNTY1IDguNTAyMDYgMTUuMTAwMUM4LjA1MzggMTQuNDQwNSA4LjUxNTc1IDEzLjI4NTYgOS40Mzk2NyAxMC45NzU4QzkuNjM2NzMgMTAuNDgzMSA5LjczNTI3IDEwLjIzNjggOS45MDQ3NCAxMC4wNDM1QzkuOTQ3OTIgOS45OTQyOSA5Ljk5NDI5IDkuOTQ3OTIgMTAuMDQzNSA5LjkwNDc0QzEwLjIzNjggOS43MzUyNyAxMC40ODMxIDkuNjM2NzMgMTAuOTc1OCA5LjQzOTY2QzEzLjI4NTYgOC41MTU3NSAxNC40NDA1IDguMDUzOCAxNS4xMDAxIDguNTAyMDZDMTUuMjU2NSA4LjYwODM0IDE1LjM5MTQgOC43NDMyNCAxNS40OTc3IDguODk5NjRDMTUuOTQ2IDkuNTU5MyAxNS40ODQgMTAuNzE0MiAxNC41NjAxIDEzLjAyNEMxNC4zNjMgMTMuNTE2NiAxNC4yNjQ1IDEzLjc2MyAxNC4wOTUgMTMuOTU2MkMxNC4wNTE4IDE0LjAwNTUgMTQuMDA1NSAxNC4wNTE4IDEzLjk1NjIgMTQuMDk1QzEzLjc2MyAxNC4yNjQ1IDEzLjUxNjYgMTQuMzYzIDEzLjAyNCAxNC41NjAxWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class CompassLineDuotoneIcon extends StatelessWidget {
  /// Creates the `compass` icon in the lineDuotone style.
  const CompassLineDuotoneIcon({
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
    name: 'compass',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13.024 14.5601C10.7142 15.484 9.5593 15.946 8.89964 15.4977C8.74324 15.3914 8.60834 15.2565 8.50206 15.1001C8.0538 14.4405 8.51575 13.2856 9.43967 10.9758C9.63673 10.4831 9.73527 10.2368 9.90474 10.0435C9.94792 9.99429 9.99429 9.94792 10.0435 9.90474C10.2368 9.73527 10.4831 9.63673 10.9758 9.43966C13.2856 8.51575 14.4405 8.0538 15.1001 8.50206C15.2565 8.60834 15.3914 8.74324 15.4977 8.89964C15.946 9.5593 15.484 10.7142 14.5601 13.024C14.363 13.5166 14.2645 13.763 14.095 13.9562C14.0518 14.0055 14.0055 14.0518 13.9562 14.095C13.763 14.2645 13.5166 14.363 13.024 14.5601Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
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
