// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `atom` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTcuNTI4NzkgMTYuNDcxMkMyLjU5MDE0IDExLjUzMjUgMC41ODgzNTEgNS41MjcxNSAzLjA1NzY4IDMuMDU3ODJDNS4wNDg1MiAxLjA2Njk3IDkuMzM3NzkgMS45ODIzNyAxMy41MTM0IDVNMTYuNDcxIDcuNTI4OTRDMjEuNDA5NyAxMi40Njc2IDIzLjQxMTUgMTguNDczIDIwLjk0MjEgMjAuOTQyM0MxOC45NTM1IDIyLjkzMSAxNC42NzEzIDIyLjAxOTggMTAuNSAxOS4wMU0yMC45NDIzIDMuMDU3NjhDMjMuNDExNyA1LjUyNzAxIDIxLjQwOTkgMTEuNTMyNCAxNi40NzEyIDE2LjQ3MTFDMTEuNTMyNiAyMS40MDk3IDUuNTI3MiAyMy40MTE1IDMuMDU3ODcgMjAuOTQyMkMxLjA2NzA0IDE4Ljk1MTMgMS45ODI0MiAxNC42NjIxIDUgMTAuNDg2NUM1LjcyNTI4IDkuNDgyODUgNi41NzE5OSA4LjQ4NTggNy41Mjg5OSA3LjUyODhDMTIuNDY3NiAyLjU5MDE0IDE4LjQ3MyAwLjU4ODM0NSAyMC45NDIzIDMuMDU3NjhaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0LjUgMTJDMTQuNSAxMy4zODA3IDEzLjM4MDcgMTQuNSAxMiAxNC41QzEwLjYxOTMgMTQuNSA5LjUgMTMuMzgwNyA5LjUgMTJDOS41IDEwLjYxOTMgMTAuNjE5MyA5LjUgMTIgOS41QzEzLjM4MDcgOS41IDE0LjUgMTAuNjE5MyAxNC41IDEyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class AtomBrokenIcon extends StatelessWidget {
  /// Creates the `atom` icon in the broken style.
  const AtomBrokenIcon({
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
    name: 'atom',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7.52879 16.4712C2.59014 11.5325 0.588351 5.52715 3.05768 3.05782C5.04852 1.06697 9.33779 1.98237 13.5134 5M16.471 7.52894C21.4097 12.4676 23.4115 18.473 20.9421 20.9423C18.9535 22.931 14.6713 22.0198 10.5 19.01M20.9423 3.05768C23.4117 5.52701 21.4099 11.5324 16.4712 16.4711C11.5326 21.4097 5.5272 23.4115 3.05787 20.9422C1.06704 18.9513 1.98242 14.6621 5 10.4865C5.72528 9.48285 6.57199 8.4858 7.52899 7.5288C12.4676 2.59014 18.473 0.588345 20.9423 3.05768Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 12C14.5 13.3807 13.3807 14.5 12 14.5C10.6193 14.5 9.5 13.3807 9.5 12C9.5 10.6193 10.6193 9.5 12 9.5C13.3807 9.5 14.5 10.6193 14.5 12Z" stroke="currentColor" stroke-linecap="round"/>''',
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
