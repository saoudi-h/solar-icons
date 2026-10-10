// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `move-3d` icon in every style.
///
/// Prefer the static widgets (e.g. `Move3dLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Move3dIcon extends StatelessWidget {
  /// Creates the `move-3d` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const Move3dIcon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

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

  static const bold = SolarIconData(
    name: 'move-3d',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M9.83887 3.41211C9.8825 3.4122 9.92521 3.41659 9.9668 3.42383C10.0207 3.4332 10.0738 3.44851 10.125 3.46973C10.1754 3.4907 10.2224 3.51787 10.2666 3.54883C10.3019 3.57357 10.3366 3.6003 10.3682 3.63184L13.5439 6.80762C13.8368 7.10045 13.8367 7.57526 13.5439 7.86816C13.2511 8.16103 12.7763 8.16103 12.4834 7.86816L10.5869 5.97168V13.4121H18.0264L16.1318 11.5176C15.839 11.2248 15.8392 10.75 16.1318 10.457C16.4247 10.1641 16.8995 10.1641 17.1924 10.457L20.3682 13.6318C20.5039 13.7674 20.5879 13.9551 20.5879 14.1621C20.5878 14.3518 20.5148 14.5231 20.3984 14.6553C20.3879 14.6672 20.3795 14.6811 20.3682 14.6924L17.1924 17.8682C16.8995 18.1608 16.4247 18.1608 16.1318 17.8682C15.8391 17.5753 15.8391 17.1005 16.1318 16.8076L18.0283 14.9121H10.1475L5.97266 19.0879H8.65332C9.06746 19.088 9.40328 19.4237 9.40332 19.8379C9.40332 20.2521 9.06748 20.5878 8.65332 20.5879H4.16211C4.11707 20.5879 4.07313 20.5828 4.03027 20.5752C4.02474 20.5742 4.01919 20.5734 4.01367 20.5723C4.00294 20.5701 3.99298 20.5651 3.98242 20.5625C3.94589 20.5535 3.90913 20.5449 3.87402 20.5303C3.85662 20.523 3.84093 20.5124 3.82422 20.5039C3.75556 20.469 3.68925 20.4256 3.63184 20.3682C3.57555 20.3118 3.53364 20.2469 3.49902 20.1797C3.48942 20.1611 3.47778 20.1435 3.46973 20.124C3.46227 20.1059 3.45813 20.0869 3.45215 20.0684C3.42852 19.9955 3.41309 19.9187 3.41309 19.8379V15.3467C3.4131 14.9326 3.7481 14.5969 4.16211 14.5967C4.5763 14.5967 4.91209 14.9325 4.91211 15.3467V18.0264L9.08691 13.8516V5.97363L7.19238 7.86816C6.8995 8.16096 6.42471 8.16099 6.13184 7.86816C5.83905 7.57529 5.83905 7.10049 6.13184 6.80762L9.30664 3.63184C9.35987 3.57861 9.42132 3.53778 9.48438 3.50391C9.50474 3.49296 9.52446 3.48074 9.5459 3.47168L9.55566 3.46777C9.58429 3.45616 9.61397 3.44836 9.64355 3.44043C9.6586 3.4364 9.67307 3.42986 9.68848 3.42676C9.69398 3.42565 9.69955 3.42482 9.70508 3.42383C9.74787 3.4162 9.79195 3.41215 9.83691 3.41211H9.83887Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'move-3d',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.5436 6.80779C13.8365 7.10068 13.8365 7.57545 13.5436 7.86834C13.2507 8.1612 12.776 8.16121 12.4831 7.86834L9.83756 5.22283L7.19205 7.86834C6.89916 8.16114 6.42437 8.16116 6.1315 7.86834C5.83864 7.57547 5.83869 7.10069 6.1315 6.80779L9.30728 3.63201C9.60017 3.33914 10.0749 3.33913 10.3678 3.63201L13.5436 6.80779Z" fill="currentColor"/>
<path d="M3.41211 15.3466C3.41212 14.9324 3.74783 14.5967 4.16203 14.5967C4.57622 14.5967 4.91193 14.9324 4.91195 15.3466L4.91195 19.0879H8.65326C9.06741 19.088 9.40315 19.4237 9.40318 19.8378C9.40318 20.252 9.06742 20.5877 8.65326 20.5877L4.16203 20.5877C3.74783 20.5877 3.41212 20.252 3.41211 19.8378L3.41211 15.3466Z" fill="currentColor"/>
<path d="M17.1918 17.8678C16.8989 18.1607 16.4241 18.1607 16.1313 17.8678C15.8385 17.575 15.8385 17.1002 16.1313 16.8073L18.7768 14.1628L16.1313 11.5173C15.8384 11.2245 15.8386 10.7496 16.1313 10.4567C16.4241 10.1638 16.8989 10.1638 17.1918 10.4567L20.3676 13.6315C20.5082 13.7721 20.5872 13.963 20.5873 14.1618C20.5873 14.3606 20.5082 14.5514 20.3676 14.6921L17.1918 17.8678Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.0878 4.16235C9.08781 3.74826 9.42376 3.41255 9.8378 3.41235C10.252 3.41236 10.5878 3.74815 10.5878 4.16235V13.4124H19.8378C20.252 13.4124 20.5878 13.7481 20.5878 14.1624C20.5877 14.5765 20.252 14.9124 19.8378 14.9124H10.1484L4.69327 20.3684C4.40041 20.6612 3.9256 20.6612 3.63273 20.3684C3.33983 20.0756 3.33991 19.6008 3.63273 19.3079L9.0878 13.8518V4.16235Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'move-3d',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13.0137 7.3381L9.83785 4.16235L6.66215 7.33801" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.16258 15.3467L4.16264 19.8379L8.65373 19.838" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.6623 17.3376L19.8379 14.1621L16.6623 10.9868" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19.8376 14.1621L15.9966 14.1621" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 14.1621H9.83755M9.83755 14.1621L4.1626 19.8379M9.83755 14.1621L9.83776 4.16235" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'move-3d',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13.0137 7.3381L9.83785 4.16235L6.66215 7.33801" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.16258 15.3467L4.16264 19.8379L8.65373 19.838" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.6623 17.3376L19.8379 14.1621L16.6623 10.9868" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.83776 4.16235L9.83755 14.1621M9.83755 14.1621L19.8376 14.1622M9.83755 14.1621L4.1626 19.8379" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'move-3d',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13.0137 7.3381L9.83785 4.16235L6.66215 7.33801" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.16234 15.3467L4.1624 19.8379L8.65348 19.838" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.662 17.3376L19.8376 14.1621L16.662 10.9868" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.83776 4.16235L9.83755 14.1621M9.83755 14.1621L19.8376 14.1622M9.83755 14.1621L4.1626 19.8379" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'move-3d',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M9.83887 3.41211C9.8825 3.4122 9.92521 3.41659 9.9668 3.42383C10.0207 3.4332 10.0738 3.44851 10.125 3.46973C10.1754 3.4907 10.2224 3.51787 10.2666 3.54883C10.3019 3.57357 10.3366 3.6003 10.3682 3.63184L13.5439 6.80762C13.8368 7.10045 13.8367 7.57526 13.5439 7.86816C13.2511 8.16103 12.7763 8.16103 12.4834 7.86816L10.5869 5.97168V13.4121H18.0264L16.1318 11.5176C15.839 11.2248 15.8392 10.75 16.1318 10.457C16.4247 10.1641 16.8995 10.1641 17.1924 10.457L20.3682 13.6318C20.5039 13.7674 20.5879 13.9551 20.5879 14.1621C20.5878 14.3518 20.5148 14.5231 20.3984 14.6553C20.3879 14.6672 20.3795 14.6811 20.3682 14.6924L17.1924 17.8682C16.8995 18.1608 16.4247 18.1608 16.1318 17.8682C15.8391 17.5753 15.8391 17.1005 16.1318 16.8076L18.0283 14.9121H10.1475L5.97266 19.0879H8.65332C9.06746 19.088 9.40328 19.4237 9.40332 19.8379C9.40332 20.2521 9.06748 20.5878 8.65332 20.5879H4.16211C4.11707 20.5879 4.07313 20.5828 4.03027 20.5752C4.02474 20.5742 4.01919 20.5734 4.01367 20.5723C4.00294 20.5701 3.99298 20.5651 3.98242 20.5625C3.94589 20.5535 3.90913 20.5449 3.87402 20.5303C3.85662 20.523 3.84093 20.5124 3.82422 20.5039C3.75556 20.469 3.68925 20.4256 3.63184 20.3682C3.57555 20.3118 3.53364 20.2469 3.49902 20.1797C3.48942 20.1611 3.47778 20.1435 3.46973 20.124C3.46227 20.1059 3.45813 20.0869 3.45215 20.0684C3.42852 19.9955 3.41309 19.9187 3.41309 19.8379V15.3467C3.4131 14.9326 3.7481 14.5969 4.16211 14.5967C4.5763 14.5967 4.91209 14.9325 4.91211 15.3467V18.0264L9.08691 13.8516V5.97363L7.19238 7.86816C6.8995 8.16096 6.42471 8.16099 6.13184 7.86816C5.83905 7.57529 5.83905 7.10049 6.13184 6.80762L9.30664 3.63184C9.35987 3.57861 9.42132 3.53778 9.48438 3.50391C9.50474 3.49296 9.52446 3.48074 9.5459 3.47168L9.55566 3.46777C9.58429 3.45616 9.61397 3.44836 9.64355 3.44043C9.6586 3.4364 9.67307 3.42986 9.68848 3.42676C9.69398 3.42565 9.69955 3.42482 9.70508 3.42383C9.74787 3.4162 9.79195 3.41215 9.83691 3.41211H9.83887Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

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
