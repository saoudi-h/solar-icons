// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik02IDExQzYgOC4xNzE1NyA2IDYuNzU3MzYgNi44Nzg2OCA1Ljg3ODY4QzcuNzU3MzYgNSA5LjE3MTU3IDUgMTIgNUgxNUMxNy44Mjg0IDUgMTkuMjQyNiA1IDIwLjEyMTMgNS44Nzg2OEMyMSA2Ljc1NzM2IDIxIDguMTcxNTcgMjEgMTFWMTZDMjEgMTguODI4NCAyMSAyMC4yNDI2IDIwLjEyMTMgMjEuMTIxM0MxOS4yNDI2IDIyIDE3LjgyODQgMjIgMTUgMjJIMTJDOS4xNzE1NyAyMiA3Ljc1NzM2IDIyIDYuODc4NjggMjEuMTIxM0M2IDIwLjI0MjYgNiAxOC44Mjg0IDYgMTZWMTFaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTYgMTlDNC4zNDMxNSAxOSAzIDE3LjY1NjkgMyAxNlYxMEMzIDYuMjI4NzYgMyA0LjM0MzE1IDQuMTcxNTcgMy4xNzE1N0M1LjM0MzE1IDIgNy4yMjg3NiAyIDExIDJIMTVDMTYuNjU2OSAyIDE4IDMuMzQzMTUgMTggNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNS43OTc5IDE1Ljc5NzlMMTMuNDk5OCAxMy40OTk4TTEzLjQ5OTggMTMuNDk5OEwxMS4yMDE3IDExLjIwMTdNMTMuNDk5OCAxMy40OTk4TDE1Ljc5NzkgMTEuMjAxN00xMy40OTk4IDEzLjQ5OThMMTEuMjAxNyAxNS43OTc5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class CopyCloseLinearIcon extends StatelessWidget {
  /// Creates the `copy-close` icon in the linear style.
  const CopyCloseLinearIcon({
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
    name: 'copy-close',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6 11C6 8.17157 6 6.75736 6.87868 5.87868C7.75736 5 9.17157 5 12 5H15C17.8284 5 19.2426 5 20.1213 5.87868C21 6.75736 21 8.17157 21 11V16C21 18.8284 21 20.2426 20.1213 21.1213C19.2426 22 17.8284 22 15 22H12C9.17157 22 7.75736 22 6.87868 21.1213C6 20.2426 6 18.8284 6 16V11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 19C4.34315 19 3 17.6569 3 16V10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2H15C16.6569 2 18 3.34315 18 5" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.7979 15.7979L13.4998 13.4998M13.4998 13.4998L11.2017 11.2017M13.4998 13.4998L15.7979 11.2017M13.4998 13.4998L11.2017 15.7979" stroke="currentColor" stroke-linecap="round"/>''',
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
