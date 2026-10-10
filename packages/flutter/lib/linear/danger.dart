// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiA3VjEzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcuODQzMDggMy44MDIxMUM5Ljg3MTggMi42MDA3IDEwLjg4NjIgMiAxMiAyQzEzLjExMzggMiAxNC4xMjgyIDIuNjAwNyAxNi4xNTY5IDMuODAyMTFMMTYuODQzMSA0LjIwODQ2QzE4Ljg3MTggNS40MDk4NyAxOS44ODYyIDYuMDEwNTcgMjAuNDQzMSA3QzIxIDcuOTg5NDMgMjEgOS4xOTA4NCAyMSAxMS41OTM3VjEyLjQwNjNDMjEgMTQuODA5MiAyMSAxNi4wMTA2IDIwLjQ0MzEgMTdDMTkuODg2MiAxNy45ODk0IDE4Ljg3MTggMTguNTkwMSAxNi44NDMxIDE5Ljc5MTVMMTYuMTU2OSAyMC4xOTc5QzE0LjEyODIgMjEuMzk5MyAxMy4xMTM4IDIyIDEyIDIyQzEwLjg4NjIgMjIgOS44NzE4IDIxLjM5OTMgNy44NDMwOCAyMC4xOTc5TDcuMTU2OTIgMTkuNzkxNUM1LjEyODIgMTguNTkwMSA0LjExMzg0IDE3Ljk4OTQgMy41NTY5MiAxN0MzIDE2LjAxMDYgMyAxNC44MDkyIDMgMTIuNDA2M1YxMS41OTM3QzMgOS4xOTA4NCAzIDcuOTg5NDMgMy41NTY5MiA3QzQuMTEzODQgNi4wMTA1NyA1LjEyODIgNS40MDk4NyA3LjE1NjkyIDQuMjA4NDZMNy44NDMwOCAzLjgwMjExWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAxNkgxMi4wMDAxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class DangerLinearIcon extends StatelessWidget {
  /// Creates the `danger` icon in the linear style.
  const DangerLinearIcon({
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
    name: 'danger',
    style: SolarIconStyle.linear,
    body: r'''<path d="M12 7V13" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.84308 3.80211C9.8718 2.6007 10.8862 2 12 2C13.1138 2 14.1282 2.6007 16.1569 3.80211L16.8431 4.20846C18.8718 5.40987 19.8862 6.01057 20.4431 7C21 7.98943 21 9.19084 21 11.5937V12.4063C21 14.8092 21 16.0106 20.4431 17C19.8862 17.9894 18.8718 18.5901 16.8431 19.7915L16.1569 20.1979C14.1282 21.3993 13.1138 22 12 22C10.8862 22 9.8718 21.3993 7.84308 20.1979L7.15692 19.7915C5.1282 18.5901 4.11384 17.9894 3.55692 17C3 16.0106 3 14.8092 3 12.4063V11.5937C3 9.19084 3 7.98943 3.55692 7C4.11384 6.01057 5.1282 5.40987 7.15692 4.20846L7.84308 3.80211Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 16H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
