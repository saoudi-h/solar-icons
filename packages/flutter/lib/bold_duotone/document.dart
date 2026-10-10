// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `document` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMyAxMEMzIDYuMjI4NzYgMyA0LjM0MzE1IDQuMTcxNTcgMy4xNzE1N0M1LjM0MzE1IDIgNy4yMjg3NiAyIDExIDJIMTNDMTYuNzcxMiAyIDE4LjY1NjkgMiAxOS44Mjg0IDMuMTcxNTdDMjEgNC4zNDMxNSAyMSA2LjIyODc2IDIxIDEwVjE0QzIxIDE3Ljc3MTIgMjEgMTkuNjU2OSAxOS44Mjg0IDIwLjgyODRDMTguNjU2OSAyMiAxNi43NzEyIDIyIDEzIDIySDExQzcuMjI4NzYgMjIgNS4zNDMxNSAyMiA0LjE3MTU3IDIwLjgyODRDMyAxOS42NTY5IDMgMTcuNzcxMiAzIDE0VjEwWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTMgMTMuMjVDMTMuNDE0MiAxMy4yNSAxMy43NSAxMy41ODU4IDEzLjc1IDE0QzEzLjc1IDE0LjQxNDIgMTMuNDE0MiAxNC43NSAxMyAxNC43NUg4QzcuNTg1NzkgMTQuNzUgNy4yNSAxNC40MTQyIDcuMjUgMTRDNy4yNSAxMy41ODU4IDcuNTg1NzkgMTMuMjUgOCAxMy4yNUgxM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE2IDkuMjVDMTYuNDE0MiA5LjI1IDE2Ljc1IDkuNTg1NzkgMTYuNzUgMTBDMTYuNzUgMTAuNDE0MiAxNi40MTQyIDEwLjc1IDE2IDEwLjc1SDhDNy41ODU3OSAxMC43NSA3LjI1IDEwLjQxNDIgNy4yNSAxMEM3LjI1IDkuNTg1NzkgNy41ODU3OSA5LjI1IDggOS4yNUgxNloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class DocumentBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `document` icon in the boldDuotone style.
  const DocumentBoldDuotoneIcon({
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
    name: 'document',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13 13.25C13.4142 13.25 13.75 13.5858 13.75 14C13.75 14.4142 13.4142 14.75 13 14.75H8C7.58579 14.75 7.25 14.4142 7.25 14C7.25 13.5858 7.58579 13.25 8 13.25H13Z" fill="currentColor"/>
<path d="M16 9.25C16.4142 9.25 16.75 9.58579 16.75 10C16.75 10.4142 16.4142 10.75 16 10.75H8C7.58579 10.75 7.25 10.4142 7.25 10C7.25 9.58579 7.58579 9.25 8 9.25H16Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2H13C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10V14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22H11C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14V10Z" fill="currentColor"/>''',
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
