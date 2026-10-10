// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `document` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00LjE3MTU3IDMuMTcxNTdDMyA0LjM0MzE1IDMgNi4yMjg3NiAzIDEwVjE0QzMgMTcuNzcxMiAzIDE5LjY1NjkgNC4xNzE1NyAyMC44Mjg0QzUuMzQzMTUgMjIgNy4yMjg3NiAyMiAxMSAyMkgxM0MxNi43NzEyIDIyIDE4LjY1NjkgMjIgMTkuODI4NCAyMC44Mjg0QzIxIDE5LjY1NjkgMjEgMTcuNzcxMiAyMSAxNFYxMEMyMSA2LjIyODc2IDIxIDQuMzQzMTUgMTkuODI4NCAzLjE3MTU3QzE4LjY1NjkgMiAxNi43NzEyIDIgMTMgMkgxMUM3LjIyODc2IDIgNS4zNDMxNSAyIDQuMTcxNTcgMy4xNzE1N1pNOCA5LjI1QzcuNTg1NzkgOS4yNSA3LjI1IDkuNTg1NzkgNy4yNSAxMEM3LjI1IDEwLjQxNDIgNy41ODU3OSAxMC43NSA4IDEwLjc1SDE2QzE2LjQxNDIgMTAuNzUgMTYuNzUgMTAuNDE0MiAxNi43NSAxMEMxNi43NSA5LjU4NTc5IDE2LjQxNDIgOS4yNSAxNiA5LjI1SDhaTTggMTMuMjVDNy41ODU3OSAxMy4yNSA3LjI1IDEzLjU4NTggNy4yNSAxNEM3LjI1IDE0LjQxNDIgNy41ODU3OSAxNC43NSA4IDE0Ljc1SDEzQzEzLjQxNDIgMTQuNzUgMTMuNzUgMTQuNDE0MiAxMy43NSAxNEMxMy43NSAxMy41ODU4IDEzLjQxNDIgMTMuMjUgMTMgMTMuMjVIOFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class DocumentBoldIcon extends StatelessWidget {
  /// Creates the `document` icon in the bold style.
  const DocumentBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.17157 3.17157C3 4.34315 3 6.22876 3 10V14C3 17.7712 3 19.6569 4.17157 20.8284C5.34315 22 7.22876 22 11 22H13C16.7712 22 18.6569 22 19.8284 20.8284C21 19.6569 21 17.7712 21 14V10C21 6.22876 21 4.34315 19.8284 3.17157C18.6569 2 16.7712 2 13 2H11C7.22876 2 5.34315 2 4.17157 3.17157ZM8 9.25C7.58579 9.25 7.25 9.58579 7.25 10C7.25 10.4142 7.58579 10.75 8 10.75H16C16.4142 10.75 16.75 10.4142 16.75 10C16.75 9.58579 16.4142 9.25 16 9.25H8ZM8 13.25C7.58579 13.25 7.25 13.5858 7.25 14C7.25 14.4142 7.58579 14.75 8 14.75H13C13.4142 14.75 13.75 14.4142 13.75 14C13.75 13.5858 13.4142 13.25 13 13.25H8Z" fill="currentColor"/>''',
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
