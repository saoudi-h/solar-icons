// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hanger` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuNTM1ODkgNi45MDkwOUM5LjUzNTg5IDUuODU0NzMgMTAuNDg2OCA1IDExLjY1OTkgNUMxMi44MzI5IDUgMTMuNzgzOSA1Ljg1NDczIDEzLjc4MzkgNi45MDkwOUMxMy43ODM5IDcuNDA1MzIgMTMuNjA0NiA3Ljg1NzMzIDEzLjI5MjUgOC4xOTY4MkMxMi42OTQ4IDguODQ3MDYgMTEuODAxNSA5LjUwMTk3IDExLjgwMTUgMTAuMzQ1NVYxMC42Mjk5TTExLjgwMTUgMTAuNjI5OUMxMi41MzMgMTAuNjIxNCAxMy4yNjc0IDEwLjgyNDYgMTMuODg0NSAxMS4yNDA2TDE2IDEyLjY2NjZNMTEuODAxNSAxMC42Mjk5QzExLjA3NiAxMC42MzgzIDEwLjM1MzQgMTAuODU1IDkuNzUxIDExLjI3ODdMMi42NTUzMSAxNi4yN0MxLjM4MzIyIDE3LjE2NDggMi4wODcyMSAxOSAzLjcwMjU0IDE5SDIwLjI5NzVDMjEuOTMwNSAxOSAyMi42MjM0IDE3LjEzMTUgMjEuMzE3IDE2LjI1MDlMMTkgMTQuNjg5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class HangerBrokenIcon extends StatelessWidget {
  /// Creates the `hanger` icon in the broken style.
  const HangerBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.53589 6.90909C9.53589 5.85473 10.4868 5 11.6599 5C12.8329 5 13.7839 5.85473 13.7839 6.90909C13.7839 7.40532 13.6046 7.85733 13.2925 8.19682C12.6948 8.84706 11.8015 9.50197 11.8015 10.3455V10.6299M11.8015 10.6299C12.533 10.6214 13.2674 10.8246 13.8845 11.2406L16 12.6666M11.8015 10.6299C11.076 10.6383 10.3534 10.855 9.751 11.2787L2.65531 16.27C1.38322 17.1648 2.08721 19 3.70254 19H20.2975C21.9305 19 22.6234 17.1315 21.317 16.2509L19 14.689" stroke="currentColor" stroke-linecap="round"/>''',
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
