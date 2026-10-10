// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `moon` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTIyIDEyLjAwMDRDMjIgMTcuNTIzMiAxNy41MjI4IDIyLjAwMDQgMTIgMjIuMDAwNEMxMC44MzU4IDIyLjAwMDQgOS43MTgwMSAyMS44MDE0IDguNjc4ODcgMjEuNDM1N0M4LjI0MTM4IDIwLjM3NzIgOCAxOS4yMTcgOCAxOC4wMDA0QzggMTUuNzc5MiA4LjgwNDY3IDEzLjc0NTkgMTAuMTM4NCAxMi4xNzYyQzExLjMxIDEzLjg4MTggMTMuMjc0NCAxNS4wMDA0IDE1LjUgMTUuMDAwNEMxNy44NjE1IDE1LjAwMDQgMTkuOTI4OSAxMy43NDEgMjEuMDY3MiAxMS44NTcyQzIxLjMwNjUgMTEuNDYxMiAyMiAxMS41Mzc3IDIyIDEyLjAwMDRaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yIDEyQzIgMTYuMzU4NiA0Ljc4ODUyIDIwLjA2NTkgOC42Nzg4NyAyMS40MzUzQzguMjQxMzggMjAuMzc2OCA4IDE5LjIxNjYgOCAxOEM4IDE1Ljc3ODggOC44MDQ2NyAxMy43NDU1IDEwLjEzODQgMTIuMTc1OEM5LjQyMDI3IDExLjEzMDMgOSA5Ljg2NDIyIDkgOC41QzkgNi4xMzg0NSAxMC4yNTk0IDQuMDcxMDUgMTIuMTQzMiAyLjkzMjc2QzEyLjUzOTIgMi42OTM0NyAxMi40NjI3IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MoonBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `moon` icon in the boldDuotone style.
  const MoonBoldDuotoneIcon({
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
    name: 'moon',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M2 12C2 16.3586 4.78852 20.0659 8.67887 21.4353C8.24138 20.3768 8 19.2166 8 18C8 15.7788 8.80467 13.7455 10.1384 12.1758C9.42027 11.1303 9 9.86422 9 8.5C9 6.13845 10.2594 4.07105 12.1432 2.93276C12.5392 2.69347 12.4627 2 12 2C6.47715 2 2 6.47715 2 12Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M22 12.0004C22 17.5232 17.5228 22.0004 12 22.0004C10.8358 22.0004 9.71801 21.8014 8.67887 21.4357C8.24138 20.3772 8 19.217 8 18.0004C8 15.7792 8.80467 13.7459 10.1384 12.1762C11.31 13.8818 13.2744 15.0004 15.5 15.0004C17.8615 15.0004 19.9289 13.741 21.0672 11.8572C21.3065 11.4612 22 11.5377 22 12.0004Z" fill="currentColor"/>''',
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
