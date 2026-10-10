// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `speaker` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNCAxMEM0IDYuMjI4NzYgNCA0LjM0MzE1IDUuMTcxNTcgMy4xNzE1N0M2LjM0MzE1IDIgOC4yMjg3NiAyIDEyIDJDMTUuNzcxMiAyIDE3LjY1NjkgMiAxOC44Mjg0IDMuMTcxNTdDMjAgNC4zNDMxNSAyMCA2LjIyODc2IDIwIDEwVjE0QzIwIDE3Ljc3MTIgMjAgMTkuNjU2OSAxOC44Mjg0IDIwLjgyODRDMTcuNjU2OSAyMiAxNS43NzEyIDIyIDEyIDIyQzguMjI4NzYgMjIgNi4zNDMxNSAyMiA1LjE3MTU3IDIwLjgyODRDNCAxOS42NTY5IDQgMTcuNzcxMiA0IDE0VjEwWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDQuNzVDMTAuNDgxMiA0Ljc1IDkuMjUgNS45ODEyMiA5LjI1IDcuNUM5LjI1IDkuMDE4NzggMTAuNDgxMiAxMC4yNSAxMiAxMC4yNUMxMy41MTg4IDEwLjI1IDE0Ljc1IDkuMDE4NzggMTQuNzUgNy41QzE0Ljc1IDUuOTgxMjIgMTMuNTE4OCA0Ljc1IDEyIDQuNzVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNOC4yNSAxNS41QzguMjUgMTMuNDI4OSA5LjkyODkzIDExLjc1IDEyIDExLjc1QzE0LjA3MTEgMTEuNzUgMTUuNzUgMTMuNDI4OSAxNS43NSAxNS41QzE1Ljc1IDE3LjU3MTEgMTQuMDcxMSAxOS4yNSAxMiAxOS4yNUM5LjkyODkzIDE5LjI1IDguMjUgMTcuNTcxMSA4LjI1IDE1LjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class SpeakerBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `speaker` icon in the boldDuotone style.
  const SpeakerBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 4.75C10.4812 4.75 9.25 5.98122 9.25 7.5C9.25 9.01878 10.4812 10.25 12 10.25C13.5188 10.25 14.75 9.01878 14.75 7.5C14.75 5.98122 13.5188 4.75 12 4.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M8.25 15.5C8.25 13.4289 9.92893 11.75 12 11.75C14.0711 11.75 15.75 13.4289 15.75 15.5C15.75 17.5711 14.0711 19.25 12 19.25C9.92893 19.25 8.25 17.5711 8.25 15.5Z" fill="currentColor"/>''',
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
