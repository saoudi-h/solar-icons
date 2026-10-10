// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rows-3` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTMgMkMxNi43NzEyIDIgMTguNjU2OSAyIDE5LjgyODQgMy4xNzE1N0MyMSA0LjM0MzE1IDIxIDYuMjI4NzYgMjEgMTBMMjEgMTRDMjEgMTcuNzcxMiAyMSAxOS42NTY5IDE5LjgyODQgMjAuODI4NEMxOC42NTY5IDIyIDE2Ljc3MTIgMjIgMTMgMjJMMTEgMjJDNy4yMjg3NiAyMiA1LjM0MzE1IDIyIDQuMTcxNTcgMjAuODI4NEMzIDE5LjY1NjkgMyAxNy43NzEyIDMgMTRMMyAxMEMzIDYuMjI4NzYgMyA0LjM0MzE1IDQuMTcxNTcgMy4xNzE1N0M1LjM0MzE1IDIgNy4yMjg3NiAyIDExIDJMMTMgMloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIwLjk4NzMgMTYuMDgzTDMuMDEzNjcgMTYuMDgzQzMuMDA2MyAxNS42MjIgMy4wMDA1IDE1LjEyMzMgMyAxNC41ODNMMjEgMTQuNTgzQzIwLjk5OTUgMTUuMTIzMyAyMC45OTQ3IDE1LjYyMiAyMC45ODczIDE2LjA4M1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTMuMDAwOTggOS40MTYwMUMzLjAwMTQ3IDguODc1NjggMy4wMDYyOSA4LjM3NzA3IDMuMDEzNjcgNy45MTYwMUwyMC45ODczIDcuOTE2MDJDMjAuOTk0NyA4LjM3NzA2IDIwLjk5OTUgOC44NzU2OSAyMSA5LjQxNjAyTDMuMDAwOTggOS40MTYwMVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class Rows3BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `rows-3` icon in the boldDuotone style.
  const Rows3BoldDuotoneIcon({
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
    name: 'rows-3',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.9873 16.083L3.01367 16.083C3.0063 15.622 3.0005 15.1233 3 14.583L21 14.583C20.9995 15.1233 20.9947 15.622 20.9873 16.083Z" fill="currentColor"/>
<path d="M3.00098 9.41601C3.00147 8.87568 3.00629 8.37707 3.01367 7.91601L20.9873 7.91602C20.9947 8.37706 20.9995 8.87569 21 9.41602L3.00098 9.41601Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" fill="currentColor"/>''',
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
