// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `women` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyLjc1QzguNTQ4MjIgMi43NSA1Ljc1IDUuNTQ4MjIgNS43NSA5QzUuNzUgMTIuNDUxOCA4LjU0ODAyIDE1LjI1IDExLjk5OTggMTUuMjVDMTUuNDUxNiAxNS4yNSAxOC4yNSAxMi40NTE3IDE4LjI1IDlDMTguMjUgNS41NDgyMiAxNS40NTE4IDIuNzUgMTIgMi43NVpNNC4yNSA5QzQuMjUgNC43MTk3OSA3LjcxOTc5IDEuMjUgMTIgMS4yNUMxNi4yODAyIDEuMjUgMTkuNzUgNC43MTk3OSAxOS43NSA5QzE5Ljc1IDEzLjAyNzIgMTYuNjc4MSAxNi4zMzcgMTIuNzQ5OCAxNi43MTQyVjE3Ljc1SDE0LjVDMTQuOTE0MiAxNy43NSAxNS4yNSAxOC4wODU4IDE1LjI1IDE4LjVDMTUuMjUgMTguOTE0MiAxNC45MTQyIDE5LjI1IDE0LjUgMTkuMjVIMTIuNzQ5OEwxMi43NSAyMS45OTk5QzEyLjc1MDEgMjIuNDE0MiAxMi40MTQzIDIyLjc1IDEyLjAwMDEgMjIuNzVDMTEuNTg1OSAyMi43NSAxMS4yNTAxIDIyLjQxNDMgMTEuMjUgMjIuMDAwMUwxMS4yNDk4IDE5LjI1SDkuNTAwMDNDOS4wODU4MiAxOS4yNSA4Ljc1MDAzIDE4LjkxNDIgOC43NTAwMyAxOC41QzguNzUwMDMgMTguMDg1OCA5LjA4NTgyIDE3Ljc1IDkuNTAwMDMgMTcuNzVIMTEuMjQ5OFYxNi43MTQyQzcuMzIxNDcgMTYuMzM2OSA0LjI1IDEzLjAyNzIgNC4yNSA5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class WomenOutlineIcon extends StatelessWidget {
  /// Creates the `women` icon in the outline style.
  const WomenOutlineIcon({
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
    name: 'women',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C8.54822 2.75 5.75 5.54822 5.75 9C5.75 12.4518 8.54802 15.25 11.9998 15.25C15.4516 15.25 18.25 12.4517 18.25 9C18.25 5.54822 15.4518 2.75 12 2.75ZM4.25 9C4.25 4.71979 7.71979 1.25 12 1.25C16.2802 1.25 19.75 4.71979 19.75 9C19.75 13.0272 16.6781 16.337 12.7498 16.7142V17.75H14.5C14.9142 17.75 15.25 18.0858 15.25 18.5C15.25 18.9142 14.9142 19.25 14.5 19.25H12.7498L12.75 21.9999C12.7501 22.4142 12.4143 22.75 12.0001 22.75C11.5859 22.75 11.2501 22.4143 11.25 22.0001L11.2498 19.25H9.50003C9.08582 19.25 8.75003 18.9142 8.75003 18.5C8.75003 18.0858 9.08582 17.75 9.50003 17.75H11.2498V16.7142C7.32147 16.3369 4.25 13.0272 4.25 9Z" fill="currentColor"/>''',
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
