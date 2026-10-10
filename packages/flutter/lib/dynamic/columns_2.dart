// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `columns-2` icon in every style.
///
/// Prefer the static widgets (e.g. `Columns2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Columns2Icon extends StatelessWidget {
  /// Creates the `columns-2` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const Columns2Icon({
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
    name: 'columns-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.25 21H10C6.22876 21 4.34345 20.9997 3.17188 19.8281C2.0003 18.6566 2 16.7712 2 13V11C2 7.22876 2.0003 5.34345 3.17188 4.17188C4.34345 3.0003 6.22876 3 10 3H11.25V21ZM14 3C17.7712 3 19.6566 3.0003 20.8281 4.17188C21.9997 5.34345 22 7.22876 22 11V13C22 16.7712 21.9997 18.6566 20.8281 19.8281C19.6566 20.9997 17.7712 21 14 21H12.75V3H14Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'columns-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.25 3L12.75 3L12.75 21L11.25 21L11.25 3Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'columns-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 3L12 13M12 17L12 21" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11V13C2 16.7712 2 18.6569 3.17157 19.8284C4.34315 21 6.22876 21 10 21H14C17.7712 21 19.6569 21 20.8284 19.8284C22 18.6569 22 16.7712 22 13V11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3H10C6.22876 3 4.34315 3 3.17157 4.17157C2.51839 4.82475 2.22937 5.69989 2.10149 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'columns-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 21L12 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'columns-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 21L12 3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'columns-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M14 2.25C15.8644 2.25 17.3384 2.24859 18.4893 2.40332C19.6616 2.56096 20.6101 2.89329 21.3584 3.6416C22.1067 4.38991 22.439 5.33844 22.5967 6.51074C22.7514 7.66159 22.75 9.13558 22.75 11V13C22.75 14.8644 22.7514 16.3384 22.5967 17.4893C22.439 18.6616 22.1067 19.6101 21.3584 20.3584C20.6101 21.1067 19.6616 21.439 18.4893 21.5967C17.3384 21.7514 15.8644 21.75 14 21.75H10C8.13558 21.75 6.66159 21.7514 5.51074 21.5967C4.33844 21.439 3.38991 21.1067 2.6416 20.3584C1.89329 19.6101 1.56096 18.6616 1.40332 17.4893C1.24859 16.3384 1.25 14.8644 1.25 13V11C1.25 9.13558 1.24859 7.66159 1.40332 6.51074C1.56096 5.33844 1.89329 4.38991 2.6416 3.6416C3.38991 2.89329 4.33844 2.56096 5.51074 2.40332C6.66159 2.24859 8.13558 2.25 10 2.25H14ZM12.75 20.25H14C15.9068 20.25 17.2614 20.2485 18.2891 20.1104C19.2952 19.9751 19.8746 19.7211 20.2979 19.2979C20.7211 18.8746 20.9751 18.2952 21.1104 17.2891C21.2485 16.2614 21.25 14.9068 21.25 13V11C21.25 9.09324 21.2485 7.73859 21.1104 6.71094C20.9751 5.70485 20.7211 5.12536 20.2979 4.70215C19.8746 4.27894 19.2952 4.02491 18.2891 3.88965C17.2614 3.7515 15.9068 3.75 14 3.75H12.75V20.25ZM10 3.75C8.09324 3.75 6.73859 3.7515 5.71094 3.88965C4.70485 4.02491 4.12536 4.27894 3.70215 4.70215C3.27894 5.12536 3.02491 5.70485 2.88965 6.71094C2.7515 7.73859 2.75 9.09324 2.75 11V13C2.75 14.9068 2.7515 16.2614 2.88965 17.2891C3.02491 18.2952 3.27894 18.8746 3.70215 19.2979C4.12536 19.7211 4.70485 19.9751 5.71094 20.1104C6.73859 20.2485 8.09324 20.25 10 20.25H11.25V3.75H10Z" fill="currentColor"/>''',
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
