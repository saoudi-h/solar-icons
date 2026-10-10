// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01IDEyQzUgOS4xOTEwOCA1IDcuNzg2NjEgNS42NzQxMiA2Ljc3NzcyQzUuOTY1OTYgNi4zNDA5NiA2LjM0MDk2IDUuOTY1OTYgNi43Nzc3MiA1LjY3NDEyQzcuNzg2NjEgNSA5LjE5MTA4IDUgMTIgNUMxNC44MDg5IDUgMTYuMjEzNCA1IDE3LjIyMjMgNS42NzQxMkMxNy42NTkgNS45NjU5NiAxOC4wMzQgNi4zNDA5NiAxOC4zMjU5IDYuNzc3NzJDMTkgNy43ODY2MSAxOSA5LjE5MTA4IDE5IDEyQzE5IDE0LjgwODkgMTkgMTYuMjEzNCAxOC4zMjU5IDE3LjIyMjNDMTguMDM0IDE3LjY1OSAxNy42NTkgMTguMDM0IDE3LjIyMjMgMTguMzI1OUMxNi4yMTM0IDE5IDE0LjgwODkgMTkgMTIgMTlDOS4xOTEwOCAxOSA3Ljc4NjYxIDE5IDYuNzc3NzIgMTguMzI1OUM2LjM0MDk2IDE4LjAzNCA1Ljk2NTk2IDE3LjY1OSA1LjY3NDEyIDE3LjIyMjNDNSAxNi4yMTM0IDUgMTQuODA4OSA1IDEyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiA5VjEyLjA3NjlMMTQgMTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNNyAySDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcgMjJIMTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class WatchSquareMinimalisticLinearIcon extends StatelessWidget {
  /// Creates the `watch-square-minimalistic` icon in the linear style.
  const WatchSquareMinimalisticLinearIcon({
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
    name: 'watch-square-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M5 12C5 9.19108 5 7.78661 5.67412 6.77772C5.96596 6.34096 6.34096 5.96596 6.77772 5.67412C7.78661 5 9.19108 5 12 5C14.8089 5 16.2134 5 17.2223 5.67412C17.659 5.96596 18.034 6.34096 18.3259 6.77772C19 7.78661 19 9.19108 19 12C19 14.8089 19 16.2134 18.3259 17.2223C18.034 17.659 17.659 18.034 17.2223 18.3259C16.2134 19 14.8089 19 12 19C9.19108 19 7.78661 19 6.77772 18.3259C6.34096 18.034 5.96596 17.659 5.67412 17.2223C5 16.2134 5 14.8089 5 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 9V12.0769L14 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 2H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 22H17" stroke="currentColor" stroke-linecap="round"/>''',
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
