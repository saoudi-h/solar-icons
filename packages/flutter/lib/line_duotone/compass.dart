// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTIiIGN5PSIxMiIgcj0iMTAiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTMuMDI0IDE0LjU2MDFDMTAuNzE0MiAxNS40ODQgOS41NTkzIDE1Ljk0NiA4Ljg5OTY0IDE1LjQ5NzdDOC43NDMyNCAxNS4zOTE0IDguNjA4MzQgMTUuMjU2NSA4LjUwMjA2IDE1LjEwMDFDOC4wNTM4IDE0LjQ0MDUgOC41MTU3NSAxMy4yODU2IDkuNDM5NjcgMTAuOTc1OEM5LjYzNjczIDEwLjQ4MzEgOS43MzUyNyAxMC4yMzY4IDkuOTA0NzQgMTAuMDQzNUM5Ljk0NzkyIDkuOTk0MjkgOS45OTQyOSA5Ljk0NzkyIDEwLjA0MzUgOS45MDQ3NEMxMC4yMzY4IDkuNzM1MjcgMTAuNDgzMSA5LjYzNjczIDEwLjk3NTggOS40Mzk2NkMxMy4yODU2IDguNTE1NzUgMTQuNDQwNSA4LjA1MzggMTUuMTAwMSA4LjUwMjA2QzE1LjI1NjUgOC42MDgzNCAxNS4zOTE0IDguNzQzMjQgMTUuNDk3NyA4Ljg5OTY0QzE1Ljk0NiA5LjU1OTMgMTUuNDg0IDEwLjcxNDIgMTQuNTYwMSAxMy4wMjRDMTQuMzYzIDEzLjUxNjYgMTQuMjY0NSAxMy43NjMgMTQuMDk1IDEzLjk1NjJDMTQuMDUxOCAxNC4wMDU1IDE0LjAwNTUgMTQuMDUxOCAxMy45NTYyIDE0LjA5NUMxMy43NjMgMTQuMjY0NSAxMy41MTY2IDE0LjM2MyAxMy4wMjQgMTQuNTYwMVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
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
