// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `transfer-vertical` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQuMDAwMDMgMTMuNzVDMy42OTA3NCAxMy43NSAzLjQxMzE3IDEzLjkzOTkgMy4zMDEwNSAxNC4yMjgxQzMuMTg4OTIgMTQuNTE2NCAzLjI2NTI0IDE0Ljg0MzkgMy40OTMyNCAxNS4wNTI5TDkuNDkzMjQgMjAuNTUyOUM5LjcxMjQ5IDIwLjc1MzkgMTAuMDI5OCAyMC44MDYzIDEwLjMwMiAyMC42ODY1QzEwLjU3NDMgMjAuNTY2OCAxMC43NSAyMC4yOTc0IDEwLjc1IDIwTDEwLjc1IDQuMDAwMDJDMTAuNzUgMy41ODU4IDEwLjQxNDIgMy4yNTAwMiAxMCAzLjI1MDAyQzkuNTg1ODIgMy4yNTAwMiA5LjI1MDAzIDMuNTg1OCA5LjI1MDAzIDQuMDAwMDJWMTMuNzVINC4wMDAwM1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIwIDEwLjI1TDE0Ljc1IDEwLjI1VjIwQzE0Ljc1IDIwLjQxNDIgMTQuNDE0MiAyMC43NSAxNCAyMC43NUMxMy41ODU4IDIwLjc1IDEzLjI1IDIwLjQxNDIgMTMuMjUgMjBMMTMuMjUgNC4wMDAwMkMxMy4yNSAzLjcwMjU5IDEzLjQyNTggMy40MzMyNyAxMy42OTggMy4zMTM1QzEzLjk3MDMgMy4xOTM3NCAxNC4yODc2IDMuMjQ2MTcgMTQuNTA2OCAzLjQ0NzE1TDIwLjUwNjggOC45NDcxNUMyMC43MzQ4IDkuMTU2MTQgMjAuODExMSA5LjQ4MzY2IDIwLjY5OSA5Ljc3MTkxQzIwLjU4NjkgMTAuMDYwMiAyMC4zMDkzIDEwLjI1IDIwIDEwLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class TransferVerticalBoldIcon extends StatelessWidget {
  /// Creates the `transfer-vertical` icon in the bold style.
  const TransferVerticalBoldIcon({
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
    name: 'transfer-vertical',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M4.00003 13.75C3.69074 13.75 3.41317 13.9399 3.30105 14.2281C3.18892 14.5164 3.26524 14.8439 3.49324 15.0529L9.49324 20.5529C9.71249 20.7539 10.0298 20.8063 10.302 20.6865C10.5743 20.5668 10.75 20.2974 10.75 20L10.75 4.00002C10.75 3.5858 10.4142 3.25002 10 3.25002C9.58582 3.25002 9.25003 3.5858 9.25003 4.00002V13.75H4.00003Z" fill="currentColor"/>
<path d="M20 10.25L14.75 10.25V20C14.75 20.4142 14.4142 20.75 14 20.75C13.5858 20.75 13.25 20.4142 13.25 20L13.25 4.00002C13.25 3.70259 13.4258 3.43327 13.698 3.3135C13.9703 3.19374 14.2876 3.24617 14.5068 3.44715L20.5068 8.94715C20.7348 9.15614 20.8111 9.48366 20.699 9.77191C20.5869 10.0602 20.3093 10.25 20 10.25Z" fill="currentColor"/>''',
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
