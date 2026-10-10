// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-id` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iOSIgY3k9IjkiIHI9IjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTMgMTVDMTMgMTYuMTA0NiAxMyAxNyA5IDE3QzUgMTcgNSAxNi4xMDQ2IDUgMTVDNSAxMy44OTU0IDYuNzkwODYgMTMgOSAxM0MxMS4yMDkxIDEzIDEzIDEzLjg5NTQgMTMgMTVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDEyQzIyIDE1Ljc3MTIgMjIgMTcuNjU2OSAyMC44Mjg0IDE4LjgyODRDMTkuNjU2OSAyMCAxNy43NzEyIDIwIDE0IDIwSDEwQzYuMjI4NzYgMjAgNC4zNDMxNSAyMCAzLjE3MTU3IDE4LjgyODRDMiAxNy42NTY5IDIgMTUuNzcxMiAyIDEyQzIgOC4yMjg3NiAyIDYuMzQzMTUgMy4xNzE1NyA1LjE3MTU3QzQuMzQzMTUgNCA2LjIyODc2IDQgMTAgNEgxNEMxNy43NzEyIDQgMTkuNjU2OSA0IDIwLjgyODQgNS4xNzE1N0MyMS4yOTggNS42NDExOCAyMS41Nzk0IDYuMjI1NSAyMS43NDggNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOSAxMkgxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOSA5SDE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE5IDE1SDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class UserIdBrokenIcon extends StatelessWidget {
  /// Creates the `user-id` icon in the broken style.
  const UserIdBrokenIcon({
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
    name: 'user-id',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="9" cy="9" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 15C13 16.1046 13 17 9 17C5 17 5 16.1046 5 15C5 13.8954 6.79086 13 9 13C11.2091 13 13 13.8954 13 15Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 15.7712 22 17.6569 20.8284 18.8284C19.6569 20 17.7712 20 14 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2 17.6569 2 15.7712 2 12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H14C17.7712 4 19.6569 4 20.8284 5.17157C21.298 5.64118 21.5794 6.2255 21.748 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 12H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 9H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 15H16" stroke="currentColor" stroke-linecap="round"/>''',
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
