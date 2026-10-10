// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smart-home-angle` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIxLjYzNTkgMTIuOTU3OUwyMS4zNTcyIDE0Ljg5NTJDMjAuODY5NyAxOC4yODI3IDIwLjYyNiAxOS45NzY0IDE5LjQ1MSAyMC45ODgyQzE4LjM4MjIgMjEuOTA4NSAxNi44NTk5IDIxLjk5MTcgMTQgMjEuOTk5M00yMS42NjQ2IDcuODc0OTVDMjEuMTI0MiA2Ljc0NzYgMTkuOTczOCA2LjA2MjMzIDE3LjY3MzEgNC42OTE4MUwxNi4yODgyIDMuODY2ODdDMTQuMTk5IDIuNjIyMjkgMTMuMTU0MyAyIDEyIDJDMTAuODQ1NyAyIDkuODAxMDQgMi42MjIyOSA3LjcxMTc1IDMuODY2ODdMNi4zMjY5MSA0LjY5MTgxQzQuMDI2MTkgNi4wNjIzNCAyLjg3NTgzIDYuNzQ3NiAyLjMzNTM3IDcuODc0OTVDMi4wNDg1MiA4LjQ3MzI3IDEuOTY3MzYgOS4xMjU0NCAyLjAxMTA4IDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTExIDIyQzExIDE3LjAyOTQgNi45NzA1NiAxMyAyIDEzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggMjJDOCAxOC42ODYzIDUuMzEzNzEgMTYgMiAxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik01IDIyQzUgMjAuMzQzMSAzLjY1Njg1IDE5IDIgMTkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class SmartHomeAngleBrokenIcon extends StatelessWidget {
  /// Creates the `smart-home-angle` icon in the broken style.
  const SmartHomeAngleBrokenIcon({
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
    name: 'smart-home-angle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21.6359 12.9579L21.3572 14.8952C20.8697 18.2827 20.626 19.9764 19.451 20.9882C18.3822 21.9085 16.8599 21.9917 14 21.9993M21.6646 7.87495C21.1242 6.7476 19.9738 6.06233 17.6731 4.69181L16.2882 3.86687C14.199 2.62229 13.1543 2 12 2C10.8457 2 9.80104 2.62229 7.71175 3.86687L6.32691 4.69181C4.02619 6.06234 2.87583 6.7476 2.33537 7.87495C2.04852 8.47327 1.96736 9.12544 2.01108 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 22C11 17.0294 6.97056 13 2 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 22C8 18.6863 5.31371 16 2 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 22C5 20.3431 3.65685 19 2 19" stroke="currentColor" stroke-linecap="round"/>''',
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
