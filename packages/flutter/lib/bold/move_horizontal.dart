// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `move-horizontal` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjQ3MDcgNy4zMjgyM0MxNy43NjM2IDcuMDM1NTIgMTguMjM4NCA3LjAzNTQ2IDE4LjUzMTIgNy4zMjgyM0wyMi42NzI5IDExLjQ2OThDMjIuOTY1NCAxMS43NjI3IDIyLjk2NTUgMTIuMjM3NiAyMi42NzI5IDEyLjUzMDRMMTguNTMxMiAxNi42NzJDMTguMjM4NSAxNi45NjQ4IDE3Ljc2MzYgMTYuOTY0NSAxNy40NzA3IDE2LjY3MkMxNy4xNzc5IDE2LjM3OTEgMTcuMTc3OCAxNS45MDQzIDE3LjQ3MDcgMTUuNjExNEwyMC4zMzIgMTIuNzUwMUgzLjY2ODk1TDYuNTMwMjcgMTUuNjExNEM2LjgyMjc4IDE1LjkwNDMgNi44MjI4OSAxNi4zNzkyIDYuNTMwMjcgMTYuNjcyQzYuMjM3NDkgMTYuOTY0OCA1Ljc2MjY1IDE2Ljk2NDUgNS40Njk3MyAxNi42NzJMMS4zMjgxMiAxMi41MzA0QzEuMTg3NTIgMTIuMzg5OCAxLjEwNzQ3IDEyLjE5ODkgMS4xMDc0MiAxMi4wMDAxQzEuMTA3NDMgMTEuODAxMiAxLjE4NzQ4IDExLjYxMDUgMS4zMjgxMiAxMS40Njk4TDUuNDY5NzMgNy4zMjgyM0M1Ljc2MjYzIDcuMDM1NDkgNi4yMzc0MyA3LjAzNTQgNi41MzAyNyA3LjMyODIzQzYuODIyNzggNy42MjExIDYuODIyOSA4LjA5NTk4IDYuNTMwMjcgOC4zODg3OEwzLjY2ODk1IDExLjI1MDFIMjAuMzMyTDE3LjQ3MDcgOC4zODg3OEMxNy4xNzc5IDguMDk1ODggMTcuMTc3OCA3LjYyMTEgMTcuNDcwNyA3LjMyODIzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MoveHorizontalBoldIcon extends StatelessWidget {
  /// Creates the `move-horizontal` icon in the bold style.
  const MoveHorizontalBoldIcon({
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
    style: SolarIconStyle.bold,
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
