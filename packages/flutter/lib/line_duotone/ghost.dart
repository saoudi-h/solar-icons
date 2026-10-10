// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIyIDE5LjcyM1YxMi4zMDA2QzIyIDYuNjExNzMgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi42MTE3MyAyIDEyLjMwMDZWMTkuNzIzQzIgMjEuMDQ1MyAzLjM1MDk4IDIxLjkwNTQgNC40OTkyIDIxLjMxNEM1LjQyNzI2IDIwLjgzNiA2LjUzMjggMjAuOTA2OSA3LjM5NjE0IDIxLjQ5OThDOC4zNjczNiAyMi4xNjY3IDkuNjMyNjQgMjIuMTY2NyAxMC42MDM5IDIxLjQ5OThMMTAuOTU2NSAyMS4yNTc2QzExLjU4ODQgMjAuODIzNyAxMi40MTE2IDIwLjgyMzcgMTMuMDQzNSAyMS4yNTc2TDEzLjM5NjEgMjEuNDk5OEMxNC4zNjc0IDIyLjE2NjcgMTUuNjMyNiAyMi4xNjY3IDE2LjYwMzkgMjEuNDk5OEMxNy40NjcyIDIwLjkwNjkgMTguNTcyNyAyMC44MzYgMTkuNTAwOCAyMS4zMTRDMjAuNjQ5IDIxLjkwNTQgMjIgMjEuMDQ1MyAyMiAxOS43MjNaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1LjUgMTAuNUMxNS41IDExLjA1MjMgMTUuMjc2MSAxMS41IDE1IDExLjVDMTQuNzIzOSAxMS41IDE0LjUgMTEuMDUyMyAxNC41IDEwLjVDMTQuNSA5Ljk0NzcyIDE0LjcyMzkgOS41IDE1IDkuNUMxNS4yNzYxIDkuNSAxNS41IDkuOTQ3NzIgMTUuNSAxMC41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGVsbGlwc2UgY3g9IjkiIGN5PSIxMC41IiByeD0iMC41IiByeT0iMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class GhostLineDuotoneIcon extends StatelessWidget {
  /// Creates the `ghost` icon in the lineDuotone style.
  const GhostLineDuotoneIcon({
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
    name: 'ghost',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15.5 10.5C15.5 11.0523 15.2761 11.5 15 11.5C14.7239 11.5 14.5 11.0523 14.5 10.5C14.5 9.94772 14.7239 9.5 15 9.5C15.2761 9.5 15.5 9.94772 15.5 10.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="10.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 19.723V12.3006C22 6.61173 17.5228 2 12 2C6.47715 2 2 6.61173 2 12.3006V19.723C2 21.0453 3.35098 21.9054 4.4992 21.314C5.42726 20.836 6.5328 20.9069 7.39614 21.4998C8.36736 22.1667 9.63264 22.1667 10.6039 21.4998L10.9565 21.2576C11.5884 20.8237 12.4116 20.8237 13.0435 21.2576L13.3961 21.4998C14.3674 22.1667 15.6326 22.1667 16.6039 21.4998C17.4672 20.9069 18.5727 20.836 19.5008 21.314C20.649 21.9054 22 21.0453 22 19.723Z" stroke="currentColor" stroke-linecap="round"/>''',
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
