// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clipboard-paste` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2IDQuMDAxOTVDMTguMTc1IDQuMDE0MDYgMTkuMzUyOSA0LjExMDUxIDIwLjEyMTMgNC44Nzg4OUMyMSA1Ljc1NzU3IDIxIDcuMTcxNzkgMjEgMTAuMDAwMlYxNi4wMDAyQzIxIDE4LjgyODYgMjEgMjAuMjQyOSAyMC4xMjEzIDIxLjEyMTVDMTkuMjQyNiAyMi4wMDAyIDE3LjgyODQgMjIuMDAwMiAxNSAyMi4wMDAySDlDNi4xNzE1NyAyMi4wMDAyIDQuNzU3MzYgMjIuMDAwMiAzLjg3ODY4IDIxLjEyMTVDMyAyMC4yNDI5IDMgMTguODI4NiAzIDE2LjAwMDJWMTAuMDAwMkMzIDcuMTcxNzkgMyA1Ljc1NzU3IDMuODc4NjggNC44Nzg4OUM0LjY0NzA2IDQuMTEwNTEgNS44MjQ5NyA0LjAxNDA2IDggNC4wMDE5NSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDMuNUM4IDIuNjcxNTcgOC42NzE1NyAyIDkuNSAySDE0LjVDMTUuMzI4NCAyIDE2IDIuNjcxNTcgMTYgMy41VjQuNUMxNiA1LjMyODQzIDE1LjMyODQgNiAxNC41IDZIOS41QzguNjcxNTcgNiA4IDUuMzI4NDMgOCA0LjVWMy41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDE0TDE1IDE0TTEyLjUgMTYuNUwxNSAxNEwxMi41IDExLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class ClipboardPasteLinearIcon extends StatelessWidget {
  /// Creates the `clipboard-paste` icon in the linear style.
  const ClipboardPasteLinearIcon({
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
    name: 'clipboard-paste',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16 4.00195C18.175 4.01406 19.3529 4.11051 20.1213 4.87889C21 5.75757 21 7.17179 21 10.0002V16.0002C21 18.8286 21 20.2429 20.1213 21.1215C19.2426 22.0002 17.8284 22.0002 15 22.0002H9C6.17157 22.0002 4.75736 22.0002 3.87868 21.1215C3 20.2429 3 18.8286 3 16.0002V10.0002C3 7.17179 3 5.75757 3.87868 4.87889C4.64706 4.11051 5.82497 4.01406 8 4.00195" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 14L15 14M12.5 16.5L15 14L12.5 11.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
