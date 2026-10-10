// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-minus-minimalistic` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGcgb3BhY2l0eT0iMC41Ij4KPHBhdGggZD0iTTExIDE1LjI1QzExLjQxNDIgMTUuMjUgMTEuNzUgMTUuNTg1OCAxMS43NSAxNkMxMS43NSAxNi40MTQyIDExLjQxNDIgMTYuNzUgMTEgMTYuNzVIM0MyLjU4NTc5IDE2Ljc1IDIuMjUgMTYuNDE0MiAyLjI1IDE2QzIuMjUgMTUuNTg1OCAyLjU4NTc5IDE1LjI1IDMgMTUuMjVIMTFaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMSAxMC4yNUMyMS40MTQyIDEwLjI1IDIxLjc1IDEwLjU4NTggMjEuNzUgMTFDMjEuNzUgMTEuNDE0MiAyMS40MTQyIDExLjc1IDIxIDExLjc1SDNDMi41ODU3OSAxMS43NSAyLjI1IDExLjQxNDIgMi4yNSAxMUMyLjI1IDEwLjU4NTggMi41ODU3OSAxMC4yNSAzIDEwLjI1SDIxWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjEgNS4yNUMyMS40MTQyIDUuMjUgMjEuNzUgNS41ODU3OSAyMS43NSA2QzIxLjc1IDYuNDE0MjEgMjEuNDE0MiA2Ljc1IDIxIDYuNzVIM0MyLjU4NTc4IDYuNzUgMi4yNSA2LjQxNDIxIDIuMjUgNkMyLjI1IDUuNTg1NzkgMi41ODU3OCA1LjI1IDMgNS4yNUgyMVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9nPgo8cGF0aCBkPSJNMjEgMTcuMjVDMjEuNDE0MiAxNy4yNSAyMS43NSAxNy41ODU4IDIxLjc1IDE4QzIxLjc1IDE4LjQxNDIgMjEuNDE0MiAxOC43NSAyMSAxOC43NUgxNEMxMy41ODU4IDE4Ljc1IDEzLjI1IDE4LjQxNDIgMTMuMjUgMThDMTMuMjUgMTcuNTg1OCAxMy41ODU4IDE3LjI1IDE0IDE3LjI1SDIxWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ListMinusMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `list-minus-minimalistic` icon in the boldDuotone style.
  const ListMinusMinimalisticBoldDuotoneIcon({
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
    name: 'list-minus-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21 17.25C21.4142 17.25 21.75 17.5858 21.75 18C21.75 18.4142 21.4142 18.75 21 18.75H14C13.5858 18.75 13.25 18.4142 13.25 18C13.25 17.5858 13.5858 17.25 14 17.25H21Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M11 15.25C11.4142 15.25 11.75 15.5858 11.75 16C11.75 16.4142 11.4142 16.75 11 16.75H3C2.58579 16.75 2.25 16.4142 2.25 16C2.25 15.5858 2.58579 15.25 3 15.25H11Z" fill="currentColor"/>
<path d="M21 10.25C21.4142 10.25 21.75 10.5858 21.75 11C21.75 11.4142 21.4142 11.75 21 11.75H3C2.58579 11.75 2.25 11.4142 2.25 11C2.25 10.5858 2.58579 10.25 3 10.25H21Z" fill="currentColor"/>
<path d="M21 5.25C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58578 6.75 2.25 6.41421 2.25 6C2.25 5.58579 2.58578 5.25 3 5.25H21Z" fill="currentColor"/>
</g>''',
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
