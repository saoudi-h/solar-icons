// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `fire-minimalistic` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE2IDE5Ljk5NzJDMTQuODIzMyAyMC42MzUgMTMuNDU3MSAyMSAxMiAyMUM3LjU4MTcyIDIxIDQgMTcuNjQzOSA0IDEzLjUwNEM0IDEyLjM3MjcgNC4xNDkxNiAxMS4zMTI0IDQuNDA1MjcgMTAuMzI4NE0xOS4xNzYxIDE2LjgyMTFDMTkuNzAzNiAxNS44MjExIDIwIDE0LjY5NSAyMCAxMy41MDRDMjAgOS43NjI1NyAxNy45NjU0IDYuODM4MTEgMTYuNTYyIDUuNDQ0MzZDMTYuMzAxNyA1LjE4NTg0IDE1Ljg2ODMgNS4zMDAwNiAxNS43MjEyIDUuNjMyODhDMTQuOTc0MiA3LjMyMjkgMTMuNDE3OCA5Ljc1NjA3IDExLjQyODYgOS43NTYwN0MxMC4xOTc1IDkuOTIwODYgOC4zMTY4OCA4Ljg2ODQ0IDkuODM0ODMgMy42NDg2OEM5Ljk3MTUxIDMuMTc4NjggOS40Njk3MiAyLjgwMTEzIDkuMDg2NDUgMy4xMTUzOUM4LjA5MzM1IDMuOTI5NjYgNi45NTA1MiA1LjEyMDYgNiA2LjY0NzQxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class FireMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `fire-minimalistic` icon in the broken style.
  const FireMinimalisticBrokenIcon({
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
    name: 'fire-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16 19.9972C14.8233 20.635 13.4571 21 12 21C7.58172 21 4 17.6439 4 13.504C4 12.3727 4.14916 11.3124 4.40527 10.3284M19.1761 16.8211C19.7036 15.8211 20 14.695 20 13.504C20 9.76257 17.9654 6.83811 16.562 5.44436C16.3017 5.18584 15.8683 5.30006 15.7212 5.63288C14.9742 7.3229 13.4178 9.75607 11.4286 9.75607C10.1975 9.92086 8.31688 8.86844 9.83483 3.64868C9.97151 3.17868 9.46972 2.80113 9.08645 3.11539C8.09335 3.92966 6.95052 5.1206 6 6.64741" stroke="currentColor" stroke-linecap="round"/>''',
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
