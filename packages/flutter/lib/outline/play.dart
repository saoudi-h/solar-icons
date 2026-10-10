// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `play` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjIzODMyIDMuMDQ0NDVDNS42NTE5NiAyLjE4MTggMy43NSAzLjMxOTU3IDMuNzUgNS4wMzI5OUwzLjc1IDE4Ljk2NzJDMy43NSAyMC42ODA2IDUuNjUxOTYgMjEuODE4NCA3LjIzODMyIDIwLjk1NTdMMjAuMDUwMyAxMy45ODg2QzIxLjY0OTkgMTMuMTE4OCAyMS42NDk5IDEwLjg4MTQgMjAuMDUwMyAxMC4wMTE2TDcuMjM4MzIgMy4wNDQ0NVpNMi4yNSA1LjAzMjk5QzIuMjUgMi4xMjc5OCA1LjQxNjc0IDAuMzQ2NDM4IDcuOTU0OTEgMS43MjY2OUwyMC43NjY5IDguNjkzOEMyMy40MTEgMTAuMTMxNyAyMy40MTEgMTMuODY4NSAyMC43NjY5IDE1LjMwNjRMNy45NTQ5MSAyMi4yNzM1QzUuNDE2NzQgMjMuNjUzNyAyLjI1IDIxLjg3MjIgMi4yNSAxOC45NjcyTDIuMjUgNS4wMzI5OVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class PlayOutlineIcon extends StatelessWidget {
  /// Creates the `play` icon in the outline style.
  const PlayOutlineIcon({
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
    name: 'play',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.23832 3.04445C5.65196 2.1818 3.75 3.31957 3.75 5.03299L3.75 18.9672C3.75 20.6806 5.65196 21.8184 7.23832 20.9557L20.0503 13.9886C21.6499 13.1188 21.6499 10.8814 20.0503 10.0116L7.23832 3.04445ZM2.25 5.03299C2.25 2.12798 5.41674 0.346438 7.95491 1.72669L20.7669 8.6938C23.411 10.1317 23.411 13.8685 20.7669 15.3064L7.95491 22.2735C5.41674 23.6537 2.25 21.8722 2.25 18.9672L2.25 5.03299Z" fill="currentColor"/>''',
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
