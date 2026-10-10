// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tennis` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEzLjE5NTggMi4wNzEyOUMxMy4xOTU4IDIuMDcxMjkgMTIuOTY0MSA1LjY3IDE1LjQ2NDEgMTAuMDAwMUMxNy45NjQxIDE0LjMzMDMgMjEuMTk2NSAxNS45MjkgMjEuMTk2NSAxNS45MjlNMi44MDM0NyA4LjA3MTI5QzIuODAzNDcgOC4wNzEyOSA2LjAzNTg4IDkuNjcgOC41MzU4OCAxNC4wMDAxQzExLjAzNTkgMTguMzMwMyAxMC44MDQyIDIxLjkyOSAxMC44MDQyIDIxLjkyOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik03IDMuMzM3ODJDOC40NzA4NyAyLjQ4Njk3IDEwLjE3ODYgMiAxMiAyQzE3LjUyMjggMiAyMiA2LjQ3NzE1IDIyIDEyQzIyIDE3LjUyMjggMTcuNTIyOCAyMiAxMiAyMkM2LjQ3NzE1IDIyIDIgMTcuNTIyOCAyIDEyQzIgMTAuMTc4NiAyLjQ4Njk3IDguNDcwODcgMy4zMzc4MiA3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class TennisBrokenIcon extends StatelessWidget {
  /// Creates the `tennis` icon in the broken style.
  const TennisBrokenIcon({
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
    name: 'tennis',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13.1958 2.07129C13.1958 2.07129 12.9641 5.67 15.4641 10.0001C17.9641 14.3303 21.1965 15.929 21.1965 15.929M2.80347 8.07129C2.80347 8.07129 6.03588 9.67 8.53588 14.0001C11.0359 18.3303 10.8042 21.929 10.8042 21.929" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
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
