// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `explicit` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDNy4yODU5NSAyMiA0LjkyODkzIDIyIDMuNDY0NDcgMjAuNTM1NUMyIDE5LjA3MTEgMiAxNi43MTQgMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N0M0LjkyODkzIDIgNy4yODU5NSAyIDEyIDJDMTYuNzE0IDIgMTkuMDcxMSAyIDIwLjUzNTUgMy40NjQ0N0MyMiA0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuNTM1NSAyMC41MzU1QzE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNOC4yNSA4QzguMjUgNy4wMzM1IDkuMDMzNSA2LjI1IDEwIDYuMjVIMTVDMTUuNDE0MiA2LjI1IDE1Ljc1IDYuNTg1NzkgMTUuNzUgN0MxNS43NSA3LjQxNDIxIDE1LjQxNDIgNy43NSAxNSA3Ljc1SDEwQzkuODYxOTMgNy43NSA5Ljc1IDcuODYxOTMgOS43NSA4VjExLjI1SDE1QzE1LjQxNDIgMTEuMjUgMTUuNzUgMTEuNTg1OCAxNS43NSAxMkMxNS43NSAxMi40MTQyIDE1LjQxNDIgMTIuNzUgMTUgMTIuNzVIOS43NVYxNkM5Ljc1IDE2LjEzODEgOS44NjE5MyAxNi4yNSAxMCAxNi4yNUgxNUMxNS40MTQyIDE2LjI1IDE1Ljc1IDE2LjU4NTggMTUuNzUgMTdDMTUuNzUgMTcuNDE0MiAxNS40MTQyIDE3Ljc1IDE1IDE3Ljc1SDEwQzkuMDMzNSAxNy43NSA4LjI1IDE2Ljk2NjUgOC4yNSAxNlY4WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ExplicitBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `explicit` icon in the boldDuotone style.
  const ExplicitBoldDuotoneIcon({
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
    name: 'explicit',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.25 8C8.25 7.0335 9.0335 6.25 10 6.25H15C15.4142 6.25 15.75 6.58579 15.75 7C15.75 7.41421 15.4142 7.75 15 7.75H10C9.86193 7.75 9.75 7.86193 9.75 8V11.25H15C15.4142 11.25 15.75 11.5858 15.75 12C15.75 12.4142 15.4142 12.75 15 12.75H9.75V16C9.75 16.1381 9.86193 16.25 10 16.25H15C15.4142 16.25 15.75 16.5858 15.75 17C15.75 17.4142 15.4142 17.75 15 17.75H10C9.0335 17.75 8.25 16.9665 8.25 16V8Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22Z" fill="currentColor"/>''',
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
