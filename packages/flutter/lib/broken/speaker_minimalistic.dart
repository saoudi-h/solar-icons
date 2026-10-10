// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `speaker-minimalistic` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDEyVjE0QzIwIDE3Ljc3MTIgMjAgMTkuNjU2OSAxOC44Mjg0IDIwLjgyODRDMTcuNjU2OSAyMiAxNS43NzEyIDIyIDEyIDIyQzguMjI4NzYgMjIgNi4zNDMxNSAyMiA1LjE3MTU3IDIwLjgyODRDNCAxOS42NTY5IDQgMTcuNzcxMiA0IDE0VjEwQzQgNi4yMjg3NiA0IDQuMzQzMTUgNS4xNzE1NyAzLjE3MTU3QzYuMzQzMTUgMiA4LjIyODc2IDIgMTIgMkMxNS43NzEyIDIgMTcuNjU2OSAyIDE4LjgyODQgMy4xNzE1N0MxOS43NzE1IDQuMTE0NjYgMTkuOTU1NCA1LjUyMDQzIDE5Ljk5MTMgOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNiAxNEMxNiAxNi4yMDkxIDE0LjIwOTEgMTggMTIgMThDOS43OTA4NiAxOCA4IDE2LjIwOTEgOCAxNEM4IDExLjc5MDkgOS43OTA4NiAxMCAxMiAxMEMxNC4yMDkxIDEwIDE2IDExLjc5MDkgMTYgMTRaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwIDZIMTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class SpeakerMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `speaker-minimalistic` icon in the broken style.
  const SpeakerMinimalisticBrokenIcon({
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
    name: 'speaker-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 12V14C20 17.7712 20 19.6569 18.8284 20.8284C17.6569 22 15.7712 22 12 22C8.22876 22 6.34315 22 5.17157 20.8284C4 19.6569 4 17.7712 4 14V10C4 6.22876 4 4.34315 5.17157 3.17157C6.34315 2 8.22876 2 12 2C15.7712 2 17.6569 2 18.8284 3.17157C19.7715 4.11466 19.9554 5.52043 19.9913 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 14C16 16.2091 14.2091 18 12 18C9.79086 18 8 16.2091 8 14C8 11.7909 9.79086 10 12 10C14.2091 10 16 11.7909 16 14Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 6H14" stroke="currentColor" stroke-linecap="round"/>''',
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
