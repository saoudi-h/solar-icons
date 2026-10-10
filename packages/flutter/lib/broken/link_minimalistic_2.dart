// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `link-minimalistic-2` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0LjE2MjUgMTguNDg3NkwxMy40NDE3IDE5LjIwODRDMTEuMDUzIDIxLjU5NzEgNy4xODAxOSAyMS41OTcxIDQuNzkxNTEgMTkuMjA4NEMyLjQwMjgzIDE2LjgxOTggMi40MDI4MyAxMi45NDY5IDQuNzkxNTEgMTAuNTU4M0w1LjUxMjM2IDkuODM3NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05LjgzNzQgMTQuMTYyNUwxNC4xNjI1IDkuODM3NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05LjgzNzQgNS41MTIzNkwxMC41NTgzIDQuNzkxNTFDMTIuOTQ2OSAyLjQwMjgzIDE2LjgxOTggMi40MDI4MyAxOS4yMDg0IDQuNzkxNTFNMTguNDg3NiAxNC4xNjI1TDE5LjIwODQgMTMuNDQxN0MyMC40MzI0IDEyLjIxNzcgMjEuMDI5MiAxMC42MDQgMjAuOTk4OCA5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class LinkMinimalistic2BrokenIcon extends StatelessWidget {
  /// Creates the `link-minimalistic-2` icon in the broken style.
  const LinkMinimalistic2BrokenIcon({
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
    name: 'link-minimalistic-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14.1625 18.4876L13.4417 19.2084C11.053 21.5971 7.18019 21.5971 4.79151 19.2084C2.40283 16.8198 2.40283 12.9469 4.79151 10.5583L5.51236 9.8374" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.8374 14.1625L14.1625 9.8374" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.8374 5.51236L10.5583 4.79151C12.9469 2.40283 16.8198 2.40283 19.2084 4.79151M18.4876 14.1625L19.2084 13.4417C20.4324 12.2177 21.0292 10.604 20.9988 9" stroke="currentColor" stroke-linecap="round"/>''',
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
