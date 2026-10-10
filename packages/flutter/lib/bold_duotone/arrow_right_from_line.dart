// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-right-from-line` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuNzUgNEMzLjc1IDMuNTg1NzkgMy40MTQyMSAzLjI1IDMgMy4yNUMyLjU4NTc5IDMuMjUgMi4yNSAzLjU4NTc5IDIuMjUgNEwyLjI1IDIwQzIuMjUgMjAuNDE0MiAyLjU4NTc5IDIwLjc1IDMgMjAuNzVDMy40MTQyMSAyMC43NSAzLjc1IDIwLjQxNDIgMy43NSAyMEwzLjc1IDRaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTggMTEuMjQ5OUwxOS4wNjg0IDExLjI0OTlMMTYuMTE5MSA4LjU1MzYxQzE1LjgxMzUgOC4yNzQxOCAxNS43OTIgNy43OTk3NSAxNi4wNzEzIDcuNDk0MDRDMTYuMzUwNyA3LjE4ODQxIDE2LjgyNTIgNy4xNjY5IDE3LjEzMDkgNy40NDYxOUwyMS41MDU5IDExLjQ0NjJDMjEuNjYxMyAxMS41ODgzIDIxLjc1IDExLjc4OTMgMjEuNzUgMTEuOTk5OUMyMS43NSAxMi4yMTA1IDIxLjY2MTMgMTIuNDExNSAyMS41MDU5IDEyLjU1MzZMMTcuMTMwOSAxNi41NTM2QzE2LjgyNTIgMTYuODMyOSAxNi4zNTA3IDE2LjgxMTQgMTYuMDcxMyAxNi41MDU4QzE1Ljc5MiAxNi4yMDAxIDE1LjgxMzUgMTUuNzI1NiAxNi4xMTkxIDE1LjQ0NjJMMTkuMDY4NCAxMi43NDk5TDggMTIuNzQ5OUM3LjU4NTc5IDEyLjc0OTkgNy4yNSAxMi40MTQxIDcuMjUgMTEuOTk5OUM3LjI1IDExLjU4NTcgNy41ODU3OSAxMS4yNDk5IDggMTEuMjQ5OVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowRightFromLineBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-right-from-line` icon in the boldDuotone style.
  const ArrowRightFromLineBoldDuotoneIcon({
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
    name: 'arrow-right-from-line',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M3.75 4C3.75 3.58579 3.41421 3.25 3 3.25C2.58579 3.25 2.25 3.58579 2.25 4L2.25 20C2.25 20.4142 2.58579 20.75 3 20.75C3.41421 20.75 3.75 20.4142 3.75 20L3.75 4Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M8 11.2499L19.0684 11.2499L16.1191 8.55361C15.8135 8.27418 15.792 7.79975 16.0713 7.49404C16.3507 7.18841 16.8252 7.1669 17.1309 7.44619L21.5059 11.4462C21.6613 11.5883 21.75 11.7893 21.75 11.9999C21.75 12.2105 21.6613 12.4115 21.5059 12.5536L17.1309 16.5536C16.8252 16.8329 16.3507 16.8114 16.0713 16.5058C15.792 16.2001 15.8135 15.7256 16.1191 15.4462L19.0684 12.7499L8 12.7499C7.58579 12.7499 7.25 12.4141 7.25 11.9999C7.25 11.5857 7.58579 11.2499 8 11.2499Z" fill="currentColor"/>''',
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
