// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `refresh` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuNjc5ODEgMTNMMy42Nzk4MSAxMS4zMzMzQzMuNjc5ODEgNi43MzA5NiA3LjQ0MDIgMyAxMi4wNzg5IDNDMTIuMjIwMSAzIDEyLjM2MDUgMy4wMDM0NiAxMi41IDMuMDEwMjlNMiAxMS4zMzMzTDMuNjc5ODEgMTNMNS4zNTk2MiAxMS4zMzMzTTE5LjI1NDUgN0MxOC41NjcgNS44ODE3NiAxNy42MjE1IDQuOTM2OCAxNi41IDQuMjQ2NiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMC4zMTM3IDExVjEyLjY2NjdDMjAuMzEzNyAxNy4yNjkgMTYuNTM4OSAyMSAxMS44ODI1IDIxQzExLjc1NDMgMjEgMTEuNjI2OCAyMC45OTcyIDExLjUgMjAuOTkxNk0yMS45OTk5IDEyLjY2NjdMMjAuMzEzNyAxMUwxOC42Mjc0IDEyLjY2NjdNNC42Nzk0NCAxN0M1LjM4MDg2IDE4LjEzNjYgNi4zNDk4OSAxOS4wOTQyIDcuNSAxOS43ODcyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class RefreshBrokenIcon extends StatelessWidget {
  /// Creates the `refresh` icon in the broken style.
  const RefreshBrokenIcon({
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
    name: 'refresh',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3.67981 13L3.67981 11.3333C3.67981 6.73096 7.4402 3 12.0789 3C12.2201 3 12.3605 3.00346 12.5 3.01029M2 11.3333L3.67981 13L5.35962 11.3333M19.2545 7C18.567 5.88176 17.6215 4.9368 16.5 4.2466" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.3137 11V12.6667C20.3137 17.269 16.5389 21 11.8825 21C11.7543 21 11.6268 20.9972 11.5 20.9916M21.9999 12.6667L20.3137 11L18.6274 12.6667M4.67944 17C5.38086 18.1366 6.34989 19.0942 7.5 19.7872" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
