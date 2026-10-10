// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-left` icon in every style.
///
/// Prefer the static widgets (e.g. `PanelLeftLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class PanelLeftIcon extends StatelessWidget {
  /// Creates the `panel-left` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const PanelLeftIcon({
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
    name: 'panel-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M20.8284 19.8284C22 18.6569 22 16.7712 22 13L22 11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3L10 3C9.91573 3 9.8324 2.99999 9.75 3L9.75 21C9.8324 21 9.91573 21 10 21L14 21C17.7712 21 19.6569 21 20.8284 19.8284ZM8.25 20.9944L8.25 3.00559C5.61409 3.03321 4.14591 3.19724 3.17158 4.17157C2 5.34314 2 7.22876 2 11L2 13C2 16.7712 2 18.6569 3.17157 19.8284C4.1459 20.8028 5.61409 20.9668 8.25 20.9944Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'panel-left',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M2 11.0002L2 13.0002C2 16.7715 2 18.6571 3.17157 19.8287C4.1459 20.803 6.36409 20.967 9 20.9947L9 3.00583C6.36409 3.03345 4.1459 3.19749 3.17157 4.17182C2 5.34339 2 7.22901 2 11.0002Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M20.8284 19.8284C22 18.6568 22 16.7712 22 13L22 11C22 7.22873 22 5.34312 20.8284 4.17154C19.6569 2.99997 17.7712 2.99997 14 2.99997L10 2.99997C9.91573 2.99997 9.0824 2.99993 9 2.99994L9 20.9999C9.0824 21 9.91573 21 10 21L14 21C17.7712 21 19.6569 21 20.8284 19.8284Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'panel-left',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 11V13C2 16.7712 2 18.6569 3.17157 19.8284C4.34315 21 6.22876 21 10 21H14C17.7712 21 19.6569 21 20.8284 19.8284C22 18.6569 22 16.7712 22 13V11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3H10C6.22876 3 4.34315 3 3.17157 4.17157C2.51839 4.82475 2.22937 5.69989 2.10149 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 3L9 13M9 17L9 21" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'panel-left',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3H10C6.22876 3 4.34315 3 3.17157 4.17157C2 5.34315 2 7.22876 2 11V13C2 16.7712 2 18.6569 3.17157 19.8284C4.34315 21 6.22876 21 10 21H14C17.7712 21 19.6569 21 20.8284 19.8284C22 18.6569 22 16.7712 22 13V11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 21L9 3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'panel-left',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3H10C6.22876 3 4.34315 3 3.17157 4.17157C2 5.34315 2 7.22876 2 11V13C2 16.7712 2 18.6569 3.17157 19.8284C4.34315 21 6.22876 21 10 21H14C17.7712 21 19.6569 21 20.8284 19.8284C22 18.6569 22 16.7712 22 13V11Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 21L9 3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'panel-left',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M14 2.25C15.8644 2.25 17.3384 2.24859 18.4893 2.40332C19.6616 2.56096 20.6101 2.89329 21.3584 3.6416C22.1067 4.38991 22.439 5.33844 22.5967 6.51074C22.7514 7.66159 22.75 9.13558 22.75 11V13C22.75 14.8644 22.7514 16.3384 22.5967 17.4893C22.439 18.6616 22.1067 19.6101 21.3584 20.3584C20.6101 21.1067 19.6616 21.439 18.4893 21.5967C17.3384 21.7514 15.8644 21.75 14 21.75H10C9.66317 21.75 9.33909 21.7489 9.02734 21.748C9.01825 21.7484 9.00917 21.75 9 21.75C8.98984 21.75 8.97979 21.7484 8.96973 21.748C7.58199 21.7438 6.44083 21.7217 5.51074 21.5967C4.33844 21.439 3.38991 21.1067 2.6416 20.3584C1.8933 19.6101 1.56096 18.6616 1.40332 17.4893C1.24859 16.3384 1.25 14.8644 1.25 13V11C1.25 9.13558 1.24859 7.66159 1.40332 6.51074C1.56096 5.33844 1.89329 4.38991 2.6416 3.6416C3.38991 2.89329 4.33844 2.56096 5.51074 2.40332C6.44083 2.27827 7.58199 2.25523 8.96973 2.25098C8.97977 2.25058 8.98986 2.25 9 2.25C9.00916 2.25 9.01826 2.25065 9.02734 2.25098C9.33908 2.25014 9.66317 2.25 10 2.25H14ZM9.75 3.75V20.249C9.83226 20.249 9.91559 20.25 10 20.25H14C15.9068 20.25 17.2614 20.2485 18.2891 20.1104C19.2952 19.9751 19.8746 19.7211 20.2979 19.2979C20.7211 18.8746 20.9751 18.2952 21.1104 17.2891C21.2485 16.2614 21.25 14.9068 21.25 13V11C21.25 9.09324 21.2485 7.73859 21.1104 6.71094C20.9751 5.70485 20.7211 5.12536 20.2979 4.70215C19.8746 4.27894 19.2952 4.02491 18.2891 3.88965C17.2614 3.7515 15.9068 3.75 14 3.75H9.75ZM8.25 3.75684C7.21641 3.7677 6.39188 3.79811 5.71094 3.88965C4.70485 4.02491 4.12536 4.27894 3.70215 4.70215C3.27894 5.12536 3.02491 5.70485 2.88965 6.71094C2.7515 7.73859 2.75 9.09324 2.75 11V13C2.75 14.9068 2.7515 16.2614 2.88965 17.2891C3.02491 18.2952 3.27894 18.8746 3.70215 19.2979C4.12536 19.7211 4.70485 19.9751 5.71094 20.1104C6.39188 20.2019 7.21642 20.2313 8.25 20.2422V3.75684Z" fill="currentColor"/>''',
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
