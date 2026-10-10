// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `link-round-angle` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjc5MTcgMTUuNzk5MUwxNC4yMjIzIDE0LjM2NzZDMTYuNTkyNiAxMS45OTU5IDE2LjU5MjYgOC4xNTA1NCAxNC4yMjIzIDUuNzc4OEMxMS44NTIxIDMuNDA3MDcgOC4wMDkxIDMuNDA3MDcgNS42Mzg4NSA1Ljc3ODhMMi43Nzc2OSA4LjY0MTc0QzAuNDA3NDM2IDExLjAxMzUgMC40MDc0MzYgMTQuODU4OCAyLjc3NzY5IDE3LjIzMDZDMy44NzY4OCAxOC4zMzA0IDUuMjkyNzkgMTguOTIwMiA2LjczMTY1IDE5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxLjIyMjMgMTUuMzU4M0MyMy41OTI2IDEyLjk4NjUgMjMuNTkyNiA5LjE0MTE4IDIxLjIyMjMgNi43Njk0NUMyMC4xMjMxIDUuNjY5NTcgMTguNzA3MiA1LjA3OTc2IDE3LjI2ODMgNU0xOC4zNjEyIDE4LjIyMTJDMTUuOTkwOSAyMC41OTI5IDEyLjE0NzkgMjAuNTkyOSA5Ljc3NzY5IDE4LjIyMTJDNy40MDc0NCAxNS44NDk1IDcuNDA3NDQgMTIuMDA0MSA5Ljc3NzY5IDkuNjMyMzlMMTEuMjA4MyA4LjIwMDkyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class LinkRoundAngleBrokenIcon extends StatelessWidget {
  /// Creates the `link-round-angle` icon in the broken style.
  const LinkRoundAngleBrokenIcon({
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
    name: 'link-round-angle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.7917 15.7991L14.2223 14.3676C16.5926 11.9959 16.5926 8.15054 14.2223 5.7788C11.8521 3.40707 8.0091 3.40707 5.63885 5.7788L2.77769 8.64174C0.407436 11.0135 0.407436 14.8588 2.77769 17.2306C3.87688 18.3304 5.29279 18.9202 6.73165 19" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.2223 15.3583C23.5926 12.9865 23.5926 9.14118 21.2223 6.76945C20.1231 5.66957 18.7072 5.07976 17.2683 5M18.3612 18.2212C15.9909 20.5929 12.1479 20.5929 9.77769 18.2212C7.40744 15.8495 7.40744 12.0041 9.77769 9.63239L11.2083 8.20092" stroke="currentColor" stroke-linecap="round"/>''',
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
