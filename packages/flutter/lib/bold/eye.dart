// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `eye` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuNzUgMTJDOS43NSAxMC43NTc0IDEwLjc1NzQgOS43NSAxMiA5Ljc1QzEzLjI0MjYgOS43NSAxNC4yNSAxMC43NTc0IDE0LjI1IDEyQzE0LjI1IDEzLjI0MjYgMTMuMjQyNiAxNC4yNSAxMiAxNC4yNUMxMC43NTc0IDE0LjI1IDkuNzUgMTMuMjQyNiA5Ljc1IDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTIgMTJDMiAxMy42Mzk0IDIuNDI0OTYgMTQuMTkxNSAzLjI3NDg5IDE1LjI5NTdDNC45NzE5NiAxNy41MDA0IDcuODE4MTEgMjAgMTIgMjBDMTYuMTgxOSAyMCAxOS4wMjggMTcuNTAwNCAyMC43MjUxIDE1LjI5NTdDMjEuNTc1IDE0LjE5MTUgMjIgMTMuNjM5NCAyMiAxMkMyMiAxMC4zNjA2IDIxLjU3NSA5LjgwODUzIDIwLjcyNTEgOC43MDQzM0MxOS4wMjggNi40OTk1NiAxNi4xODE5IDQgMTIgNEM3LjgxODExIDQgNC45NzE5NiA2LjQ5OTU2IDMuMjc0ODkgOC43MDQzM0MyLjQyNDk2IDkuODA4NTMgMiAxMC4zNjA2IDIgMTJaTTEyIDguMjVDOS45Mjg5MyA4LjI1IDguMjUgOS45Mjg5MyA4LjI1IDEyQzguMjUgMTQuMDcxMSA5LjkyODkzIDE1Ljc1IDEyIDE1Ljc1QzE0LjA3MTEgMTUuNzUgMTUuNzUgMTQuMDcxMSAxNS43NSAxMkMxNS43NSA5LjkyODkzIDE0LjA3MTEgOC4yNSAxMiA4LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class EyeBoldIcon extends StatelessWidget {
  /// Creates the `eye` icon in the bold style.
  const EyeBoldIcon({
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
    name: 'eye',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M9.75 12C9.75 10.7574 10.7574 9.75 12 9.75C13.2426 9.75 14.25 10.7574 14.25 12C14.25 13.2426 13.2426 14.25 12 14.25C10.7574 14.25 9.75 13.2426 9.75 12Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M2 12C2 13.6394 2.42496 14.1915 3.27489 15.2957C4.97196 17.5004 7.81811 20 12 20C16.1819 20 19.028 17.5004 20.7251 15.2957C21.575 14.1915 22 13.6394 22 12C22 10.3606 21.575 9.80853 20.7251 8.70433C19.028 6.49956 16.1819 4 12 4C7.81811 4 4.97196 6.49956 3.27489 8.70433C2.42496 9.80853 2 10.3606 2 12ZM12 8.25C9.92893 8.25 8.25 9.92893 8.25 12C8.25 14.0711 9.92893 15.75 12 15.75C14.0711 15.75 15.75 14.0711 15.75 12C15.75 9.92893 14.0711 8.25 12 8.25Z" fill="currentColor"/>''',
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
