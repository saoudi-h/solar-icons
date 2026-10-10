// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-arrow-up` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTguMDM3NCA5Ljg1NzYxQzcuNzgyNjYgOS43MzAyNCA3LjQ3MzE0IDkuODQxMDcgNy4zNTcxNCAxMC4xMDEyTDMuMTY0NDcgMTkuNTAyOUMyLjQ5NzQxIDIwLjk5ODcgMy45Nzg2NSAyMi41NTAzIDUuMzY2NDEgMjEuODA5M0wxMS4yNzAxIDE4LjY1NzNDMTEuNzI5MyAxOC40MTIxIDEyLjI2OTcgMTguNDEyMiAxMi43Mjg5IDE4LjY1NzNMMTguNjMyNiAyMS44MDkzQzIwLjAyMDQgMjIuNTUwMyAyMS41MDE2IDIwLjk5ODcgMjAuODM0NiAxOS41MDI5TDE5LjI2MjkgMTUuOTc4NUMxOS4wNzQzIDE1LjU1NTcgMTguNzQ0OCAxNS4yMTEzIDE4LjMzMDcgMTUuMDA0M0w4LjAzNzQgOS44NTc2MVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNOC42MDk1IDguNDY3MjFDOC4zNzAxOSA4LjM0NzU1IDguMjY3NDkgOC4wNjA3MSA4LjM3NjQ2IDcuODE2MzVMMTAuNTI3MSAyLjk5Mzc5QzExLjExNzQgMS42NzAwNCAxMi44ODE4IDEuNjcwMDQgMTMuNDcyMiAyLjk5Mzc5TDE3LjQ0MDEgMTEuODkxNUMxNy42MzEzIDEyLjMyMDIgMTcuMTc5NyAxMi43NTIzIDE2Ljc1OTggMTIuNTQyNEw4LjYwOTUgOC40NjcyMVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MapArrowUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `map-arrow-up` icon in the boldDuotone style.
  const MapArrowUpBoldDuotoneIcon({
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
    name: 'map-arrow-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.0374 9.85761C7.78266 9.73024 7.47314 9.84107 7.35714 10.1012L3.16447 19.5029C2.49741 20.9987 3.97865 22.5503 5.36641 21.8093L11.2701 18.6573C11.7293 18.4121 12.2697 18.4122 12.7289 18.6573L18.6326 21.8093C20.0204 22.5503 21.5016 20.9987 20.8346 19.5029L19.2629 15.9785C19.0743 15.5557 18.7448 15.2113 18.3307 15.0043L8.0374 9.85761Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.6095 8.46721C8.37019 8.34755 8.26749 8.06071 8.37646 7.81635L10.5271 2.99379C11.1174 1.67004 12.8818 1.67004 13.4722 2.99379L17.4401 11.8915C17.6313 12.3202 17.1797 12.7523 16.7598 12.5424L8.6095 8.46721Z" fill="currentColor"/>''',
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
