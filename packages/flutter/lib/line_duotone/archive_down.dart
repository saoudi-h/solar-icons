// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `archive-down` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjAuNSA3VjEzQzIwLjUgMTYuNzcxMiAyMC41IDE4LjY1NjkgMTkuMzI4NCAxOS44Mjg0QzE4LjE1NjkgMjEgMTYuMjcxMiAyMSAxMi41IDIxSDExLjVDNy43Mjg3NiAyMSA1Ljg0MzE1IDIxIDQuNjcxNTcgMTkuODI4NEMzLjUgMTguNjU2OSAzLjUgMTYuNzcxMiAzLjUgMTNWNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDVDMiA0LjA1NzE5IDIgMy41ODU3OSAyLjI5Mjg5IDMuMjkyODlDMi41ODU3OSAzIDMuMDU3MTkgMyA0IDNIMjBDMjAuOTQyOCAzIDIxLjQxNDIgMyAyMS43MDcxIDMuMjkyODlDMjIgMy41ODU3OSAyMiA0LjA1NzE5IDIyIDVDMjIgNS45NDI4MSAyMiA2LjQxNDIxIDIxLjcwNzEgNi43MDcxMUMyMS40MTQyIDcgMjAuOTQyOCA3IDIwIDdINEMzLjA1NzE5IDcgMi41ODU3OSA3IDIuMjkyODkgNi43MDcxMUMyIDYuNDE0MjEgMiA1Ljk0MjgxIDIgNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgN0wxMiAxNk05IDEyLjY2NjdMMTIgMTZMMTUgMTIuNjY2NyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class ArchiveDownLineDuotoneIcon extends StatelessWidget {
  /// Creates the `archive-down` icon in the lineDuotone style.
  const ArchiveDownLineDuotoneIcon({
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
    name: 'archive-down',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 5C2 4.05719 2 3.58579 2.29289 3.29289C2.58579 3 3.05719 3 4 3H20C20.9428 3 21.4142 3 21.7071 3.29289C22 3.58579 22 4.05719 22 5C22 5.94281 22 6.41421 21.7071 6.70711C21.4142 7 20.9428 7 20 7H4C3.05719 7 2.58579 7 2.29289 6.70711C2 6.41421 2 5.94281 2 5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 7L12 16M9 12.6667L12 16L15 12.6667" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.5 7V13C20.5 16.7712 20.5 18.6569 19.3284 19.8284C18.1569 21 16.2712 21 12.5 21H11.5C7.72876 21 5.84315 21 4.67157 19.8284C3.5 18.6569 3.5 16.7712 3.5 13V7" stroke="currentColor" stroke-linecap="round"/>''',
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
