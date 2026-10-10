// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `medal-ribbon` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSI5IiByPSI3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcuMzUxMTEgMTVMNi43MTQyNCAxNy4zMjNDNi4wODU5IDE5LjYxNDggNS43NzE3MyAyMC43NjA3IDYuMTkwOTcgMjEuMzg4MUM2LjMzNzkgMjEuNjA3OSA2LjUzNSAyMS43ODQ0IDYuNzYzNzIgMjEuOTAwOEM3LjQxNjM1IDIyLjIzMzEgOC40MjQwMSAyMS43MDgxIDEwLjQzOTMgMjAuNjU4QzExLjEwOTkgMjAuMzA4NiAxMS40NDUyIDIwLjEzMzkgMTEuODAxNCAyMC4wOTU5QzExLjkzMzUgMjAuMDgxOCAxMi4wNjY1IDIwLjA4MTggMTIuMTk4NiAyMC4wOTU5QzEyLjU1NDggMjAuMTMzOSAxMi44OTAxIDIwLjMwODYgMTMuNTYwNyAyMC42NThDMTUuNTc2IDIxLjcwODEgMTYuNTgzNyAyMi4yMzMxIDE3LjIzNjMgMjEuOTAwOEMxNy40NjUgMjEuNzg0NCAxNy42NjIxIDIxLjYwNzkgMTcuODA5IDIxLjM4ODFDMTguMjI4MyAyMC43NjA3IDE3LjkxNDEgMTkuNjE0OCAxNy4yODU4IDE3LjMyM0wxNi42NDg5IDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MedalRibbonLinearIcon extends StatelessWidget {
  /// Creates the `medal-ribbon` icon in the linear style.
  const MedalRibbonLinearIcon({
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
    name: 'medal-ribbon',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="9" r="7" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.35111 15L6.71424 17.323C6.0859 19.6148 5.77173 20.7607 6.19097 21.3881C6.3379 21.6079 6.535 21.7844 6.76372 21.9008C7.41635 22.2331 8.42401 21.7081 10.4393 20.658C11.1099 20.3086 11.4452 20.1339 11.8014 20.0959C11.9335 20.0818 12.0665 20.0818 12.1986 20.0959C12.5548 20.1339 12.8901 20.3086 13.5607 20.658C15.576 21.7081 16.5837 22.2331 17.2363 21.9008C17.465 21.7844 17.6621 21.6079 17.809 21.3881C18.2283 20.7607 17.9141 19.6148 17.2858 17.323L16.6489 15" stroke="currentColor" stroke-linecap="round"/>''',
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
