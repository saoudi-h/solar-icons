// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `transfer-vertical` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDEwLjI1QzIwLjMwOTMgMTAuMjUgMjAuNTg2OSAxMC4wNjAyIDIwLjY5OSA5Ljc3MTkxQzIwLjgxMTEgOS40ODM2NiAyMC43MzQ4IDkuMTU2MTQgMjAuNTA2OCA4Ljk0NzE1TDE0LjUwNjggMy40NDcxNUMxNC4yODc1IDMuMjQ2MTcgMTMuOTcwMyAzLjE5Mzc0IDEzLjY5OCAzLjMxMzVDMTMuNDI1OCAzLjQzMzI3IDEzLjI1IDMuNzAyNTkgMTMuMjUgNC4wMDAwMkwxMy4yNSAyMEMxMy4yNSAyMC40MTQyIDEzLjU4NTggMjAuNzUgMTQgMjAuNzVDMTQuNDE0MiAyMC43NSAxNC43NSAyMC40MTQyIDE0Ljc1IDIwTDE0Ljc1IDEwLjI1TDIwIDEwLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik00LjAwMDAzIDEzLjc1TDkuMjUwMDMgMTMuNzVMOS4yNTAwMyA0QzkuMjUwMDMgMy41ODU3OSA5LjU4NTgxIDMuMjUgMTAgMy4yNUMxMC40MTQyIDMuMjUgMTAuNzUgMy41ODU3OSAxMC43NSA0VjIwQzEwLjc1IDIwLjI5NzQgMTAuNTc0MyAyMC41NjY3IDEwLjMwMiAyMC42ODY1QzEwLjAyOTggMjAuODA2MyA5LjcxMjQ4IDIwLjc1MzggOS40OTMyMyAyMC41NTI5TDMuNDkzMjQgMTUuMDUyOUMzLjI2NTI0IDE0Ljg0MzkgMy4xODg5MiAxNC41MTY0IDMuMzAxMDUgMTQuMjI4MUMzLjQxMzE3IDEzLjkzOTkgMy42OTA3NCAxMy43NSA0LjAwMDAzIDEzLjc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class TransferVerticalBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `transfer-vertical` icon in the boldDuotone style.
  const TransferVerticalBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20 10.25C20.3093 10.25 20.5869 10.0602 20.699 9.77191C20.8111 9.48366 20.7348 9.15614 20.5068 8.94715L14.5068 3.44715C14.2875 3.24617 13.9703 3.19374 13.698 3.3135C13.4258 3.43327 13.25 3.70259 13.25 4.00002L13.25 20C13.25 20.4142 13.5858 20.75 14 20.75C14.4142 20.75 14.75 20.4142 14.75 20L14.75 10.25L20 10.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.00003 13.75L9.25003 13.75L9.25003 4C9.25003 3.58579 9.58581 3.25 10 3.25C10.4142 3.25 10.75 3.58579 10.75 4V20C10.75 20.2974 10.5743 20.5667 10.302 20.6865C10.0298 20.8063 9.71248 20.7538 9.49323 20.5529L3.49324 15.0529C3.26524 14.8439 3.18892 14.5164 3.30105 14.2281C3.41317 13.9399 3.69074 13.75 4.00003 13.75Z" fill="currentColor"/>''',
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
