// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `speaker-minimalistic` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNCAxMEM0IDYuMjI4NzYgNCA0LjM0MzE1IDUuMTcxNTcgMy4xNzE1N0M2LjM0MzE1IDIgOC4yMjg3NiAyIDEyIDJDMTUuNzcxMiAyIDE3LjY1NjkgMiAxOC44Mjg0IDMuMTcxNTdDMjAgNC4zNDMxNSAyMCA2LjIyODc2IDIwIDEwVjE0QzIwIDE3Ljc3MTIgMjAgMTkuNjU2OSAxOC44Mjg0IDIwLjgyODRDMTcuNjU2OSAyMiAxNS43NzEyIDIyIDEyIDIyQzguMjI4NzYgMjIgNi4zNDMxNSAyMiA1LjE3MTU3IDIwLjgyODRDNCAxOS42NTY5IDQgMTcuNzcxMiA0IDE0VjEwWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTAgNS4yNUM5LjU4NTc5IDUuMjUgOS4yNSA1LjU4NTc5IDkuMjUgNkM5LjI1IDYuNDE0MjEgOS41ODU3OSA2Ljc1IDEwIDYuNzVIMTRDMTQuNDE0MiA2Ljc1IDE0Ljc1IDYuNDE0MjEgMTQuNzUgNkMxNC43NSA1LjU4NTc5IDE0LjQxNDIgNS4yNSAxNCA1LjI1SDEwWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDkuMjVDOS4zNzY2NSA5LjI1IDcuMjUgMTEuMzc2NiA3LjI1IDE0QzcuMjUgMTYuNjIzNCA5LjM3NjY1IDE4Ljc1IDEyIDE4Ljc1QzE0LjYyMzQgMTguNzUgMTYuNzUgMTYuNjIzNCAxNi43NSAxNEMxNi43NSAxMS4zNzY2IDE0LjYyMzQgOS4yNSAxMiA5LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class SpeakerMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `speaker-minimalistic` icon in the boldDuotone style.
  const SpeakerMinimalisticBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10 5.25C9.58579 5.25 9.25 5.58579 9.25 6C9.25 6.41421 9.58579 6.75 10 6.75H14C14.4142 6.75 14.75 6.41421 14.75 6C14.75 5.58579 14.4142 5.25 14 5.25H10Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 9.25C9.37665 9.25 7.25 11.3766 7.25 14C7.25 16.6234 9.37665 18.75 12 18.75C14.6234 18.75 16.75 16.6234 16.75 14C16.75 11.3766 14.6234 9.25 12 9.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 10C4 6.22876 4 4.34315 5.17157 3.17157C6.34315 2 8.22876 2 12 2C15.7712 2 17.6569 2 18.8284 3.17157C20 4.34315 20 6.22876 20 10V14C20 17.7712 20 19.6569 18.8284 20.8284C17.6569 22 15.7712 22 12 22C8.22876 22 6.34315 22 5.17157 20.8284C4 19.6569 4 17.7712 4 14V10Z" fill="currentColor"/>''',
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
