// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zIDEwQzMgNi4yMjg3NiAzIDQuMzQzMTUgNC4xNzE1NyAzLjE3MTU3QzUuMzQzMTUgMiA3LjIyODc2IDIgMTEgMkgxM0MxNi43NzEyIDIgMTguNjU2OSAyIDE5LjgyODQgMy4xNzE1N0MyMSA0LjM0MzE1IDIxIDYuMjI4NzYgMjEgMTBWMTRDMjEgMTcuNzcxMiAyMSAxOS42NTY5IDE5LjgyODQgMjAuODI4NEMxOC42NTY5IDIyIDE2Ljc3MTIgMjIgMTMgMjJIMTFDNy4yMjg3NiAyMiA1LjM0MzE1IDIyIDQuMTcxNTcgMjAuODI4NEMzIDE5LjY1NjkgMyAxNy43NzEyIDMgMTRWMTBaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTYgMTJDNiAxMC41ODU4IDYgOS44Nzg2OCA2LjQzOTM0IDkuNDM5MzRDNi44Nzg2OCA5IDcuNTg1NzkgOSA5IDlIMTVDMTYuNDE0MiA5IDE3LjEyMTMgOSAxNy41NjA3IDkuNDM5MzRDMTggOS44Nzg2OCAxOCAxMC41ODU4IDE4IDEyVjE2QzE4IDE3LjQxNDIgMTggMTguMTIxMyAxNy41NjA3IDE4LjU2MDdDMTcuMTIxMyAxOSAxNi40MTQyIDE5IDE1IDE5SDlDNy41ODU3OSAxOSA2Ljg3ODY4IDE5IDYuNDM5MzQgMTguNTYwN0M2IDE4LjEyMTMgNiAxNy40MTQyIDYgMTZWMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcgNkgxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class FeedLinearIcon extends StatelessWidget {
  /// Creates the `feed` icon in the linear style.
  const FeedLinearIcon({
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
    name: 'feed',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2H13C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10V14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22H11C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14V10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 12C6 10.5858 6 9.87868 6.43934 9.43934C6.87868 9 7.58579 9 9 9H15C16.4142 9 17.1213 9 17.5607 9.43934C18 9.87868 18 10.5858 18 12V16C18 17.4142 18 18.1213 17.5607 18.5607C17.1213 19 16.4142 19 15 19H9C7.58579 19 6.87868 19 6.43934 18.5607C6 18.1213 6 17.4142 6 16V12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 6H12" stroke="currentColor" stroke-linecap="round"/>''',
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
