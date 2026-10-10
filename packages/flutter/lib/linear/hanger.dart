// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hanger` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuNTM1ODkgNi45MDkwOUM5LjUzNTg5IDUuODU0NzMgMTAuNDg2OCA1IDExLjY1OTkgNUMxMi44MzI5IDUgMTMuNzgzOSA1Ljg1NDczIDEzLjc4MzkgNi45MDkwOUMxMy43ODM5IDcuNDA1MzIgMTMuNjA0NiA3Ljg1NzMzIDEzLjI5MjUgOC4xOTY4MkMxMi42OTQ4IDguODQ3MDYgMTEuODAxNSA5LjUwMTk3IDExLjgwMTUgMTAuMzQ1NVYxMC42Mjk5TTExLjgwMTUgMTAuNjI5OUMxMi41MzMgMTAuNjIxNCAxMy4yNjc0IDEwLjgyNDYgMTMuODg0NSAxMS4yNDA2TDIxLjMxNyAxNi4yNTA5QzIyLjYyMzQgMTcuMTMxNSAyMS45MzA1IDE5IDIwLjI5NzUgMTlIMy43MDI1NEMyLjA4NzIxIDE5IDEuMzgzMjIgMTcuMTY0OCAyLjY1NTMxIDE2LjI3TDkuNzUxIDExLjI3ODdDMTAuMzUzNCAxMC44NTUgMTEuMDc2IDEwLjYzODMgMTEuODAxNSAxMC42Mjk5WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class HangerLinearIcon extends StatelessWidget {
  /// Creates the `hanger` icon in the linear style.
  const HangerLinearIcon({
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
    name: 'hanger',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9.53589 6.90909C9.53589 5.85473 10.4868 5 11.6599 5C12.8329 5 13.7839 5.85473 13.7839 6.90909C13.7839 7.40532 13.6046 7.85733 13.2925 8.19682C12.6948 8.84706 11.8015 9.50197 11.8015 10.3455V10.6299M11.8015 10.6299C12.533 10.6214 13.2674 10.8246 13.8845 11.2406L21.317 16.2509C22.6234 17.1315 21.9305 19 20.2975 19H3.70254C2.08721 19 1.38322 17.1648 2.65531 16.27L9.751 11.2787C10.3534 10.855 11.076 10.6383 11.8015 10.6299Z" stroke="currentColor" stroke-linecap="round"/>''',
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
