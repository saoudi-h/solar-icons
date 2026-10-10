// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `siren-rounded` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDIyVjE2QzIwIDExLjU4MTcgMTYuNDE4MyA4IDEyIDhDNy41ODE3MiA4IDQgMTEuNTgxNyA0IDE2VjIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0LjI5MDUgMTEuNUMxNS4yOTMyIDExLjkwNTkgMTYuMDkzOSAxMi43MDY1IDE2LjQ5OTggMTMuNzA5MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDIySDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDJWNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMSA2TDE5LjUgNy41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTMgNkw0LjUgNy41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEzLjUgMTcuNUMxMy41IDE4LjMyODQgMTIuODI4NCAxOSAxMiAxOUMxMS4xNzE2IDE5IDEwLjUgMTguMzI4NCAxMC41IDE3LjVDMTAuNSAxNi42NzE2IDExLjE3MTYgMTYgMTIgMTZDMTIuODI4NCAxNiAxMy41IDE2LjY3MTYgMTMuNSAxNy41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAxOVYyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class SirenRoundedLinearIcon extends StatelessWidget {
  /// Creates the `siren-rounded` icon in the linear style.
  const SirenRoundedLinearIcon({
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
    name: 'siren-rounded',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20 22V16C20 11.5817 16.4183 8 12 8C7.58172 8 4 11.5817 4 16V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.2905 11.5C15.2932 11.9059 16.0939 12.7065 16.4998 13.7092" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 22H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2V5" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 6L19.5 7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 6L4.5 7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 17.5C13.5 18.3284 12.8284 19 12 19C11.1716 19 10.5 18.3284 10.5 17.5C10.5 16.6716 11.1716 16 12 16C12.8284 16 13.5 16.6716 13.5 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19V22" stroke="currentColor" stroke-linecap="round"/>''',
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
