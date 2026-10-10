// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNy40NzA3IDcuMzI4MjNDMTcuNzYzNiA3LjAzNTUyIDE4LjIzODQgNy4wMzU0NiAxOC41MzEyIDcuMzI4MjNMMjIuNjcyOSAxMS40Njk4QzIyLjk2NTQgMTEuNzYyNyAyMi45NjU1IDEyLjIzNzYgMjIuNjcyOSAxMi41MzA0TDE4LjUzMTIgMTYuNjcyQzE4LjIzODUgMTYuOTY0OCAxNy43NjM2IDE2Ljk2NDUgMTcuNDcwNyAxNi42NzJDMTcuMTc3OSAxNi4zNzkxIDE3LjE3NzggMTUuOTA0MyAxNy40NzA3IDE1LjYxMTRMMjAuMzMyIDEyLjc1MDFIMy42Njg5NUw2LjUzMDI3IDE1LjYxMTRDNi44MjI3OCAxNS45MDQzIDYuODIyODkgMTYuMzc5MiA2LjUzMDI3IDE2LjY3MkM2LjIzNzQ5IDE2Ljk2NDggNS43NjI2NSAxNi45NjQ1IDUuNDY5NzMgMTYuNjcyTDEuMzI4MTIgMTIuNTMwNEMxLjE4NzUyIDEyLjM4OTggMS4xMDc0NyAxMi4xOTg5IDEuMTA3NDIgMTIuMDAwMUMxLjEwNzQzIDExLjgwMTIgMS4xODc0OCAxMS42MTA1IDEuMzI4MTIgMTEuNDY5OEw1LjQ2OTczIDcuMzI4MjNDNS43NjI2MyA3LjAzNTQ5IDYuMjM3NDMgNy4wMzU0IDYuNTMwMjcgNy4zMjgyM0M2LjgyMjc4IDcuNjIxMSA2LjgyMjkgOC4wOTU5OCA2LjUzMDI3IDguMzg4NzhMMy42Njg5NSAxMS4yNTAxSDIwLjMzMkwxNy40NzA3IDguMzg4NzhDMTcuMTc3OSA4LjA5NTg4IDE3LjE3NzggNy42MjExIDE3LjQ3MDcgNy4zMjgyM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MoveHorizontalOutlineIcon extends StatelessWidget {
  /// Creates the `move-horizontal` icon in the outline style.
  const MoveHorizontalOutlineIcon({
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
    name: 'move-horizontal',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M17.4707 7.32823C17.7636 7.03552 18.2384 7.03546 18.5312 7.32823L22.6729 11.4698C22.9654 11.7627 22.9655 12.2376 22.6729 12.5304L18.5312 16.672C18.2385 16.9648 17.7636 16.9645 17.4707 16.672C17.1779 16.3791 17.1778 15.9043 17.4707 15.6114L20.332 12.7501H3.66895L6.53027 15.6114C6.82278 15.9043 6.82289 16.3792 6.53027 16.672C6.23749 16.9648 5.76265 16.9645 5.46973 16.672L1.32812 12.5304C1.18752 12.3898 1.10747 12.1989 1.10742 12.0001C1.10743 11.8012 1.18748 11.6105 1.32812 11.4698L5.46973 7.32823C5.76263 7.03549 6.23743 7.0354 6.53027 7.32823C6.82278 7.6211 6.8229 8.09598 6.53027 8.38878L3.66895 11.2501H20.332L17.4707 8.38878C17.1779 8.09588 17.1778 7.6211 17.4707 7.32823Z" fill="currentColor"/>''',
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
