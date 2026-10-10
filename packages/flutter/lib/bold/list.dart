// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjI1IDdDMy4yNSA2LjU4NTc5IDMuNTg1NzkgNi4yNSA0IDYuMjVIMjBDMjAuNDE0MiA2LjI1IDIwLjc1IDYuNTg1NzkgMjAuNzUgN0MyMC43NSA3LjQxNDIxIDIwLjQxNDIgNy43NSAyMCA3Ljc1SDRDMy41ODU3OSA3Ljc1IDMuMjUgNy40MTQyMSAzLjI1IDdaTTMuMjUgMTJDMy4yNSAxMS41ODU4IDMuNTg1NzkgMTEuMjUgNCAxMS4yNUgxNUMxNS40MTQyIDExLjI1IDE1Ljc1IDExLjU4NTggMTUuNzUgMTJDMTUuNzUgMTIuNDE0MiAxNS40MTQyIDEyLjc1IDE1IDEyLjc1SDRDMy41ODU3OSAxMi43NSAzLjI1IDEyLjQxNDIgMy4yNSAxMlpNMy4yNSAxN0MzLjI1IDE2LjU4NTggMy41ODU3OSAxNi4yNSA0IDE2LjI1SDlDOS40MTQyMSAxNi4yNSA5Ljc1IDE2LjU4NTggOS43NSAxN0M5Ljc1IDE3LjQxNDIgOS40MTQyMSAxNy43NSA5IDE3Ljc1SDRDMy41ODU3OSAxNy43NSAzLjI1IDE3LjQxNDIgMy4yNSAxN1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ListBoldIcon extends StatelessWidget {
  /// Creates the `list` icon in the bold style.
  const ListBoldIcon({
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
    name: 'list',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.25 7C3.25 6.58579 3.58579 6.25 4 6.25H20C20.4142 6.25 20.75 6.58579 20.75 7C20.75 7.41421 20.4142 7.75 20 7.75H4C3.58579 7.75 3.25 7.41421 3.25 7ZM3.25 12C3.25 11.5858 3.58579 11.25 4 11.25H15C15.4142 11.25 15.75 11.5858 15.75 12C15.75 12.4142 15.4142 12.75 15 12.75H4C3.58579 12.75 3.25 12.4142 3.25 12ZM3.25 17C3.25 16.5858 3.58579 16.25 4 16.25H9C9.41421 16.25 9.75 16.5858 9.75 17C9.75 17.4142 9.41421 17.75 9 17.75H4C3.58579 17.75 3.25 17.4142 3.25 17Z" fill="currentColor"/>''',
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
