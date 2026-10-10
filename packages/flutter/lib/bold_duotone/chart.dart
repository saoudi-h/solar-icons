// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chart` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNCAyMC41VjQuMjVDMTQgMy41MjE2OSAxMy45OTg0IDMuMDUwOTEgMTMuOTUxOCAyLjcwNDAzQzEzLjkwOCAyLjM3ODcyIDEzLjgzNzQgMi4yNzY3NiAxMy43ODAzIDIuMjE5NjdDMTMuNzIzMiAyLjE2MjU4IDEzLjYyMTMgMi4wOTE5NyAxMy4yOTYgMi4wNDgyM0MxMi45NDkxIDIuMDAxNTkgMTIuNDc4MyAyIDExLjc1IDJDMTEuMDIxNyAyIDEwLjU1MDkgMi4wMDE1OSAxMC4yMDQgMi4wNDgyM0M5Ljg3ODcyIDIuMDkxOTcgOS43NzY3NiAyLjE2MjU4IDkuNzE5NjcgMi4yMTk2N0M5LjY2MjU4IDIuMjc2NzYgOS41OTE5NyAyLjM3ODcyIDkuNTQ4MjMgMi43MDQwM0M5LjUwMTU5IDMuMDUwOTEgOS41IDMuNTIxNjkgOS41IDQuMjVWMjAuNUgxNFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMS43NSAyMC41SDMuNVY4Ljc1QzMuNSA4LjMzNTc5IDMuODM1NzkgOCA0LjI1IDhINy4yNUM3LjY2NDIxIDggOCA4LjMzNTc5IDggOC43NVYyMC41SDE1LjVWMTMuNzVDMTUuNSAxMy4zMzU4IDE1LjgzNTggMTMgMTYuMjUgMTNIMTkuMjVDMTkuNjY0MiAxMyAyMCAxMy4zMzU4IDIwIDEzLjc1VjIwLjVIMjEuNzVDMjIuMTY0MiAyMC41IDIyLjUgMjAuODM1OCAyMi41IDIxLjI1QzIyLjUgMjEuNjY0MiAyMi4xNjQyIDIyIDIxLjc1IDIySDEuNzVDMS4zMzU3OSAyMiAxIDIxLjY2NDIgMSAyMS4yNUMxIDIwLjgzNTggMS4zMzU3OSAyMC41IDEuNzUgMjAuNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ChartBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chart` icon in the boldDuotone style.
  const ChartBoldDuotoneIcon({
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
    name: 'chart',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M14 20.5V4.25C14 3.52169 13.9984 3.05091 13.9518 2.70403C13.908 2.37872 13.8374 2.27676 13.7803 2.21967C13.7232 2.16258 13.6213 2.09197 13.296 2.04823C12.9491 2.00159 12.4783 2 11.75 2C11.0217 2 10.5509 2.00159 10.204 2.04823C9.87872 2.09197 9.77676 2.16258 9.71967 2.21967C9.66258 2.27676 9.59197 2.37872 9.54823 2.70403C9.50159 3.05091 9.5 3.52169 9.5 4.25V20.5H14Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M1.75 20.5H3.5V8.75C3.5 8.33579 3.83579 8 4.25 8H7.25C7.66421 8 8 8.33579 8 8.75V20.5H15.5V13.75C15.5 13.3358 15.8358 13 16.25 13H19.25C19.6642 13 20 13.3358 20 13.75V20.5H21.75C22.1642 20.5 22.5 20.8358 22.5 21.25C22.5 21.6642 22.1642 22 21.75 22H1.75C1.33579 22 1 21.6642 1 21.25C1 20.8358 1.33579 20.5 1.75 20.5Z" fill="currentColor"/>''',
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
