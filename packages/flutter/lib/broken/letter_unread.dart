// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `letter-unread` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTJDMiAxNS43NzEyIDIgMTcuNjU2OSAzLjE3MTU3IDE4LjgyODRDNC4zNDMxNSAyMCA2LjIyODc2IDIwIDEwIDIwSDE0QzE3Ljc3MTIgMjAgMTkuNjU2OSAyMCAyMC44Mjg0IDE4LjgyODRDMjIgMTcuNjU2OSAyMiAxNS43NzEyIDIyIDEyQzIyIDExLjA1NDIgMjIuMDE4NSAxMC43MjcxIDIyIDEwTTEzIDRIMTBDNi4yMjg3NiA0IDQuMzQzMTUgNCAzLjE3MTU3IDUuMTcxNTdDMi41MTgzOSA1LjgyNDc1IDIuMjI5MzcgNi42OTk4OSAyLjEwMTQ5IDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNiA4TDcuNjY0MzggOS4zODY5OU0xNS44NDExIDkuNzk5MDhDMTQuMDA0NSAxMS4zMjk2IDEzLjA4NjEgMTIuMDk0OSAxMiAxMi4wOTQ5QzExLjM1MDcgMTIuMDk0OSAxMC43NjE0IDExLjgyMTQgMTAgMTEuMjc0NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjE5IiBjeT0iNSIgcj0iMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class LetterUnreadBrokenIcon extends StatelessWidget {
  /// Creates the `letter-unread` icon in the broken style.
  const LetterUnreadBrokenIcon({
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
    name: 'letter-unread',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 12C2 15.7712 2 17.6569 3.17157 18.8284C4.34315 20 6.22876 20 10 20H14C17.7712 20 19.6569 20 20.8284 18.8284C22 17.6569 22 15.7712 22 12C22 11.0542 22.0185 10.7271 22 10M13 4H10C6.22876 4 4.34315 4 3.17157 5.17157C2.51839 5.82475 2.22937 6.69989 2.10149 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 8L7.66438 9.38699M15.8411 9.79908C14.0045 11.3296 13.0861 12.0949 12 12.0949C11.3507 12.0949 10.7614 11.8214 10 11.2744" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19" cy="5" r="3" stroke="currentColor" stroke-linecap="round"/>''',
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
