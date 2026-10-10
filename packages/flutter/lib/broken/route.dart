// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `route` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3Ljg1NzggNi4xNDIwNEMyMC42MTkxIDguOTAzNDEgMjEuOTk5OCAxMC4yODQxIDIxLjk5OTggMTEuOTk5OEMyMS45OTk4IDEzLjcxNTUgMjAuNjE5MSAxNS4wOTYyIDE3Ljg1NzggMTcuODU3NUMxNS4wOTY0IDIwLjYxODkgMTMuNzE1NyAyMS45OTk2IDEyIDIxLjk5OTZDMTAuMjg0MyAyMS45OTk2IDguOTAzNjUgMjAuNjE4OSA2LjE0MjI5IDE3Ljg1NzVDMy4zODA5MyAxNS4wOTYyIDIuMDAwMjQgMTMuNzE1NSAyLjAwMDI0IDExLjk5OThDMi4wMDAyNCAxMC4yODQxIDMuMzgwOTMgOC45MDM0MSA2LjE0MjI5IDYuMTQyMDRDOC45MDM2NSAzLjM4MDY4IDEwLjI4NDMgMiAxMiAyQzEzLjE0MDggMiAxNC4xMzM1IDIuNjEwNDEgMTUuNDgyNCAzLjgzMTIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkgMTRDOSAxMy4wNTcyIDkgMTIuNTg1OCA5LjI5Mjg5IDEyLjI5MjlDOS41ODU3OSAxMiAxMC4wNTcyIDEyIDExIDEySDE1TTEzIDE0TDE1IDEyTDEzIDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class RouteBrokenIcon extends StatelessWidget {
  /// Creates the `route` icon in the broken style.
  const RouteBrokenIcon({
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
    name: 'route',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M17.8578 6.14204C20.6191 8.90341 21.9998 10.2841 21.9998 11.9998C21.9998 13.7155 20.6191 15.0962 17.8578 17.8575C15.0964 20.6189 13.7157 21.9996 12 21.9996C10.2843 21.9996 8.90365 20.6189 6.14229 17.8575C3.38093 15.0962 2.00024 13.7155 2.00024 11.9998C2.00024 10.2841 3.38093 8.90341 6.14229 6.14204C8.90365 3.38068 10.2843 2 12 2C13.1408 2 14.1335 2.61041 15.4824 3.83123" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 14C9 13.0572 9 12.5858 9.29289 12.2929C9.58579 12 10.0572 12 11 12H15M13 14L15 12L13 10" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
