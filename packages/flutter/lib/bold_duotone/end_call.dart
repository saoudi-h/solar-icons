// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `end-call` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik04IDEyLjg2Mkw4IDEzLjQ3ODVDOCAxNC4zMzA4IDcuNDIzMjkgMTUuMDgyNiA2LjU3OTk3IDE1LjMyOTdMNC41Nzk5NyAxNS45MTU5QzMuMjk1NjEgMTYuMjkyMyAyIDE1LjM2MjYgMiAxNC4wNjQ2TDIgMTIuMTQxN0MyIDExLjY1MjggMi4xMjQ3IDExLjE3MDcgMi40NDA4MyAxMC43ODkyQzMuMTczMjUgOS45MDUyMyA0Ljg3ODYyIDguMjgyMDUgOCA3LjQ3NzgyVjEyLjg2MlpNMTYgMTIuODYyVjEzLjI1MDJDMTYgMTQuMjA2NiAxNi43MjI3IDE1LjAxOTUgMTcuNzAwNCAxNS4xNjI4TDE5LjcwMDQgMTUuNDU1OEMyMC45MTA1IDE1LjYzMzIgMjIgMTQuNzI3IDIyIDEzLjU0MzJWMTEuNDE4NUMyMiAxMC44MzE2IDIxLjgxNjIgMTAuMjU0NSAyMS4zNzAzIDkuODU2MjhDMjAuNTUyOCA5LjEyNjIxIDE4Ljg3ODUgNy45NzU2NyAxNiA3LjM4MjMyVjEyLjg2MloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMTEuMzk2M0MxNiAxMS4zOTYzIDE2IDEyLjg2MTcgMTYgMTIuODYxN1Y3LjM4MjA1QzE0Ljg2MiA3LjE0NzQ5IDEzLjUzNTkgNyAxMiA3QzEwLjQ2NDEgNyA5LjEzNzk3IDcuMTg0MzUgOCA3LjQ3NzU1VjEyLjg2MTdDOCAxMi44NjE3IDggMTEuMzk2MyAxMiAxMS4zOTYzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class EndCallBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `end-call` icon in the boldDuotone style.
  const EndCallBoldDuotoneIcon({
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
    name: 'end-call',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8 12.862L8 13.4785C8 14.3308 7.42329 15.0826 6.57997 15.3297L4.57997 15.9159C3.29561 16.2923 2 15.3626 2 14.0646L2 12.1417C2 11.6528 2.1247 11.1707 2.44083 10.7892C3.17325 9.90523 4.87862 8.28205 8 7.47782V12.862ZM16 12.862V13.2502C16 14.2066 16.7227 15.0195 17.7004 15.1628L19.7004 15.4558C20.9105 15.6332 22 14.727 22 13.5432V11.4185C22 10.8316 21.8162 10.2545 21.3703 9.85628C20.5528 9.12621 18.8785 7.97567 16 7.38232V12.862Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 11.3963C16 11.3963 16 12.8617 16 12.8617V7.38205C14.862 7.14749 13.5359 7 12 7C10.4641 7 9.13797 7.18435 8 7.47755V12.8617C8 12.8617 8 11.3963 12 11.3963Z" fill="currentColor"/>''',
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
