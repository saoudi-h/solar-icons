// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03LjUgNC4yNUM3LjkxNDIxIDQuMjUgOC4yNSA0LjU4NTc5IDguMjUgNVYxOUM4LjI1IDE5LjQxNDIgNy45MTQyIDE5Ljc1IDcuNSAxOS43NUM3LjA4NTc5IDE5Ljc1IDYuNzUgMTkuNDE0MiA2Ljc1IDE5VjVDNi43NSA0LjU4NTc5IDcuMDg1NzkgNC4yNSA3LjUgNC4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTE1LjkzMDcgNC41MTE3MkMxNi4yMDAzIDQuMTk3MzcgMTYuNjczOCA0LjE2MTE0IDE2Ljk4ODMgNC40MzA2NkMxNy4zMDI2IDQuNzAwMjUgMTcuMzM4OSA1LjE3Mzg0IDE3LjA2OTMgNS40ODgyOEwxMS40ODgzIDEyTDE3LjA2OTMgMTguNTExN0MxNy4zMzg5IDE4LjgyNjIgMTcuMzAyNiAxOS4yOTk3IDE2Ljk4ODMgMTkuNTY5M0MxNi42NzM4IDE5LjgzODkgMTYuMjAwMyAxOS44MDI2IDE1LjkzMDcgMTkuNDg4M0w5LjkzMDY2IDEyLjQ4ODNDOS42ODk5MiAxMi4yMDc0IDkuNjg5OTIgMTEuNzkyNiA5LjkzMDY2IDExLjUxMTdMMTUuOTMwNyA0LjUxMTcyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ChevronFirstOutlineIcon extends StatelessWidget {
  /// Creates the `chevron-first` icon in the outline style.
  const ChevronFirstOutlineIcon({
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
    name: 'chevron-first',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M7.5 4.25C7.91421 4.25 8.25 4.58579 8.25 5V19C8.25 19.4142 7.9142 19.75 7.5 19.75C7.08579 19.75 6.75 19.4142 6.75 19V5C6.75 4.58579 7.08579 4.25 7.5 4.25Z" fill="currentColor"/>
<path d="M15.9307 4.51172C16.2003 4.19737 16.6738 4.16114 16.9883 4.43066C17.3026 4.70025 17.3389 5.17384 17.0693 5.48828L11.4883 12L17.0693 18.5117C17.3389 18.8262 17.3026 19.2997 16.9883 19.5693C16.6738 19.8389 16.2003 19.8026 15.9307 19.4883L9.93066 12.4883C9.68992 12.2074 9.68992 11.7926 9.93066 11.5117L15.9307 4.51172Z" fill="currentColor"/>''',
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
