// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clipboard-copy` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTYgNC4wMDE5NUMxOC4xNzUgNC4wMTQwNiAxOS4zNTI5IDQuMTEwNTEgMjAuMTIxMyA0Ljg3ODg5QzIxIDUuNzU3NTcgMjEgNy4xNzE3OSAyMSAxMC4wMDAyVjE2LjAwMDJDMjEgMTguODI4NiAyMSAyMC4yNDI5IDIwLjEyMTMgMjEuMTIxNUMxOS4yNDI2IDIyLjAwMDIgMTcuODI4NCAyMi4wMDAyIDE1IDIyLjAwMDJIOUM2LjE3MTU3IDIyLjAwMDIgNC43NTczNiAyMi4wMDAyIDMuODc4NjggMjEuMTIxNUMzIDIwLjI0MjkgMyAxOC44Mjg2IDMgMTYuMDAwMlYxMC4wMDAyQzMgNy4xNzE3OSAzIDUuNzU3NTcgMy44Nzg2OCA0Ljg3ODg5QzQuNjQ3MDYgNC4xMTA1MSA1LjgyNDk3IDQuMDE0MDYgOCA0LjAwMTk1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggMy41QzggMi42NzE1NyA4LjY3MTU3IDIgOS41IDJIMTQuNUMxNS4zMjg0IDIgMTYgMi42NzE1NyAxNiAzLjVWNC41QzE2IDUuMzI4NDMgMTUuMzI4NCA2IDE0LjUgNkg5LjVDOC42NzE1NyA2IDggNS4zMjg0MyA4IDQuNVYzLjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDE0TDkgMTRNMTEuNSAxMS41TDkgMTRMMTEuNSAxNi41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class ClipboardCopyLineDuotoneIcon extends StatelessWidget {
  /// Creates the `clipboard-copy` icon in the lineDuotone style.
  const ClipboardCopyLineDuotoneIcon({
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
    name: 'clipboard-copy',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 14L9 14M11.5 11.5L9 14L11.5 16.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16 4.00195C18.175 4.01406 19.3529 4.11051 20.1213 4.87889C21 5.75757 21 7.17179 21 10.0002V16.0002C21 18.8286 21 20.2429 20.1213 21.1215C19.2426 22.0002 17.8284 22.0002 15 22.0002H9C6.17157 22.0002 4.75736 22.0002 3.87868 21.1215C3 20.2429 3 18.8286 3 16.0002V10.0002C3 7.17179 3 5.75757 3.87868 4.87889C4.64706 4.11051 5.82497 4.01406 8 4.00195" stroke="currentColor" stroke-linecap="round"/>''',
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
