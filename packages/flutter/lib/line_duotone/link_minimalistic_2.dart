// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `link-minimalistic-2` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTQuMTYyNSAxOC40ODc2TDEzLjQ0MTcgMTkuMjA4NEMxMS4wNTMgMjEuNTk3MSA3LjE4MDE5IDIxLjU5NzEgNC43OTE1MSAxOS4yMDg0QzIuNDAyODMgMTYuODE5OCAyLjQwMjgzIDEyLjk0NjkgNC43OTE1MSAxMC41NTgzTDUuNTEyMzYgOS44Mzc0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkuODM3NCAxNC4xNjI1TDE0LjE2MjUgOS44Mzc0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNOS44Mzc0IDUuNTEyMzZMMTAuNTU4MyA0Ljc5MTUxQzEyLjk0NjkgMi40MDI4MyAxNi44MTk4IDIuNDAyODMgMTkuMjA4NCA0Ljc5MTUxQzIxLjU5NzEgNy4xODAxOSAyMS41OTcxIDExLjA1MyAxOS4yMDg0IDEzLjQ0MTdMMTguNDg3NiAxNC4xNjI1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class LinkMinimalistic2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `link-minimalistic-2` icon in the lineDuotone style.
  const LinkMinimalistic2LineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9.8374 14.1625L14.1625 9.8374" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.1625 18.4876L13.4417 19.2084C11.053 21.5971 7.18019 21.5971 4.79151 19.2084C2.40283 16.8198 2.40283 12.9469 4.79151 10.5583L5.51236 9.8374" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M9.8374 5.51236L10.5583 4.79151C12.9469 2.40283 16.8198 2.40283 19.2084 4.79151C21.5971 7.18019 21.5971 11.053 19.2084 13.4417L18.4876 14.1625" stroke="currentColor" stroke-linecap="round"/>''',
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
