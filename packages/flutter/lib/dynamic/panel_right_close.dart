// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-right-close` icon in every style.
///
/// Prefer the static widgets (e.g. `PanelRightCloseLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class PanelRightCloseIcon extends StatelessWidget {
  /// Creates the `panel-right-close` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const PanelRightCloseIcon({
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
    name: 'panel-right-close',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M14.25 21H10C6.22876 21 4.34345 20.9997 3.17188 19.8281C2.0003 18.6566 2 16.7712 2 13V11C2 7.22876 2.0003 5.34345 3.17188 4.17188C4.34345 3.0003 6.22876 3 10 3H14.25V21ZM7.78711 8.51172C7.5176 8.19747 7.04393 8.16141 6.72949 8.43066C6.41515 8.70025 6.37892 9.17384 6.64844 9.48828L8.80078 12L6.64844 14.5117C6.379 14.8261 6.41443 15.2997 6.72852 15.5693C7.04288 15.8388 7.51651 15.8024 7.78613 15.4883L10.3584 12.4883C10.5989 12.2075 10.5989 11.7925 10.3584 11.5117L7.78711 8.51172Z" fill="currentColor"/>
<path d="M15.75 3.00586C18.3859 3.03348 19.8538 3.19755 20.8281 4.17188C21.9997 5.34345 22 7.22876 22 11V13C22 16.7712 21.9997 18.6566 20.8281 19.8281C19.8538 20.8025 18.3859 20.9665 15.75 20.9941V3.00586Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'panel-right-close',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15 3.00586C17.6358 3.03348 19.8538 3.19755 20.8281 4.17188C21.9996 5.34345 22 7.2288 22 11V13C22 16.7712 21.9996 18.6565 20.8281 19.8281C19.8538 20.8024 17.6358 20.9665 15 20.9941V3.00586Z" fill="currentColor"/>
<path d="M6.72848 8.43066C7.04292 8.16118 7.51652 8.19739 7.7861 8.51172L10.3574 11.5117C10.5981 11.7926 10.5981 12.2074 10.3574 12.4883L7.7861 15.4883C7.51652 15.8026 7.04292 15.8388 6.72848 15.5693C6.41413 15.2997 6.3779 14.8262 6.64742 14.5117L8.79977 12L6.64742 9.48828C6.3779 9.17384 6.41413 8.70025 6.72848 8.43066Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M3.17157 4.1716C2 5.34318 2 7.2288 2 11V13C2 16.7713 2 18.6569 3.17157 19.8285C4.34315 21 6.22876 21 10 21H14C14.0843 21 14.9176 21.0001 15 21.0001L15 3.00006C14.9176 3.00005 14.0843 3.00003 14 3.00003H10C6.22876 3.00003 4.34315 3.00003 3.17157 4.1716Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'panel-right-close',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 3L15 13M15 17L15 21" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11V13C2 16.7712 2 18.6569 3.17157 19.8284C4.34315 21 6.22876 21 10 21H14C17.7712 21 19.6569 21 20.8284 19.8284C22 18.6569 22 16.7712 22 13V11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3H10C6.22876 3 4.34315 3 3.17157 4.17157C2.51839 4.82475 2.22937 5.69989 2.10149 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.21729 9L9.78871 12L7.21729 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'panel-right-close',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 21L15 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.21729 9L9.78871 12L7.21729 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'panel-right-close',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.21729 9L9.78871 12L7.21729 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15 21L15 3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'panel-right-close',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M6.72852 8.43066C7.04289 8.1612 7.51651 8.19756 7.78613 8.51172L10.3574 11.5117C10.5982 11.7926 10.5982 12.2074 10.3574 12.4883L7.78613 15.4883C7.51651 15.8024 7.04288 15.8388 6.72852 15.5693C6.41448 15.2998 6.37824 14.8261 6.64746 14.5117L8.79981 12L6.64746 9.48828C6.37821 9.17393 6.41449 8.70024 6.72852 8.43066Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M14.9717 2.25098C14.9811 2.25063 14.9905 2.25 15 2.25C15.0098 2.25 15.0196 2.2506 15.0293 2.25098C16.4175 2.25522 17.5589 2.27824 18.4893 2.40332C19.6616 2.56096 20.6101 2.89329 21.3584 3.6416C22.1067 4.38991 22.439 5.33844 22.5967 6.51074C22.7514 7.66159 22.75 9.13558 22.75 11V13C22.75 14.8644 22.7514 16.3384 22.5967 17.4893C22.439 18.6616 22.1067 19.6101 21.3584 20.3584C20.6101 21.1067 19.6616 21.439 18.4893 21.5967C17.5589 21.7218 16.4175 21.7438 15.0293 21.748C15.0196 21.7484 15.0098 21.75 15 21.75C14.9905 21.75 14.9811 21.7484 14.9717 21.748C14.6602 21.7489 14.3365 21.75 14 21.75H10C8.13558 21.75 6.66159 21.7514 5.51074 21.5967C4.33844 21.439 3.38991 21.1067 2.6416 20.3584C1.89329 19.6101 1.56096 18.6616 1.40332 17.4893C1.24859 16.3384 1.25 14.8644 1.25 13V11C1.25 9.13558 1.24859 7.66159 1.40332 6.51074C1.56096 5.33844 1.89329 4.38991 2.6416 3.6416C3.38991 2.89329 4.33844 2.56096 5.51074 2.40332C6.66159 2.24859 8.13558 2.25 10 2.25H14C14.3365 2.25 14.6602 2.25014 14.9717 2.25098ZM10 3.75C8.09324 3.75 6.73859 3.7515 5.71094 3.88965C4.70485 4.02491 4.12536 4.27894 3.70215 4.70215C3.27894 5.12536 3.02491 5.70485 2.88965 6.71094C2.7515 7.73859 2.75 9.09324 2.75 11V13C2.75 14.9068 2.7515 16.2614 2.88965 17.2891C3.02491 18.2952 3.27894 18.8746 3.70215 19.2979C4.12536 19.7211 4.70485 19.9751 5.71094 20.1104C6.73859 20.2485 8.09324 20.25 10 20.25H14C14.0844 20.25 14.1677 20.249 14.25 20.249V3.75H10ZM15.75 20.2422C16.7836 20.2313 17.6081 20.2019 18.2891 20.1104C19.2952 19.9751 19.8746 19.7211 20.2979 19.2979C20.7211 18.8746 20.9751 18.2952 21.1104 17.2891C21.2485 16.2614 21.25 14.9068 21.25 13V11C21.25 9.09324 21.2485 7.73859 21.1104 6.71094C20.9751 5.70485 20.7211 5.12536 20.2979 4.70215C19.8746 4.27894 19.2952 4.02491 18.2891 3.88965C17.6081 3.79811 16.7836 3.7677 15.75 3.75684V20.2422Z" fill="currentColor"/>''',
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

@Deprecated(
  'The icon is the explicit close action for a right-side panel. Deprecated since 2026-09-21. Use PanelRightCloseIcon instead.',
)
typedef SidebarCloseIcon = PanelRightCloseIcon;
