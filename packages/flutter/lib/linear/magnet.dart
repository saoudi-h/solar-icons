// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `magnet` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3IDJIMTkuNUMyMC4zMjg0IDIgMjEgMi42NzE1NyAyMSAzLjVWNS41QzIxIDYuMzI4NDMgMjAuMzI4NCA3IDE5LjUgN0gxN00xNyAySDEzQzcuNDc3MTUgMiAzIDYuNDc3MTUgMyAxMkMzIDE3LjUyMjggNy40NzcxNSAyMiAxMyAyMkgxN00xNyAyVjdNMTcgN0gxM0MxMC4yMzg2IDcgOCA5LjIzODU4IDggMTJDOCAxNC43NjE0IDEwLjIzODYgMTcgMTMgMTdIMTdNMTcgMTdIMTkuNUMyMC4zMjg0IDE3IDIxIDE3LjY3MTYgMjEgMTguNVYyMC41QzIxIDIxLjMyODQgMjAuMzI4NCAyMiAxOS41IDIySDE3TTE3IDE3VjIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class MagnetLinearIcon extends StatelessWidget {
  /// Creates the `magnet` icon in the linear style.
  const MagnetLinearIcon({
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
    name: 'magnet',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M17 2H19.5C20.3284 2 21 2.67157 21 3.5V5.5C21 6.32843 20.3284 7 19.5 7H17M17 2H13C7.47715 2 3 6.47715 3 12C3 17.5228 7.47715 22 13 22H17M17 2V7M17 7H13C10.2386 7 8 9.23858 8 12C8 14.7614 10.2386 17 13 17H17M17 17H19.5C20.3284 17 21 17.6716 21 18.5V20.5C21 21.3284 20.3284 22 19.5 22H17M17 17V22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
