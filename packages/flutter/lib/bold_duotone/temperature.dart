// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `temperature` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTcuNSAxNi41QzE3LjUgMTkuNTM3NiAxNS4wMzc2IDIyIDEyIDIyQzguOTYyNDMgMjIgNi41IDE5LjUzNzYgNi41IDE2LjVDNi41IDE0Ljc2MzYgNy4zMDQ2NSAxMy4yMTUyIDguNTYxNDEgMTIuMjA3MkM4LjgyNTA1IDExLjk5NTcgOSAxMS42ODU3IDkgMTEuMzQ3N1Y1QzkgMy4zNDMxNSAxMC4zNDMxIDIgMTIgMkMxMy42NTY5IDIgMTUgMy4zNDMxNSAxNSA1VjExLjM0NzdDMTUgMTEuNjg1NyAxNS4xNzQ5IDExLjk5NTcgMTUuNDM4NiAxMi4yMDcyQzE2LjY5NTQgMTMuMjE1MiAxNy41IDE0Ljc2MzYgMTcuNSAxNi41WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIuNzUgNUMxMi43NSA0LjU4NTc5IDEyLjQxNDIgNC4yNSAxMiA0LjI1QzExLjU4NTggNC4yNSAxMS4yNSA0LjU4NTc5IDExLjI1IDVWMTMuMzgwNEMxMS4yNSAxMy44MTcyIDEwLjk1MjcgMTQuMTg3NiAxMC41OTIgMTQuNDMzOUM5LjkzMjczIDE0Ljg4NDEgOS41IDE1LjY0MTUgOS41IDE2LjVDOS41IDE3Ljg4MDcgMTAuNjE5MyAxOSAxMiAxOUMxMy4zODA3IDE5IDE0LjUgMTcuODgwNyAxNC41IDE2LjVDMTQuNSAxNS42NDE1IDE0LjA2NzMgMTQuODg0MSAxMy40MDggMTQuNDMzOUMxMy4wNDczIDE0LjE4NzYgMTIuNzUgMTMuODE3MiAxMi43NSAxMy4zODA0VjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class TemperatureBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `temperature` icon in the boldDuotone style.
  const TemperatureBoldDuotoneIcon({
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
    name: 'temperature',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 5C12.75 4.58579 12.4142 4.25 12 4.25C11.5858 4.25 11.25 4.58579 11.25 5V13.3804C11.25 13.8172 10.9527 14.1876 10.592 14.4339C9.93273 14.8841 9.5 15.6415 9.5 16.5C9.5 17.8807 10.6193 19 12 19C13.3807 19 14.5 17.8807 14.5 16.5C14.5 15.6415 14.0673 14.8841 13.408 14.4339C13.0473 14.1876 12.75 13.8172 12.75 13.3804V5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M17.5 16.5C17.5 19.5376 15.0376 22 12 22C8.96243 22 6.5 19.5376 6.5 16.5C6.5 14.7636 7.30465 13.2152 8.56141 12.2072C8.82505 11.9957 9 11.6857 9 11.3477V5C9 3.34315 10.3431 2 12 2C13.6569 2 15 3.34315 15 5V11.3477C15 11.6857 15.1749 11.9957 15.4386 12.2072C16.6954 13.2152 17.5 14.7636 17.5 16.5Z" fill="currentColor"/>''',
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
