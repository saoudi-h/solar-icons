// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-check` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSI2IiByPSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE2LjY2NjUgMTZMMTcuNSAxN0wxOS4zMzMyIDE1LjExMTEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgMTZDMjIgMTguMjA5MSAyMC4yMDkxIDIwIDE4IDIwQzE1Ljc5MDkgMjAgMTQgMTguMjA5MSAxNCAxNkMxNCAxMy43OTA5IDE1Ljc5MDkgMTIgMTggMTJDMjAuMjA5MSAxMiAyMiAxMy43OTA5IDIyIDE2WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNS4wMiAxMy4zMzE3QzE0LjA4ODIgMTMuMTE3OCAxMy4wNjg1IDEzIDEyIDEzQzcuNTgxNzIgMTMgNCAxNS4wMTQ3IDQgMTcuNUM0IDE5Ljk4NTMgNCAyMiAxMiAyMkMxNy41Nzk0IDIyIDE5LjI2NzYgMjEuMDIgMTkuNzc4NCAxOS41ODM5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class UserCheckLinearIcon extends StatelessWidget {
  /// Creates the `user-check` icon in the linear style.
  const UserCheckLinearIcon({
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
    name: 'user-check',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.6665 16L17.5 17L19.3332 15.1111" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 16C22 18.2091 20.2091 20 18 20C15.7909 20 14 18.2091 14 16C14 13.7909 15.7909 12 18 12C20.2091 12 22 13.7909 22 16Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.02 13.3317C14.0882 13.1178 13.0685 13 12 13C7.58172 13 4 15.0147 4 17.5C4 19.9853 4 22 12 22C17.5794 22 19.2676 21.02 19.7784 19.5839" stroke="currentColor" stroke-linecap="round"/>''',
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
