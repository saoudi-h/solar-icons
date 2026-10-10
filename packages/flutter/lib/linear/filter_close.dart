// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `filter-close` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE1Ljk2MjUgMTIuMDk3NkMxNS40ODggMTIuNTA5NSAxNS4xOTU5IDEyLjk5MzUgMTUuMDYzNiAxMy41ODcyQzE1IDEzLjg3MjIgMTUgMTQuMjA1OCAxNSAxNC44NzI5VjE3LjU0MjRDMTUgMTkuNDUxOSAxNSAyMC40MDY2IDE0LjMzMjEgMjAuODI0NEMxMy42NjQxIDIxLjI0MjIgMTIuNzI0OCAyMC44NzUgMTAuODQ2MiAyMC4xNDA2QzkuOTUxMjggMTkuNzkwNyA5LjUwMzg1IDE5LjYxNTggOS4yNTE5MiAxOS4yNjEzQzkgMTguOTA2NyA5IDE4LjQ1MiA5IDE3LjU0MjRMOSAxNC44NzI5QzkgMTQuMjA1OCA5IDEzLjg3MjIgOC45MzY0NCAxMy41ODcyQzguODA0MDggMTIuOTkzNSA4LjUxMTk5IDEyLjUwOTUgOC4wMzc1MSAxMi4wOTc2QzcuODA5NjcgMTEuODk5OCA3LjQ5MTQ2IDExLjcyMDYgNi44NTUwNCAxMS4zNjI0TDMuOTQyMDIgOS43MjI1NUMyLjk5MzQ3IDkuMTg4NTggMi41MTkyIDguOTIxNiAyLjI1OTYgOC40OTE0MkMyIDguMDYxMjQgMiA3LjU0MjMyIDIgNi41MDQ0OFY1LjgxNDY2QzIgNC40ODc4MiAyIDMuODI0NCAyLjQzOTM0IDMuNDEyMkMyLjg3ODY4IDMgMy41ODU3OSAzIDUgM0gxNC4wMTM1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDguNjI4NDRMMTkuNzAxOSA2LjMzMDM0TTE5LjcwMTkgNi4zMzAzNEwxNy40MDM4IDQuMDMyMjVNMTkuNzAxOSA2LjMzMDM0TDIyIDQuMDMyMjNNMTkuNzAxOSA2LjMzMDM0TDE3LjQwMzggOC42Mjg0MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class FilterCloseLinearIcon extends StatelessWidget {
  /// Creates the `filter-close` icon in the linear style.
  const FilterCloseLinearIcon({
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
    name: 'filter-close',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M15.9625 12.0976C15.488 12.5095 15.1959 12.9935 15.0636 13.5872C15 13.8722 15 14.2058 15 14.8729V17.5424C15 19.4519 15 20.4066 14.3321 20.8244C13.6641 21.2422 12.7248 20.875 10.8462 20.1406C9.95128 19.7907 9.50385 19.6158 9.25192 19.2613C9 18.9067 9 18.452 9 17.5424L9 14.8729C9 14.2058 9 13.8722 8.93644 13.5872C8.80408 12.9935 8.51199 12.5095 8.03751 12.0976C7.80967 11.8998 7.49146 11.7206 6.85504 11.3624L3.94202 9.72255C2.99347 9.18858 2.5192 8.9216 2.2596 8.49142C2 8.06124 2 7.54232 2 6.50448V5.81466C2 4.48782 2 3.8244 2.43934 3.4122C2.87868 3 3.58579 3 5 3H14.0135" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 8.62844L19.7019 6.33034M19.7019 6.33034L17.4038 4.03225M19.7019 6.33034L22 4.03223M19.7019 6.33034L17.4038 8.62842" stroke="currentColor" stroke-linecap="round"/>''',
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
