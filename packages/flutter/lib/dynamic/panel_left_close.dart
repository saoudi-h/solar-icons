// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-left-close` icon in every style.
///
/// Prefer the static widgets (e.g. `PanelLeftCloseLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class PanelLeftCloseIcon extends StatelessWidget {
  /// Creates the `panel-left-close` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const PanelLeftCloseIcon({
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
    name: 'panel-left-close',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.75 3L14 3C17.7712 3 19.6566 3.0003 20.8281 4.17187C21.9997 5.34345 22 7.22876 22 11L22 13C22 16.7712 21.9997 18.6566 20.8281 19.8281C19.6566 20.9997 17.7712 21 14 21L9.75 21L9.75 3ZM16.2129 15.4883C16.4824 15.8025 16.9561 15.8386 17.2705 15.5693C17.5849 15.2997 17.6211 14.8262 17.3516 14.5117L15.1992 12L17.3516 9.48828C17.621 9.17393 17.5856 8.7003 17.2715 8.43066C16.9571 8.16121 16.4835 8.1976 16.2139 8.51172L13.6416 11.5117C13.4011 11.7925 13.4011 12.2075 13.6416 12.4883L16.2129 15.4883Z" fill="currentColor"/>
<path d="M8.25 20.9941C5.61409 20.9665 4.14621 20.8025 3.17188 19.8281C2.0003 18.6566 2 16.7712 2 13L2 11C2 7.22876 2.0003 5.34345 3.17188 4.17187C4.14621 3.19754 5.61409 3.03347 8.25 3.00586L8.25 20.9941Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'panel-left-close',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.00004 20.9941C6.36416 20.9665 4.14623 20.8024 3.17191 19.8281C2.00037 18.6565 2.00004 16.7712 2.00004 13L2.00004 11C2.00004 7.2288 2.00038 5.34345 3.17191 4.17187C4.14623 3.19755 6.36416 3.03348 9.00004 3.00586L9.00004 20.9941Z" fill="currentColor"/>
<path d="M17.2715 15.5693C16.9571 15.8388 16.4835 15.8026 16.2139 15.4883L13.6426 12.4883C13.4019 12.2074 13.4019 11.7926 13.6426 11.5117L16.2139 8.51172C16.4835 8.19739 16.9571 8.16118 17.2715 8.43066C17.5859 8.70025 17.6221 9.17384 17.3526 9.48828L15.2002 12L17.3526 14.5117C17.6221 14.8262 17.5859 15.2997 17.2715 15.5693Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M20.8284 19.8284C22 18.6568 22 16.7712 22 13L22 11C22 7.22873 22 5.34312 20.8284 4.17154C19.6569 2.99997 17.7712 2.99997 14 2.99997L10 2.99997C9.91573 2.99997 9.0824 2.99992 9 2.99994L9 20.9999C9.0824 21 9.91573 21 10 21L14 21C17.7712 21 19.6569 21 20.8284 19.8284Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'panel-left-close',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16.7827 9L14.2113 12L16.7827 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 11V13C2 16.7712 2 18.6569 3.17157 19.8284C4.34315 21 6.22876 21 10 21H14C17.7712 21 19.6569 21 20.8284 19.8284C22 18.6569 22 16.7712 22 13V11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3H10C6.22876 3 4.34315 3 3.17157 4.17157C2.51839 4.82475 2.22937 5.69989 2.10149 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 3L9 13M9 17L9 21" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'panel-left-close',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3H10C6.22876 3 4.34315 3 3.17157 4.17157C2 5.34315 2 7.22876 2 11V13C2 16.7712 2 18.6569 3.17157 19.8284C4.34315 21 6.22876 21 10 21H14C17.7712 21 19.6569 21 20.8284 19.8284C22 18.6569 22 16.7712 22 13V11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 21L9 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.7827 9L14.2113 12L16.7827 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'panel-left-close',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21L10 21C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13L2 11C2 7.22876 2 5.34314 3.17158 4.17157C4.34315 3 6.22877 3 10 3L14 3C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11L22 13Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.7827 15L14.2113 12L16.7827 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 3L9 21" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'panel-left-close',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M16.2129 8.51172C16.4824 8.19747 16.9561 8.16141 17.2705 8.43066C17.5849 8.70025 17.6211 9.17384 17.3516 9.48828L15.1992 12L17.3516 14.5117C17.621 14.8261 17.5856 15.2997 17.2715 15.5693C16.9571 15.8388 16.4835 15.8024 16.2139 15.4883L13.6416 12.4883C13.4011 12.2075 13.4011 11.7925 13.6416 11.5117L16.2129 8.51172Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M14 2.25C15.8644 2.25 17.3384 2.24859 18.4893 2.40332C19.6616 2.56096 20.6101 2.89329 21.3584 3.6416C22.1067 4.38991 22.439 5.33844 22.5967 6.51074C22.7514 7.66159 22.75 9.13558 22.75 11V13C22.75 14.8644 22.7514 16.3384 22.5967 17.4893C22.439 18.6616 22.1067 19.6101 21.3584 20.3584C20.6101 21.1067 19.6616 21.439 18.4893 21.5967C17.3384 21.7514 15.8644 21.75 14 21.75H10C9.66317 21.75 9.33909 21.7489 9.02734 21.748C9.01825 21.7484 9.00917 21.75 9 21.75C8.98984 21.75 8.97979 21.7484 8.96973 21.748C7.58199 21.7438 6.44083 21.7217 5.51074 21.5967C4.33844 21.439 3.38991 21.1067 2.6416 20.3584C1.8933 19.6101 1.56096 18.6616 1.40332 17.4893C1.24859 16.3384 1.25 14.8644 1.25 13V11C1.25 9.13558 1.24859 7.66159 1.40332 6.51074C1.56096 5.33844 1.89329 4.38991 2.6416 3.6416C3.38991 2.89329 4.33844 2.56096 5.51074 2.40332C6.44083 2.27827 7.58199 2.25523 8.96973 2.25098C8.97977 2.25058 8.98986 2.25 9 2.25C9.00916 2.25 9.01826 2.25065 9.02734 2.25098C9.33908 2.25014 9.66317 2.25 10 2.25H14ZM9.75 20.249C9.83226 20.249 9.91559 20.25 10 20.25H14C15.9068 20.25 17.2614 20.2485 18.2891 20.1104C19.2952 19.9751 19.8746 19.7211 20.2979 19.2979C20.7211 18.8746 20.9751 18.2952 21.1104 17.2891C21.2485 16.2614 21.25 14.9068 21.25 13V11C21.25 9.09324 21.2485 7.73859 21.1104 6.71094C20.9751 5.70485 20.7211 5.12536 20.2979 4.70215C19.8746 4.27894 19.2952 4.02491 18.2891 3.88965C17.2614 3.7515 15.9068 3.75 14 3.75H9.75V20.249ZM8.25 3.75684C7.21641 3.7677 6.39188 3.79811 5.71094 3.88965C4.70485 4.02491 4.12536 4.27894 3.70215 4.70215C3.27894 5.12536 3.02491 5.70485 2.88965 6.71094C2.7515 7.73859 2.75 9.09324 2.75 11V13C2.75 14.9068 2.7515 16.2614 2.88965 17.2891C3.02491 18.2952 3.27894 18.8746 3.70215 19.2979C4.12536 19.7211 4.70485 19.9751 5.71094 20.1104C6.39188 20.2019 7.21642 20.2313 8.25 20.2422V3.75684Z" fill="currentColor"/>''',
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
