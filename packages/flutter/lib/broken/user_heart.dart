// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-heart` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTAiIGN5PSI2IiByPSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE2IDkuNjk2NzNDMTYgMTAuNjgxMiAxNy4xNjQ5IDExLjcyMTMgMTguMDQyOSAxMi4zNjU2QzE4LjQ2MjYgMTIuNjczNiAxOC42NzI1IDEyLjgyNzYgMTkgMTIuODI3NkMxOS4zMjc1IDEyLjgyNzYgMTkuNTM3NCAxMi42NzM2IDE5Ljk1NzEgMTIuMzY1NkMyMC44MzUyIDExLjcyMTQgMjIgMTAuNjgxMiAyMiA5LjY5NjcyQzIyIDguMDIzNSAyMC4zNSA3LjM5ODc5IDE5IDguNjkxMzVDMTcuNjUgNy4zOTg3OSAxNiA4LjAyMzUgMTYgOS42OTY3M1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTcuOTk3NSAxOEMxOCAxNy44MzU4IDE4IDE3LjY2OSAxOCAxNy41QzE4IDE1LjAxNDcgMTQuNDE4MyAxMyAxMCAxM0M1LjU4MTcyIDEzIDIgMTUuMDE0NyAyIDE3LjVDMiAxOS45ODUzIDIgMjIgMTAgMjJDMTIuMjMxIDIyIDEzLjgzOTggMjEuODQzMyAxNSAyMS41NjM0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class UserHeartBrokenIcon extends StatelessWidget {
  /// Creates the `user-heart` icon in the broken style.
  const UserHeartBrokenIcon({
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
    name: 'user-heart',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="10" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 9.69673C16 10.6812 17.1649 11.7213 18.0429 12.3656C18.4626 12.6736 18.6725 12.8276 19 12.8276C19.3275 12.8276 19.5374 12.6736 19.9571 12.3656C20.8352 11.7214 22 10.6812 22 9.69672C22 8.0235 20.35 7.39879 19 8.69135C17.65 7.39879 16 8.0235 16 9.69673Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17.9975 18C18 17.8358 18 17.669 18 17.5C18 15.0147 14.4183 13 10 13C5.58172 13 2 15.0147 2 17.5C2 19.9853 2 22 10 22C12.231 22 13.8398 21.8433 15 21.5634" stroke="currentColor" stroke-linecap="round"/>''',
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
