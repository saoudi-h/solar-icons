// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `minimize-square` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTJDMiA3LjI4NTk1IDIgNC45Mjg5MyAzLjQ2NDQ3IDMuNDY0NDdDNC45Mjg5MyAyIDcuMjg1OTUgMiAxMiAyQzE2LjEzNCAyIDE4LjQ1NTMgMiAxOS45NTE3IDIuOTg3NjdMMTQuNzUgOC4xODkzNFY2LjI1QzE0Ljc1IDUuODM1NzkgMTQuNDE0MiA1LjUgMTQgNS41QzEzLjU4NTggNS41IDEzLjI1IDUuODM1NzkgMTMuMjUgNi4yNVYxMEMxMy4yNSAxMC40MTQyIDEzLjU4NTggMTAuNzUgMTQgMTAuNzVIMTcuNzVDMTguMTY0MiAxMC43NSAxOC41IDEwLjQxNDIgMTguNSAxMEMxOC41IDkuNTg1NzkgMTguMTY0MiA5LjI1IDE3Ljc1IDkuMjVIMTUuODEwN0wyMS4wMTIzIDQuMDQ4MzJDMjIgNS41NDQ2NiAyMiA3Ljg2NiAyMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC41MzU1IDIwLjUzNTVDMTkuMDcxMSAyMiAxNi43MTQgMjIgMTIgMjJDNy44NjYgMjIgNS41NDQ2NiAyMiA0LjA0ODMzIDIxLjAxMjNMOS4yNSAxNS44MTA3VjE3Ljc1QzkuMjUgMTguMTY0MiA5LjU4NTc5IDE4LjUgMTAgMTguNUMxMC40MTQyIDE4LjUgMTAuNzUgMTguMTY0MiAxMC43NSAxNy43NVYxNEMxMC43NSAxMy41ODU4IDEwLjQxNDIgMTMuMjUgMTAgMTMuMjVINi4yNUM1LjgzNTc5IDEzLjI1IDUuNSAxMy41ODU4IDUuNSAxNEM1LjUgMTQuNDE0MiA1LjgzNTc5IDE0Ljc1IDYuMjUgMTQuNzVIOC4xODkzNEwyLjk4NzY3IDE5Ljk1MTdDMiAxOC40NTUzIDIgMTYuMTM0IDIgMTJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MinimizeSquareBoldIcon extends StatelessWidget {
  /// Creates the `minimize-square` icon in the bold style.
  const MinimizeSquareBoldIcon({
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
    name: 'minimize-square',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.134 2 18.4553 2 19.9517 2.98767L14.75 8.18934V6.25C14.75 5.83579 14.4142 5.5 14 5.5C13.5858 5.5 13.25 5.83579 13.25 6.25V10C13.25 10.4142 13.5858 10.75 14 10.75H17.75C18.1642 10.75 18.5 10.4142 18.5 10C18.5 9.58579 18.1642 9.25 17.75 9.25H15.8107L21.0123 4.04832C22 5.54466 22 7.866 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.866 22 5.54466 22 4.04833 21.0123L9.25 15.8107V17.75C9.25 18.1642 9.58579 18.5 10 18.5C10.4142 18.5 10.75 18.1642 10.75 17.75V14C10.75 13.5858 10.4142 13.25 10 13.25H6.25C5.83579 13.25 5.5 13.5858 5.5 14C5.5 14.4142 5.83579 14.75 6.25 14.75H8.18934L2.98767 19.9517C2 18.4553 2 16.134 2 12Z" fill="currentColor"/>''',
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
