// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `whisk` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjg5OTEgMTUuMTI3Mkw5Ljg3OTUgMTguMTQ2N002Ljg1OTkzIDIxLjE2NjJDNS43NDgxNSAyMi4yNzc5IDMuOTQ1NjEgMjIuMjc3OSAyLjgzMzgzIDIxLjE2NjJDMS43MjIwNiAyMC4wNTQ1IDEuNzIyMDYgMTguMjUyIDIuODMzODMgMTcuMTQwMkw4Ljg3Mjk4IDExLjEwMTNNMjAuNTQ4NCAzLjQ1MTU0QzIxLjc1NjUgNC42NTk2MSAxOS4wOTg0IDguMTIyODkgMTcuMzI3OCA5Ljg5MzM2QzE1LjU1NzMgMTEuNjYzOCAxMS4yODg3IDE1LjEyNzEgMTAuMDgwNiAxMy45MTkxTTIwLjU0ODQgMy40NTE1NEMyMi43NzIgNS42NzUwMiAyMi4zNzMzIDkuNjc4NjUgMTkuODE1OCAxMi4yMzZDMTcuMjU4NCAxNC43OTM0IDEyLjMwNDEgMTYuMTQyNSAxMC4wODA2IDEzLjkxOTFNMjAuNTQ4NCAzLjQ1MTU0QzE4LjMyNDkgMS4yMjgwNiAxNC4zMjExIDEuNjI2NzIgMTEuNzYzNiA0LjE4NDA3QzkuMjA2MiA2Ljc0MTQyIDcuODU3MDIgMTEuNjk1NiAxMC4wODA2IDEzLjkxOTFNMjAuNTQ4NCAzLjQ1MTU0QzE5Ljk0NzEgMi44NTAyNyAxOC43ODczIDMuMjA2ODYgMTcuNTU1NiAzLjkzNTA3TTEwLjA4MDYgMTMuOTE5MUM4Ljg3MjQ2IDEyLjcxMSAxMi4zMzY0IDguNDQzMDcgMTQuMTA2OSA2LjY3MjU5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class WhiskBrokenIcon extends StatelessWidget {
  /// Creates the `whisk` icon in the broken style.
  const WhiskBrokenIcon({
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
    name: 'whisk',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.8991 15.1272L9.8795 18.1467M6.85993 21.1662C5.74815 22.2779 3.94561 22.2779 2.83383 21.1662C1.72206 20.0545 1.72206 18.252 2.83383 17.1402L8.87298 11.1013M20.5484 3.45154C21.7565 4.65961 19.0984 8.12289 17.3278 9.89336C15.5573 11.6638 11.2887 15.1271 10.0806 13.9191M20.5484 3.45154C22.772 5.67502 22.3733 9.67865 19.8158 12.236C17.2584 14.7934 12.3041 16.1425 10.0806 13.9191M20.5484 3.45154C18.3249 1.22806 14.3211 1.62672 11.7636 4.18407C9.2062 6.74142 7.85702 11.6956 10.0806 13.9191M20.5484 3.45154C19.9471 2.85027 18.7873 3.20686 17.5556 3.93507M10.0806 13.9191C8.87246 12.711 12.3364 8.44307 14.1069 6.67259" stroke="currentColor" stroke-linecap="round"/>''',
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
