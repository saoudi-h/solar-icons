// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-bottom-close` icon in every style.
///
/// Prefer the static widgets (e.g. `PanelBottomCloseLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class PanelBottomCloseIcon extends StatelessWidget {
  /// Creates the `panel-bottom-close` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const PanelBottomCloseIcon({
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
    name: 'panel-bottom-close',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3 14.25L3 10C3 6.22876 3.0003 4.34345 4.17187 3.17187C5.34345 2.0003 7.22876 2 11 2L13 2C16.7712 2 18.6566 2.0003 19.8281 3.17187C20.9997 4.34345 21 6.22876 21 10L21 14.25L3 14.25ZM15.4883 7.78711C15.8025 7.5176 15.8386 7.04393 15.5693 6.72949C15.2997 6.41515 14.8262 6.37892 14.5117 6.64844L12 8.80078L9.48828 6.64844C9.17393 6.379 8.7003 6.41443 8.43066 6.72852C8.16121 7.04288 8.1976 7.51651 8.51172 7.78613L11.5117 10.3584C11.7925 10.5989 12.2075 10.5989 12.4883 10.3584L15.4883 7.78711Z" fill="currentColor"/>
<path d="M20.9941 15.75C20.9665 18.3859 20.8025 19.8538 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22L11 22C7.22876 22 5.34345 21.9997 4.17187 20.8281C3.19754 19.8538 3.03348 18.3859 3.00586 15.75L20.9941 15.75Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'panel-bottom-close',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.9941 15C20.9665 17.6358 20.8024 19.8538 19.8281 20.8281C18.6565 21.9996 16.7712 22 13 22L11 22C7.2288 22 5.34345 21.9996 4.17187 20.8281C3.19755 19.8538 3.03348 17.6358 3.00586 15L20.9941 15Z" fill="currentColor"/>
<path d="M15.5693 6.72848C15.8388 7.04292 15.8026 7.51652 15.4883 7.7861L12.4883 10.3574C12.2074 10.5981 11.7926 10.5981 11.5117 10.3574L8.51172 7.7861C8.19739 7.51652 8.16118 7.04292 8.43066 6.72848C8.70025 6.41413 9.17384 6.3779 9.48828 6.64742L12 8.79977L14.5117 6.64742C14.8262 6.3779 15.2997 6.41413 15.5693 6.72848Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M19.8284 3.17157C18.6568 2 16.7712 2 13 2L11 2C7.22873 2 5.34312 2 4.17154 3.17157C2.99997 4.34315 2.99997 6.22876 2.99997 10L2.99997 14C2.99997 14.0843 2.99993 14.9176 2.99994 15L20.9999 15C21 14.9176 21 14.0843 21 14L21 10C21 6.22876 21 4.34315 19.8284 3.17157Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'panel-bottom-close',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 7.21729L12 9.78871L15 7.21729" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11 22L13 22C16.7712 22 18.6569 22 19.8284 20.8284C21 19.6569 21 17.7712 21 14L21 10C21 6.22876 21 4.34315 19.8284 3.17157C18.6569 2 16.7712 2 13 2L11 2C7.22876 2 5.34314 2 4.17157 3.17157C3 4.34315 3 6.22876 3 10L3 14C3 17.7712 3 19.6569 4.17157 20.8284C4.82475 21.4816 5.69989 21.7706 7 21.8985" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 15L13 15M17 15L21 15" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'panel-bottom-close',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9 6.96411L12 9.53554L15 6.96411" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 15L21 15" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'panel-bottom-close',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13 2C16.7712 2 18.6569 2 19.8284 3.17157C21 4.34315 21 6.22876 21 10L21 14C21 17.7712 21 19.6569 19.8284 20.8284C18.6569 22 16.7712 22 13 22L11 22C7.22876 22 5.34315 22 4.17157 20.8284C3 19.6569 3 17.7712 3 14L3 10C3 6.22876 3 4.34315 4.17157 3.17157C5.34315 2 7.22876 2 11 2L13 2Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 7.21729L12 9.78871L9 7.21729" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 15L21 15" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'panel-bottom-close',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M14.5117 6.39453C14.8261 6.12516 15.2998 6.16141 15.5693 6.47559C15.8388 6.78999 15.8025 7.2636 15.4883 7.5332L12.4883 10.1045C12.2074 10.3452 11.7926 10.3452 11.5117 10.1045L8.51172 7.5332C8.19748 7.2636 8.16118 6.78999 8.43066 6.47559C8.70024 6.16141 9.17389 6.12516 9.48828 6.39453L12 8.54688L14.5117 6.39453Z" fill="currentColor"/>
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
