// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `volleyball` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDJMMTEuMzE0MiAzLjY0NTg2QzEwLjE3NjEgNi4zNzcyNiAxMC40MzE3IDkuNDkwNzUgMTIgMTJNMTIgMTJIMTIuMDkxN0MxNS40NzA1IDEyIDE4LjYyNTggMTMuNjg4NyAyMC41IDE2LjVNMTIgMTJMMTEuNTY5NyAxMi41NTMyQzkuNjMyODUgMTUuMDQzNSA2LjY1NDc4IDE2LjUgMy41IDE2LjVNMTggMTRMMTcuNzA4NyAxNC4zMjA0QzE0LjcwOTcgMTcuNjE5MyAxMC4xOTEgMTkuNzkyOCA1LjczMjcgMTkuNzkyOE0yMS45ODc3IDExLjVMMjEuMjQyNiAxMC43NDI2QzE4LjUyNjEgOC4wMjYxMiAxNC44NDE3IDYuNSAxMSA2LjVNNy41IDMuMDY3MjlDNS45IDYuOTA3MjkgNS45IDExLjE2IDcuNSAxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0zLjMzODc0IDYuOTk4MDVDNC4xODcxMyA1LjUyNTc2IDUuNDIyNTUgNC4yNTAxOCA2Ljk5OTk2IDMuMzM5NDZDMTEuNzgyOSAwLjU3ODAzOSAxNy44OTg4IDIuMjE2NzkgMjAuNjYwMiA2Ljk5OTcyQzIzLjQyMTYgMTEuNzgyNiAyMS43ODI5IDE3Ljg5ODUgMTcgMjAuNjZDMTIuMjE3IDIzLjQyMTQgNi4xMDExMyAyMS43ODI2IDMuMzM5NzEgMTYuOTk5N0MyLjQyODk5IDE1LjQyMjMgMS45OTY4NyAxMy42OTk5IDEuOTk4MjkgMTIuMDAwNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class VolleyballBrokenIcon extends StatelessWidget {
  /// Creates the `volleyball` icon in the broken style.
  const VolleyballBrokenIcon({
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
    name: 'volleyball',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 2L11.3142 3.64586C10.1761 6.37726 10.4317 9.49075 12 12M12 12H12.0917C15.4705 12 18.6258 13.6887 20.5 16.5M12 12L11.5697 12.5532C9.63285 15.0435 6.65478 16.5 3.5 16.5M18 14L17.7087 14.3204C14.7097 17.6193 10.191 19.7928 5.7327 19.7928M21.9877 11.5L21.2426 10.7426C18.5261 8.02612 14.8417 6.5 11 6.5M7.5 3.06729C5.9 6.90729 5.9 11.16 7.5 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3.33874 6.99805C4.18713 5.52576 5.42255 4.25018 6.99996 3.33946C11.7829 0.578039 17.8988 2.21679 20.6602 6.99972C23.4216 11.7826 21.7829 17.8985 17 20.66C12.217 23.4214 6.10113 21.7826 3.33971 16.9997C2.42899 15.4223 1.99687 13.6999 1.99829 12.0007" stroke="currentColor" stroke-linecap="round"/>''',
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
