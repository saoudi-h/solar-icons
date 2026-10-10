// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `music-note-2` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMy43NSAyQzEzLjc1IDQuODk5NSAxNi4xMDA1IDcuMjUgMTkgNy4yNUMxOS40MTQyIDcuMjUgMTkuNzUgNy41ODU3OSAxOS43NSA4QzE5Ljc1IDguNDE0MjEgMTkuNDE0MiA4Ljc1IDE5IDguNzVDMTYuODc5NSA4Ljc1IDE0Ljk4NzUgNy43NzIyNSAxMy43NSA2LjI0M1YxOEMxMy43NSAyMC42MjM0IDExLjYyMzQgMjIuNzUgOSAyMi43NUM2LjM3NjY1IDIyLjc1IDQuMjUgMjAuNjIzNCA0LjI1IDE4QzQuMjUgMTUuMzc2NiA2LjM3NjY1IDEzLjI1IDkgMTMuMjVDMTAuMjU3MiAxMy4yNSAxMS40MDAzIDEzLjczODQgMTIuMjUgMTQuNTM1OVYySDEzLjc1Wk0xMi4yNSAxOEMxMi4yNSAxNi4yMDUxIDEwLjc5NDkgMTQuNzUgOSAxNC43NUM3LjIwNTA3IDE0Ljc1IDUuNzUgMTYuMjA1MSA1Ljc1IDE4QzUuNzUgMTkuNzk0OSA3LjIwNTA3IDIxLjI1IDkgMjEuMjVDMTAuNzk0OSAyMS4yNSAxMi4yNSAxOS43OTQ5IDEyLjI1IDE4WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MusicNote2OutlineIcon extends StatelessWidget {
  /// Creates the `music-note-2` icon in the outline style.
  const MusicNote2OutlineIcon({
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
    name: 'music-note-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M13.75 2C13.75 4.8995 16.1005 7.25 19 7.25C19.4142 7.25 19.75 7.58579 19.75 8C19.75 8.41421 19.4142 8.75 19 8.75C16.8795 8.75 14.9875 7.77225 13.75 6.243V18C13.75 20.6234 11.6234 22.75 9 22.75C6.37665 22.75 4.25 20.6234 4.25 18C4.25 15.3766 6.37665 13.25 9 13.25C10.2572 13.25 11.4003 13.7384 12.25 14.5359V2H13.75ZM12.25 18C12.25 16.2051 10.7949 14.75 9 14.75C7.20507 14.75 5.75 16.2051 5.75 18C5.75 19.7949 7.20507 21.25 9 21.25C10.7949 21.25 12.25 19.7949 12.25 18Z" fill="currentColor"/>''',
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
