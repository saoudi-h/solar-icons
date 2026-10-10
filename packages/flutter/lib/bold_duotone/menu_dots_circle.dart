// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `menu-dots-circle` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTcuNTIyOCA2LjQ3NzE1IDIyIDEyIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNOCAxM0M4LjU1MjI4IDEzIDkgMTIuNTUyMyA5IDEyQzkgMTEuNDQ3NyA4LjU1MjI4IDExIDggMTFDNy40NDc3MiAxMSA3IDExLjQ0NzcgNyAxMkM3IDEyLjU1MjMgNy40NDc3MiAxMyA4IDEzWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIgMTNDMTIuNTUyMyAxMyAxMyAxMi41NTIzIDEzIDEyQzEzIDExLjQ0NzcgMTIuNTUyMyAxMSAxMiAxMUMxMS40NDc3IDExIDExIDExLjQ0NzcgMTEgMTJDMTEgMTIuNTUyMyAxMS40NDc3IDEzIDEyIDEzWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTYgMTNDMTYuNTUyMyAxMyAxNyAxMi41NTIzIDE3IDEyQzE3IDExLjQ0NzcgMTYuNTUyMyAxMSAxNiAxMUMxNS40NDc3IDExIDE1IDExLjQ0NzcgMTUgMTJDMTUgMTIuNTUyMyAxNS40NDc3IDEzIDE2IDEzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MenuDotsCircleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `menu-dots-circle` icon in the boldDuotone style.
  const MenuDotsCircleBoldDuotoneIcon({
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
    name: 'menu-dots-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8 13C8.55228 13 9 12.5523 9 12C9 11.4477 8.55228 11 8 11C7.44772 11 7 11.4477 7 12C7 12.5523 7.44772 13 8 13Z" fill="currentColor"/>
<path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" fill="currentColor"/>
<path d="M16 13C16.5523 13 17 12.5523 17 12C17 11.4477 16.5523 11 16 11C15.4477 11 15 11.4477 15 12C15 12.5523 15.4477 13 16 13Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
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
