// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `login` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMC44NDQ3IDguMDk0NjdDMTAuNTUxOCA4LjM4NzU2IDEwLjU1MTggOC44NjI0NCAxMC44NDQ3IDkuMTU1MzNMMTIuNTY0MyAxMC44NzVINC4zNzVDMy45NjA3OSAxMC44NzUgMy42MjUgMTEuMjEwOCAzLjYyNSAxMS42MjVDMy42MjUgMTIuMDM5MiAzLjk2MDc5IDEyLjM3NSA0LjM3NSAxMi4zNzVIMTIuNTY0M0wxMC44NDQ3IDE0LjA5NDdDMTAuNTUxOCAxNC4zODc2IDEwLjU1MTggMTQuODYyNCAxMC44NDQ3IDE1LjE1NTNDMTEuMTM3NiAxNS40NDgyIDExLjYxMjQgMTUuNDQ4MiAxMS45MDUzIDE1LjE1NTNMMTQuOTA1MyAxMi4xNTUzQzE1LjE5ODIgMTEuODYyNCAxNS4xOTgyIDExLjM4NzYgMTQuOTA1MyAxMS4wOTQ3TDExLjkwNTMgOC4wOTQ2N0MxMS42MTI0IDcuODAxNzggMTEuMTM3NiA3LjgwMTc4IDEwLjg0NDcgOC4wOTQ2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyLjM3NSA1Ljg3NzQ1QzEyLjM3NSA2LjMyNTQgMTIuNjQ5MiA2LjcxNzI1IDEyLjk2NiA3LjAzNDAxTDE1Ljk2NiAxMC4wMzRDMTYuODQ0NyAxMC45MTI3IDE2Ljg0NDcgMTIuMzM3MyAxNS45NjYgMTMuMjE2TDEyLjk2NiAxNi4yMTZDMTIuNjQ5MiAxNi41MzI3IDEyLjM3NSAxNi45MjQ2IDEyLjM3NSAxNy4zNzI2VjE5LjYyNUMxNi43OTMzIDE5LjYyNSAyMC4zNzUgMTYuMDQzMyAyMC4zNzUgMTEuNjI1QzIwLjM3NSA3LjIwNjcyIDE2Ljc5MzMgMy42MjUgMTIuMzc1IDMuNjI1VjUuODc3NDVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class LoginBoldIcon extends StatelessWidget {
  /// Creates the `login` icon in the bold style.
  const LoginBoldIcon({
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
    name: 'login',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.8447 8.09467C10.5518 8.38756 10.5518 8.86244 10.8447 9.15533L12.5643 10.875H4.375C3.96079 10.875 3.625 11.2108 3.625 11.625C3.625 12.0392 3.96079 12.375 4.375 12.375H12.5643L10.8447 14.0947C10.5518 14.3876 10.5518 14.8624 10.8447 15.1553C11.1376 15.4482 11.6124 15.4482 11.9053 15.1553L14.9053 12.1553C15.1982 11.8624 15.1982 11.3876 14.9053 11.0947L11.9053 8.09467C11.6124 7.80178 11.1376 7.80178 10.8447 8.09467Z" fill="currentColor"/>
<path d="M12.375 5.87745C12.375 6.3254 12.6492 6.71725 12.966 7.03401L15.966 10.034C16.8447 10.9127 16.8447 12.3373 15.966 13.216L12.966 16.216C12.6492 16.5327 12.375 16.9246 12.375 17.3726V19.625C16.7933 19.625 20.375 16.0433 20.375 11.625C20.375 7.20672 16.7933 3.625 12.375 3.625V5.87745Z" fill="currentColor"/>''',
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
