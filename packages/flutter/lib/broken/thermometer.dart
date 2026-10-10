// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `thermometer` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjA5NTUgMTBMMTguMzk2IDExLjMwMDZNMTMuODk2IDEzLjE5OTRMMTUuMTk2NiAxNC41TTEwLjY4NjggMTYuNDA4N0wxMS45ODczIDE3LjcwOTNNMTMuMzAzNCA1TDE0LjEyMzYgNC4xNzk4MUMxNS42OTY3IDIuNjA2NzMgMTguMjQ3MSAyLjYwNjczIDE5LjgyMDIgNC4xNzk4MUMyMS4zOTMzIDUuNzUyODggMjEuMzkzMyA4LjMwMzM0IDE5LjgyMDIgOS44NzY0MkwxMC44Nzc4IDE4LjgxODhDMTAuMjI4OSAxOS40Njc3IDkuMzIwMTMgMTkuNzg2NSA4LjQwNzk5IDE5LjY4NTFMNy42MDg4NiAxOS41OTY0QzcuMDAwNzYgMTkuNTI4OCA2LjM5NDkyIDE5Ljc0MTMgNS45NjIyOSAyMC4xNzM5TDUuNTc4NjYgMjAuNTU3NkM0Ljk4ODc1IDIxLjE0NzUgNC4wMzIzMyAyMS4xNDc1IDMuNDQyNDMgMjAuNTU3NkMyLjg1MjUyIDE5Ljk2NzcgMi44NTI1MiAxOS4wMTEyIDMuNDQyNDMgMTguNDIxM0wzLjgyNjA2IDE4LjAzNzdDNC4yNTg2OSAxNy42MDUxIDQuNDcxMjEgMTYuOTk5MiA0LjQwMzY0IDE2LjM5MTFMNC4zMTQ4NSAxNS41OTJDNC4yMTM1IDE0LjY3OTkgNC41MzIyOCAxMy43NzExIDUuMTgxMjMgMTMuMTIyMkwxMC4zMDM0IDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSAxNUwxNS41IDguNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ThermometerBrokenIcon extends StatelessWidget {
  /// Creates the `thermometer` icon in the broken style.
  const ThermometerBrokenIcon({
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
    name: 'thermometer',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M17.0955 10L18.396 11.3006M13.896 13.1994L15.1966 14.5M10.6868 16.4087L11.9873 17.7093M13.3034 5L14.1236 4.17981C15.6967 2.60673 18.2471 2.60673 19.8202 4.17981C21.3933 5.75288 21.3933 8.30334 19.8202 9.87642L10.8778 18.8188C10.2289 19.4677 9.32013 19.7865 8.40799 19.6851L7.60886 19.5964C7.00076 19.5288 6.39492 19.7413 5.96229 20.1739L5.57866 20.5576C4.98875 21.1475 4.03233 21.1475 3.44243 20.5576C2.85252 19.9677 2.85252 19.0112 3.44243 18.4213L3.82606 18.0377C4.25869 17.6051 4.47121 16.9992 4.40364 16.3911L4.31485 15.592C4.2135 14.6799 4.53228 13.7711 5.18123 13.1222L10.3034 8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 15L15.5 8.5" stroke="currentColor" stroke-linecap="round"/>''',
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
