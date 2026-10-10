// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-bottom-open` icon in every style.
///
/// Prefer the static widgets (e.g. `PanelBottomOpenLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class PanelBottomOpenIcon extends StatelessWidget {
  /// Creates the `panel-bottom-open` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const PanelBottomOpenIcon({
    super.key,
    this.style,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].
  final SolarIconStyle? style;

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
    name: 'panel-bottom-open',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3 14.25L3 10C3 6.22876 3.0003 4.34345 4.17187 3.17187C5.34345 2.0003 7.22876 2 11 2L13 2C16.7712 2 18.6566 2.0003 19.8281 3.17187C20.9997 4.34345 21 6.22876 21 10L21 14.25L3 14.25ZM15.5693 10.2773C15.8388 9.96298 15.8024 9.48935 15.4883 9.21973L12.4883 6.64746C12.2075 6.40699 11.7925 6.40699 11.5117 6.64746L8.51172 9.21875C8.19747 9.48826 8.16141 9.96192 8.43066 10.2764C8.70025 10.5907 9.17384 10.6269 9.48828 10.3574L12 8.20508L14.5117 10.3574C14.8261 10.6269 15.2997 10.5914 15.5693 10.2773Z" fill="currentColor"/>
<path d="M20.9941 15.75C20.9665 18.3859 20.8025 19.8538 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22L11 22C7.22876 22 5.34345 21.9997 4.17187 20.8281C3.19754 19.8538 3.03348 18.3859 3.00586 15.75L20.9941 15.75Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'panel-bottom-open',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.9941 14.9999C20.9665 17.6357 20.8024 19.8537 19.8281 20.828C18.6565 21.9995 16.7711 21.9999 13 21.9999L11 21.9999C7.22889 21.9999 5.34346 21.9995 4.17187 20.828C3.19757 19.8537 3.03348 17.6357 3.00586 14.9999L20.9941 14.9999Z" fill="currentColor"/>
<path d="M15.4883 9.21864C15.8025 9.48825 15.8388 9.96186 15.5693 10.2763C15.2998 10.5905 14.8261 10.6267 14.5117 10.3573L12 8.20497L9.48828 10.3573C9.17389 10.6267 8.70025 10.5905 8.43066 10.2763C8.16117 9.96185 8.19746 9.48825 8.51172 9.21864L11.5117 6.64735C11.7926 6.40661 12.2074 6.40661 12.4883 6.64735L15.4883 9.21864Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M19.8284 3.17157C18.6568 2 16.7712 2 13 2L11 2C7.22873 2 5.34312 2 4.17154 3.17157C2.99997 4.34315 2.99997 6.22876 2.99997 10L2.99997 14C2.99997 14.0843 2.99993 14.9176 2.99994 15L20.9999 15C21 14.9176 21 14.0843 21 14L21 10C21 6.22876 21 4.34315 19.8284 3.17157Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'panel-bottom-open',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 9.78857L12 7.21715L9 9.78857" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11 22L13 22C16.7712 22 18.6569 22 19.8284 20.8284C21 19.6569 21 17.7712 21 14L21 10C21 6.22876 21 4.34315 19.8284 3.17157C18.6569 2 16.7712 2 13 2L11 2C7.22876 2 5.34314 2 4.17157 3.17157C3 4.34315 3 6.22876 3 10L3 14C3 17.7712 3 19.6569 4.17157 20.8284C4.82475 21.4816 5.69989 21.7706 7 21.8985" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 15L13 15M17 15L21 15" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'panel-bottom-open',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M15 9.53564L12 6.96422L9 9.53564" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 15L21 15" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'panel-bottom-open',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 9.78857L12 7.21715L15 9.78857" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 15L21 15" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'panel-bottom-open',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M11.5117 6.39551C11.7926 6.15477 12.2074 6.15477 12.4883 6.39551L15.4883 8.9668C15.8024 9.23642 15.8388 9.71005 15.5693 10.0244C15.2998 10.3384 14.8261 10.3747 14.5117 10.1055L12 7.95313L9.48828 10.1055C9.17393 10.3747 8.70023 10.3384 8.43066 10.0244C8.16121 9.71005 8.1976 9.23642 8.51172 8.9668L11.5117 6.39551Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M13 1.25C14.8644 1.25 16.3384 1.24859 17.4893 1.40332C18.6616 1.56096 19.6101 1.89329 20.3584 2.6416C21.1067 3.38991 21.439 4.33844 21.5967 5.51074C21.7514 6.66159 21.75 8.13558 21.75 10V14C21.75 14.3365 21.7489 14.6602 21.748 14.9717C21.7484 14.9811 21.75 14.9905 21.75 15C21.75 15.0098 21.7484 15.0196 21.748 15.0293C21.7438 16.4175 21.7218 17.5589 21.5967 18.4893C21.439 19.6616 21.1067 20.6101 20.3584 21.3584C19.6101 22.1067 18.6616 22.439 17.4893 22.5967C16.3384 22.7514 14.8644 22.75 13 22.75H11C9.13558 22.75 7.66159 22.7514 6.51074 22.5967C5.33844 22.439 4.38991 22.1067 3.6416 21.3584C2.89329 20.6101 2.56096 19.6616 2.40332 18.4893C2.27824 17.5589 2.25522 16.4175 2.25098 15.0293C2.2506 15.0196 2.25 15.0098 2.25 15C2.25 14.9905 2.25063 14.9811 2.25098 14.9717C2.25014 14.6602 2.25 14.3365 2.25 14V10C2.25 8.13558 2.24859 6.66159 2.40332 5.51074C2.56096 4.33844 2.89329 3.38991 3.6416 2.6416C4.38991 1.89329 5.33844 1.56096 6.51074 1.40332C7.66159 1.24859 9.13558 1.25 11 1.25H13ZM3.75781 15.75C3.76868 16.7836 3.79811 17.6081 3.88965 18.2891C4.02491 19.2952 4.27894 19.8746 4.70215 20.2979C5.12536 20.7211 5.70485 20.9751 6.71094 21.1104C7.73859 21.2485 9.09324 21.25 11 21.25H13C14.9068 21.25 16.2614 21.2485 17.2891 21.1104C18.2952 20.9751 18.8746 20.7211 19.2979 20.2979C19.7211 19.8746 19.9751 19.2952 20.1104 18.2891C20.2019 17.6081 20.2313 16.7836 20.2422 15.75H3.75781ZM11 2.75C9.09324 2.75 7.73859 2.7515 6.71094 2.88965C5.70485 3.02491 5.12536 3.27894 4.70215 3.70215C4.27894 4.12536 4.02491 4.70485 3.88965 5.71094C3.7515 6.73859 3.75 8.09324 3.75 10V14.25H20.25V10C20.25 8.09324 20.2485 6.73859 20.1104 5.71094C19.9751 4.70485 19.7211 4.12536 19.2979 3.70215C18.8746 3.27894 18.2952 3.02491 17.2891 2.88965C16.2614 2.7515 14.9068 2.75 13 2.75H11Z" fill="currentColor"/>''',
  );

  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback = isolated
        ? SolarIconStyle.linear
        : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
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
