// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ghost` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjIgMTkuNzIzVjEyLjMwMDZDMjIgNi42MTE3MyAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjYxMTczIDIgMTIuMzAwNlYxOS43MjNDMiAyMS4wNDUzIDMuMzUwOTggMjEuOTA1NCA0LjQ5OTIgMjEuMzE0QzUuNDI3MjYgMjAuODM2IDYuNTMyOCAyMC45MDY5IDcuMzk2MTQgMjEuNDk5OEM4LjM2NzM2IDIyLjE2NjcgOS42MzI2NCAyMi4xNjY3IDEwLjYwMzkgMjEuNDk5OEwxMC45NTY1IDIxLjI1NzZDMTEuNTg4NCAyMC44MjM3IDEyLjQxMTYgMjAuODIzNyAxMy4wNDM1IDIxLjI1NzZMMTMuMzk2MSAyMS40OTk4QzE0LjM2NzQgMjIuMTY2NyAxNS42MzI2IDIyLjE2NjcgMTYuNjAzOSAyMS40OTk4QzE3LjQ2NzIgMjAuOTA2OSAxOC41NzI3IDIwLjgzNiAxOS41MDA4IDIxLjMxNEMyMC42NDkgMjEuOTA1NCAyMiAyMS4wNDUzIDIyIDE5LjcyM1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUuNSAxMC41QzE1LjUgMTEuMDUyMyAxNS4yNzYxIDExLjUgMTUgMTEuNUMxNC43MjM5IDExLjUgMTQuNSAxMS4wNTIzIDE0LjUgMTAuNUMxNC41IDkuOTQ3NzIgMTQuNzIzOSA5LjUgMTUgOS41QzE1LjI3NjEgOS41IDE1LjUgOS45NDc3MiAxNS41IDEwLjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8ZWxsaXBzZSBjeD0iOSIgY3k9IjEwLjUiIHJ4PSIwLjUiIHJ5PSIxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
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
