// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `speaker` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDEyVjE0QzIwIDE3Ljc3MTIgMjAgMTkuNjU2OSAxOC44Mjg0IDIwLjgyODRDMTcuNjU2OSAyMiAxNS43NzEyIDIyIDEyIDIyQzguMjI4NzYgMjIgNi4zNDMxNSAyMiA1LjE3MTU3IDIwLjgyODRDNCAxOS42NTY5IDQgMTcuNzcxMiA0IDE0VjEwQzQgNi4yMjg3NiA0IDQuMzQzMTUgNS4xNzE1NyAzLjE3MTU3QzYuMzQzMTUgMiA4LjIyODc2IDIgMTIgMkMxNS43NzEyIDIgMTcuNjU2OSAyIDE4LjgyODQgMy4xNzE1N0MxOS43NzE1IDQuMTE0NjYgMTkuOTU1NCA1LjUyMDQzIDE5Ljk5MTMgOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNCA3LjVDMTQgOC42MDQ1NyAxMy4xMDQ2IDkuNSAxMiA5LjVDMTAuODk1NCA5LjUgMTAgOC42MDQ1NyAxMCA3LjVDMTAgNi4zOTU0MyAxMC44OTU0IDUuNSAxMiA1LjVDMTMuMTA0NiA1LjUgMTQgNi4zOTU0MyAxNCA3LjVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDE1LjVDMTUgMTcuMTU2OSAxMy42NTY5IDE4LjUgMTIgMTguNUMxMC4zNDMxIDE4LjUgOSAxNy4xNTY5IDkgMTUuNUM5IDEzLjg0MzEgMTAuMzQzMSAxMi41IDEyIDEyLjVDMTMuNjU2OSAxMi41IDE1IDEzLjg0MzEgMTUgMTUuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class SpeakerBrokenIcon extends StatelessWidget {
  /// Creates the `speaker` icon in the broken style.
  const SpeakerBrokenIcon({
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
    name: 'speaker',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 12V14C20 17.7712 20 19.6569 18.8284 20.8284C17.6569 22 15.7712 22 12 22C8.22876 22 6.34315 22 5.17157 20.8284C4 19.6569 4 17.7712 4 14V10C4 6.22876 4 4.34315 5.17157 3.17157C6.34315 2 8.22876 2 12 2C15.7712 2 17.6569 2 18.8284 3.17157C19.7715 4.11466 19.9554 5.52043 19.9913 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 7.5C14 8.60457 13.1046 9.5 12 9.5C10.8954 9.5 10 8.60457 10 7.5C10 6.39543 10.8954 5.5 12 5.5C13.1046 5.5 14 6.39543 14 7.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 15.5C15 17.1569 13.6569 18.5 12 18.5C10.3431 18.5 9 17.1569 9 15.5C9 13.8431 10.3431 12.5 12 12.5C13.6569 12.5 15 13.8431 15 15.5Z" stroke="currentColor" stroke-linecap="round"/>''',
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
