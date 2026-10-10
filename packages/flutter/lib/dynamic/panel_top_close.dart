// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-top-close` icon in every style.
///
/// Prefer the static widgets (e.g. `PanelTopCloseLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class PanelTopCloseIcon extends StatelessWidget {
  /// Creates the `panel-top-close` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const PanelTopCloseIcon({
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
    name: 'panel-top-close',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21 9.75L21 14C21 17.7712 20.9997 19.6566 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22L11 22C7.22876 22 5.34345 21.9997 4.17187 20.8281C3.0003 19.6566 3 17.7712 3 14L3 9.75L21 9.75ZM8.51172 16.2129C8.19747 16.4824 8.16141 16.9561 8.43066 17.2705C8.70025 17.5849 9.17384 17.6211 9.48828 17.3516L12 15.1992L14.5117 17.3516C14.8261 17.621 15.2997 17.5856 15.5693 17.2715C15.8388 16.9571 15.8024 16.4835 15.4883 16.2139L12.4883 13.6416C12.2075 13.4011 11.7925 13.4011 11.5117 13.6416L8.51172 16.2129Z" fill="currentColor"/>
<path d="M3.00586 8.25C3.03348 5.61409 3.19754 4.14621 4.17187 3.17187C5.34345 2.0003 7.22876 2 11 2L13 2C16.7712 2 18.6566 2.0003 19.8281 3.17187C20.8025 4.14621 20.9665 5.61409 20.9941 8.25L3.00586 8.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'panel-top-close',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M3.00586 9.00004C3.03348 6.36416 3.19756 4.14623 4.17188 3.17191C5.34345 2.00038 7.2288 2.00004 11 2.00004L13 2.00004C16.7712 2.00004 18.6566 2.00038 19.8281 3.17191C20.8024 4.14623 20.9665 6.36416 20.9941 9.00004L3.00586 9.00004Z" fill="currentColor"/>
<path d="M8.43066 17.2715C8.16118 16.9571 8.19739 16.4835 8.51172 16.2139L11.5117 13.6426C11.7926 13.4019 12.2074 13.4019 12.4883 13.6426L15.4883 16.2139C15.8026 16.4835 15.8388 16.9571 15.5693 17.2715C15.2997 17.5859 14.8262 17.6221 14.5117 17.3526L12 15.2002L9.48828 17.3526C9.17384 17.6221 8.70025 17.5859 8.43066 17.2715Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M4.1716 20.8284C5.34318 22 7.2288 22 11 22L13 22C16.7713 22 18.6569 22 19.8285 20.8284C21 19.6569 21 17.7712 21 14L21 10C21 9.91573 21.0001 9.0824 21.0001 9L3.00006 9C3.00005 9.0824 3.00003 9.91573 3.00003 10L3.00003 14C3.00003 17.7712 3.00003 19.6569 4.1716 20.8284Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'panel-top-close',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 16.7827L12 14.2113L9 16.7827" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13 2L11 2C7.22876 2 5.34315 2 4.17157 3.17157C3 4.34315 3 6.22876 3 10L3 14C3 17.7712 3 19.6569 4.17157 20.8284C5.34315 22 7.22876 22 11 22L13 22C16.7712 22 18.6569 22 19.8284 20.8284C21 19.6569 21 17.7712 21 14L21 10C21 6.22876 21 4.34315 19.8284 3.17157C19.1752 2.51839 18.3001 2.22937 17 2.10149" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 9L11 9M7 9L3 9" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'panel-top-close',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34314 2 7.22876 2 11 2L13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 9L3 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 16.7827L12 14.2113L15 16.7827" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'panel-top-close',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34314 2 7.22876 2 11 2L13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 16.7827L12 14.2113L15 16.7827" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 9L3 9" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'panel-top-close',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M15.4883 16.2129C15.8025 16.4824 15.8386 16.9561 15.5693 17.2705C15.2997 17.5849 14.8262 17.6211 14.5117 17.3516L12 15.1992L9.48828 17.3516C9.17393 17.621 8.70029 17.5856 8.43066 17.2715C8.16121 16.9571 8.19759 16.4835 8.51172 16.2139L11.5117 13.6416C11.7925 13.4011 12.2075 13.4011 12.4883 13.6416L15.4883 16.2129Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M21.75 14C21.75 15.8644 21.7514 17.3384 21.5967 18.4893C21.439 19.6616 21.1067 20.6101 20.3584 21.3584C19.6101 22.1067 18.6616 22.439 17.4893 22.5967C16.3384 22.7514 14.8644 22.75 13 22.75L11 22.75C9.13558 22.75 7.66159 22.7514 6.51074 22.5967C5.33844 22.439 4.38991 22.1067 3.6416 21.3584C2.89329 20.6101 2.56096 19.6616 2.40332 18.4893C2.24859 17.3384 2.25 15.8644 2.25 14L2.25 10C2.25 9.66317 2.25112 9.33908 2.25195 9.02734C2.25163 9.01825 2.25 9.00917 2.25 9C2.25 8.98984 2.25155 8.97979 2.25195 8.96973C2.2562 7.58199 2.27827 6.44083 2.40332 5.51074C2.56096 4.33844 2.89329 3.38991 3.6416 2.6416C4.38991 1.89329 5.33844 1.56096 6.51074 1.40332C7.66159 1.24859 9.13558 1.25 11 1.25L13 1.25C14.8644 1.25 16.3384 1.24859 17.4893 1.40332C18.6616 1.56096 19.6101 1.89329 20.3584 2.6416C21.1067 3.38991 21.439 4.33844 21.5967 5.51074C21.7217 6.44083 21.7448 7.58199 21.749 8.96973C21.7494 8.97977 21.75 8.98986 21.75 9C21.75 9.00916 21.7493 9.01826 21.749 9.02734C21.7499 9.33908 21.75 9.66317 21.75 10L21.75 14ZM3.75098 9.75C3.75096 9.83226 3.75 9.91559 3.75 10L3.75 14C3.75 15.9068 3.75149 17.2614 3.88965 18.2891C4.02491 19.2951 4.27894 19.8746 4.70215 20.2979C5.12536 20.7211 5.70485 20.9751 6.71094 21.1104C7.73859 21.2485 9.09324 21.25 11 21.25L13 21.25C14.9068 21.25 16.2614 21.2485 17.2891 21.1104C18.2952 20.9751 18.8746 20.7211 19.2979 20.2979C19.7211 19.8746 19.9751 19.2952 20.1104 18.2891C20.2485 17.2614 20.25 15.9068 20.25 14L20.25 9.75L3.75098 9.75ZM20.2432 8.25C20.2323 7.21641 20.2019 6.39188 20.1104 5.71094C19.9751 4.70485 19.7211 4.12536 19.2979 3.70215C18.8746 3.27894 18.2952 3.02491 17.2891 2.88965C16.2614 2.7515 14.9068 2.75 13 2.75L11 2.75C9.09324 2.75 7.73859 2.7515 6.71094 2.88965C5.70485 3.02491 5.12536 3.27894 4.70215 3.70215C4.27894 4.12536 4.02491 4.70485 3.88965 5.71094C3.79811 6.39188 3.76867 7.21642 3.75781 8.25L20.2432 8.25Z" fill="currentColor"/>''',
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
