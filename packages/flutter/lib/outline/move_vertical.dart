// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNi42NzIxIDE3LjQ3MTRDMTYuOTY0OCAxNy43NjQzIDE2Ljk2NDkgMTguMjM5MSAxNi42NzIxIDE4LjUzMkwxMi41MzA1IDIyLjY3MzZDMTIuMjM3NyAyMi45NjYxIDExLjc2MjggMjIuOTY2MiAxMS40NyAyMi42NzM2TDcuMzI4MzkgMTguNTMyQzcuMDM1NjEgMTguMjM5MiA3LjAzNTgzIDE3Ljc2NDQgNy4zMjgzOSAxNy40NzE0QzcuNjIxMjkgMTcuMTc4NiA4LjA5NjA3IDE3LjE3ODYgOC4zODg5NCAxNy40NzE0TDExLjI1MDMgMjAuMzMyOEwxMS4yNTAzIDMuNjY5NjhMOC4zODg5NCA2LjUzMTAxQzguMDk2MDcgNi44MjM1MSA3LjYyMTE4IDYuODIzNjIgNy4zMjgzOSA2LjUzMTAxQzcuMDM1NjEgNi4yMzgyMiA3LjAzNTgzIDUuNzYzMzggNy4zMjgzOSA1LjQ3MDQ2TDExLjQ3IDEuMzI4ODZDMTEuNjEwNiAxLjE4ODI2IDExLjgwMTQgMS4xMDgyIDEyLjAwMDMgMS4xMDgxNUMxMi4xOTkyIDEuMTA4MTYgMTIuMzg5OSAxLjE4ODIxIDEyLjUzMDUgMS4zMjg4NkwxNi42NzIxIDUuNDcwNDZDMTYuOTY0OSA1Ljc2MzM2IDE2Ljk2NSA2LjIzODE2IDE2LjY3MjEgNi41MzEwMUMxNi4zNzkzIDYuODIzNTEgMTUuOTA0NCA2LjgyMzY0IDE1LjYxMTYgNi41MzEwMUwxMi43NTAzIDMuNjY5NjhMMTIuNzUwMyAyMC4zMzI4TDE1LjYxMTYgMTcuNDcxNEMxNS45MDQ1IDE3LjE3ODYgMTYuMzc5MyAxNy4xNzg2IDE2LjY3MjEgMTcuNDcxNFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MoveVerticalOutlineIcon extends StatelessWidget {
  /// Creates the `move-vertical` icon in the outline style.
  const MoveVerticalOutlineIcon({
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
    name: 'move-vertical',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M16.6721 17.4714C16.9648 17.7643 16.9649 18.2391 16.6721 18.532L12.5305 22.6736C12.2377 22.9661 11.7628 22.9662 11.47 22.6736L7.32839 18.532C7.03561 18.2392 7.03583 17.7644 7.32839 17.4714C7.62129 17.1786 8.09607 17.1786 8.38894 17.4714L11.2503 20.3328L11.2503 3.66968L8.38894 6.53101C8.09607 6.82351 7.62118 6.82362 7.32839 6.53101C7.03561 6.23822 7.03583 5.76338 7.32839 5.47046L11.47 1.32886C11.6106 1.18826 11.8014 1.1082 12.0003 1.10815C12.1992 1.10816 12.3899 1.18821 12.5305 1.32886L16.6721 5.47046C16.9649 5.76336 16.965 6.23816 16.6721 6.53101C16.3793 6.82351 15.9044 6.82364 15.6116 6.53101L12.7503 3.66968L12.7503 20.3328L15.6116 17.4714C15.9045 17.1786 16.3793 17.1786 16.6721 17.4714Z" fill="currentColor"/>''',
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
