// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTIiIGN5PSIxMiIgcj0iMTAiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTMuODg3NiA5LjkzNDhDMTQuOTYyNSAxMC44MTE3IDE1LjUgMTEuMjUwMSAxNS41IDEyQzE1LjUgMTIuNzQ5OSAxNC45NjI1IDEzLjE4ODMgMTMuODg3NiAxNC4wNjUyQzEzLjU5MDkgMTQuMzA3MyAxMy4yOTY2IDE0LjUzNTIgMTMuMDI2MSAxNC43MjUxQzEyLjc4ODggMTQuODkxNyAxMi41MjAxIDE1LjA2NCAxMi4yNDE5IDE1LjIzMzJDMTEuMTY5NSAxNS44ODUzIDEwLjYzMzMgMTYuMjExNCAxMC4xNTI0IDE1Ljg1MDRDOS42NzE1IDE1LjQ4OTQgOS42Mjc3OSAxNC43MzM2IDkuNTQwMzggMTMuMjIyMkM5LjUxNTY2IDEyLjc5NDcgOS41IDEyLjM3NTcgOS41IDEyQzkuNSAxMS42MjQzIDkuNTE1NjYgMTEuMjA1MyA5LjU0MDM4IDEwLjc3NzhDOS42Mjc3OSA5LjI2NjM2IDkuNjcxNSA4LjUxMDYxIDEwLjE1MjQgOC4xNDk2QzEwLjYzMzMgNy43ODg1OSAxMS4xNjk1IDguMTE0NjYgMTIuMjQxOSA4Ljc2Njc5QzEyLjUyMDEgOC45MzU5NyAxMi43ODg4IDkuMTA4MzEgMTMuMDI2MSA5LjI3NDkyQzEzLjI5NjYgOS40NjQ4MyAxMy41OTA5IDkuNjkyNzQgMTMuODg3NiA5LjkzNDhaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PlayCircleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `play-circle` icon in the lineDuotone style.
  const PlayCircleLineDuotoneIcon({
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
    name: 'play-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13.8876 9.9348C14.9625 10.8117 15.5 11.2501 15.5 12C15.5 12.7499 14.9625 13.1883 13.8876 14.0652C13.5909 14.3073 13.2966 14.5352 13.0261 14.7251C12.7888 14.8917 12.5201 15.064 12.2419 15.2332C11.1695 15.8853 10.6333 16.2114 10.1524 15.8504C9.6715 15.4894 9.62779 14.7336 9.54038 13.2222C9.51566 12.7947 9.5 12.3757 9.5 12C9.5 11.6243 9.51566 11.2053 9.54038 10.7778C9.62779 9.26636 9.6715 8.51061 10.1524 8.1496C10.6333 7.78859 11.1695 8.11466 12.2419 8.76679C12.5201 8.93597 12.7888 9.10831 13.0261 9.27492C13.2966 9.46483 13.5909 9.69274 13.8876 9.9348Z" stroke="currentColor" stroke-linecap="round"/>''',
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
