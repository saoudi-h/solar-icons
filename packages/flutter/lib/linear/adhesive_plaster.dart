// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `adhesive-plaster` icon in the linear style.
class AdhesivePlasterLinearIcon extends StatelessWidget {
  /// Creates the `adhesive-plaster` icon in the linear style.
  const AdhesivePlasterLinearIcon({
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
    name: 'adhesive-plaster',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.2132 9.07107C1.5956 7.45346 1.5956 4.83081 3.2132 3.2132C4.83081 1.5956 7.45346 1.5956 9.07107 3.2132L20.7868 14.9289C22.4044 16.5465 22.4044 19.1692 20.7868 20.7868C19.1692 22.4044 16.5465 22.4044 14.9289 20.7868L3.2132 9.07107Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 17.8579L9.07107 20.7868C7.45346 22.4044 4.83081 22.4044 3.2132 20.7868C1.5956 19.1692 1.5956 16.5465 3.2132 14.9289L6.14214 12L12 17.8579Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6.14214L14.9289 3.2132C16.5465 1.5956 19.1692 1.5956 20.7868 3.2132C22.4044 4.83081 22.4044 7.45346 20.7868 9.07107L17.8579 12L12 6.14214Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5732 9.71191H11.5733" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.7168 11.5688H9.7169" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.5 12.5H12.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15.2969 13.4204H15.297" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13.4297 15.2798H13.4298" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.2158 16.2026H16.2159" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8.75 8.75H8.7501" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
