// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `file-add` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEzIDIuMjYyN1Y1LjAwMDNDMTMgNy4zNTczMiAxMyA4LjUzNTgzIDEzLjczMjIgOS4yNjgwNkMxNC40NjQ1IDEwLjAwMDMgMTUuNjQzIDEwLjAwMDMgMTggMTAuMDAwM0gyMS41OCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDEwVjE0QzIgMTcuNzcxMiAyIDE5LjY1NjkgMy4xNzE1NyAyMC44Mjg0QzQuMzQzMTUgMjIgNi4yMjg3NiAyMiAxMCAyMkgxNEMxNy43NzEyIDIyIDE5LjY1NjkgMjIgMjAuODI4NCAyMC44Mjg0QzIxLjQ4MTYgMjAuMTc1MiAyMS43NzA2IDE5LjMwMDEgMjEuODk4NSAxOE0yMiAxNFYxMy41NjI5QzIyIDExLjgwODMgMjIgMTAuOTMxIDIxLjY1NCAxMC4xNTQxQzIxLjMwOCA5LjM3NzIgMjAuNjU1OSA4Ljc5MDMyIDE5LjM1MTcgNy42MTY1NEwxNS4zOTI5IDQuMDUzNjVDMTQuMjY1MSAzLjAzODU3IDEzLjcwMTIgMi41MzEwNCAxMy4wMDkyIDIuMjY1NTJDMTIuMzE3MyAyIDExLjU1NDggMiAxMC4wMjk4IDJDNi4yMzg2OSAyIDQuMzQzMTUgMiAzLjE3MTU3IDMuMTcxNTdDMi41MTgzOSAzLjgyNDc1IDIuMjI5MzcgNC42OTk4OSAyLjEwMTQ5IDYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTEgMTVIOU05IDE1TDcgMTVNOSAxNUw5IDEzTTkgMTVMOSAxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class FileAddBrokenIcon extends StatelessWidget {
  /// Creates the `file-add` icon in the broken style.
  const FileAddBrokenIcon({
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
    name: 'file-add',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13 2.2627V5.0003C13 7.35732 13 8.53583 13.7322 9.26806C14.4645 10.0003 15.643 10.0003 18 10.0003H21.58" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 10V14C2 17.7712 2 19.6569 3.17157 20.8284C4.34315 22 6.22876 22 10 22H14C17.7712 22 19.6569 22 20.8284 20.8284C21.4816 20.1752 21.7706 19.3001 21.8985 18M22 14V13.5629C22 11.8083 22 10.931 21.654 10.1541C21.308 9.3772 20.6559 8.79032 19.3517 7.61654L15.3929 4.05365C14.2651 3.03857 13.7012 2.53104 13.0092 2.26552C12.3173 2 11.5548 2 10.0298 2C6.23869 2 4.34315 2 3.17157 3.17157C2.51839 3.82475 2.22937 4.69989 2.10149 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11 15H9M9 15L7 15M9 15L9 13M9 15L9 17" stroke="currentColor" stroke-linecap="round"/>''',
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
