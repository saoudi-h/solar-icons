// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `align-horizontal-spacing` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTIxIDIyLjc1QzIwLjU4NTggMjIuNzUgMjAuMjUgMjIuNDE0MiAyMC4yNSAyMkwyMC4yNSAyQzIwLjI1IDEuNTg1NzkgMjAuNTg1OCAxLjI1IDIxIDEuMjVDMjEuNDE0MiAxLjI1IDIxLjc1IDEuNTg1NzkgMjEuNzUgMkwyMS43NSAyMkMyMS43NSAyMi40MTQyIDIxLjQxNDIgMjIuNzUgMjEgMjIuNzVaTTMgMjIuNzVDMi41ODU3OSAyMi43NSAyLjI1IDIyLjQxNDIgMi4yNSAyMkwyLjI1IDJDMi4yNSAxLjU4NTc5IDIuNTg1NzkgMS4yNSAzIDEuMjVDMy40MTQyMSAxLjI1IDMuNzUgMS41ODU3OSAzLjc1IDJMMy43NSAyMkMzLjc1IDIyLjQxNDIgMy40MTQyMSAyMi43NSAzIDIyLjc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIgMjBDMTMuODg1NiAyMCAxNC44Mjg0IDIwIDE1LjQxNDIgMTkuNDE0MkMxNiAxOC44Mjg0IDE2IDE3Ljg4NTYgMTYgMTZMMTYgOEMxNiA2LjExNDM4IDE2IDUuMTcxNTcgMTUuNDE0MiA0LjU4NTc5QzE0LjgyODQgNCAxMy44ODU2IDQgMTIgNEMxMC4xMTQ0IDQgOS4xNzE1NyA0IDguNTg1NzkgNC41ODU3OUM4IDUuMTcxNTcgOCA2LjExNDM4IDggOEw4IDE2QzggMTcuODg1NiA4IDE4LjgyODQgOC41ODU3OSAxOS40MTQyQzkuMTcxNTcgMjAgMTAuMTE0NCAyMCAxMiAyMFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class AlignHorizontalSpacingBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `align-horizontal-spacing` icon in the boldDuotone style.
  const AlignHorizontalSpacingBoldDuotoneIcon({
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
    name: 'align-horizontal-spacing',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 20C13.8856 20 14.8284 20 15.4142 19.4142C16 18.8284 16 17.8856 16 16L16 8C16 6.11438 16 5.17157 15.4142 4.58579C14.8284 4 13.8856 4 12 4C10.1144 4 9.17157 4 8.58579 4.58579C8 5.17157 8 6.11438 8 8L8 16C8 17.8856 8 18.8284 8.58579 19.4142C9.17157 20 10.1144 20 12 20Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M21 22.75C20.5858 22.75 20.25 22.4142 20.25 22L20.25 2C20.25 1.58579 20.5858 1.25 21 1.25C21.4142 1.25 21.75 1.58579 21.75 2L21.75 22C21.75 22.4142 21.4142 22.75 21 22.75ZM3 22.75C2.58579 22.75 2.25 22.4142 2.25 22L2.25 2C2.25 1.58579 2.58579 1.25 3 1.25C3.41421 1.25 3.75 1.58579 3.75 2L3.75 22C3.75 22.4142 3.41421 22.75 3 22.75Z" fill="currentColor"/>''',
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
