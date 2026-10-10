// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `feed` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwLjk2NSA3QzIwLjg4NzMgNS4xMjc3IDIwLjYzNjYgMy45Nzk3NSAxOS44Mjg0IDMuMTcxNTdDMTguNjU2OSAyIDE2Ljc3MTIgMiAxMyAySDExQzcuMjI4NzYgMiA1LjM0MzE1IDIgNC4xNzE1NyAzLjE3MTU3QzMgNC4zNDMxNSAzIDYuMjI4NzYgMyAxMFYxNEMzIDE3Ljc3MTIgMyAxOS42NTY5IDQuMTcxNTcgMjAuODI4NEM1LjM0MzE1IDIyIDcuMjI4NzYgMjIgMTEgMjJIMTNDMTYuNzcxMiAyMiAxOC42NTY5IDIyIDE5LjgyODQgMjAuODI4NEMyMSAxOS42NTY5IDIxIDE3Ljc3MTIgMjEgMTRWMTEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNiAxMkM2IDEwLjU4NTggNiA5Ljg3ODY4IDYuNDM5MzQgOS40MzkzNEM2Ljg3ODY4IDkgNy41ODU3OSA5IDkgOUgxNUMxNi40MTQyIDkgMTcuMTIxMyA5IDE3LjU2MDcgOS40MzkzNEMxOCA5Ljg3ODY4IDE4IDEwLjU4NTggMTggMTJWMTZDMTggMTcuNDE0MiAxOCAxOC4xMjEzIDE3LjU2MDcgMTguNTYwN0MxNy4xMjEzIDE5IDE2LjQxNDIgMTkgMTUgMTlIOUM3LjU4NTc5IDE5IDYuODc4NjggMTkgNi40MzkzNCAxOC41NjA3QzYgMTguMTIxMyA2IDE3LjQxNDIgNiAxNlYxMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNyA2SDEyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class FeedBrokenIcon extends StatelessWidget {
  /// Creates the `feed` icon in the broken style.
  const FeedBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20.965 7C20.8873 5.1277 20.6366 3.97975 19.8284 3.17157C18.6569 2 16.7712 2 13 2H11C7.22876 2 5.34315 2 4.17157 3.17157C3 4.34315 3 6.22876 3 10V14C3 17.7712 3 19.6569 4.17157 20.8284C5.34315 22 7.22876 22 11 22H13C16.7712 22 18.6569 22 19.8284 20.8284C21 19.6569 21 17.7712 21 14V11" stroke="currentColor" stroke-linecap="round"/>
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
