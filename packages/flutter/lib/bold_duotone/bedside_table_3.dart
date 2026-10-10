// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bedside-table-3` icon in the boldDuotone style.
class BedsideTable3BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bedside-table-3` icon in the boldDuotone style.
  const BedsideTable3BoldDuotoneIcon({
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
    name: 'bedside-table-3',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 15.7712 21.9997 17.6566 20.8281 18.8281C20.5237 19.1325 20.1714 19.3586 19.75 19.5254V22C19.75 22.4142 19.4142 22.75 19 22.75C18.5858 22.75 18.25 22.4142 18.25 22V19.8711C17.1801 19.9998 15.8064 20 14 20H10C8.19364 20 6.81989 19.9998 5.75 19.8711V22C5.75 22.4142 5.41421 22.75 5 22.75C4.58579 22.75 4.25 22.4142 4.25 22V19.5254C3.82861 19.3586 3.47629 19.1325 3.17188 18.8281C2.0003 17.6566 2 15.7712 2 12V11H22V12ZM9 14.75C8.58579 14.75 8.25 15.0858 8.25 15.5C8.25 15.9142 8.58579 16.25 9 16.25H15C15.4142 16.25 15.75 15.9142 15.75 15.5C15.75 15.0858 15.4142 14.75 15 14.75H9Z" fill="currentColor"/>
<path d="M15 5.75C15.4142 5.75 15.75 6.08579 15.75 6.5C15.75 6.91421 15.4142 7.25 15 7.25H9C8.58579 7.25 8.25 6.91421 8.25 6.5C8.25 6.08579 8.58579 5.75 9 5.75H15Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.17157 3.17157C2 4.34315 2 6.22876 2 10V11H22V10C22 6.22876 22 4.34315 20.8284 3.17157C19.6569 2 17.7712 2 14 2H10C6.22876 2 4.34315 2 3.17157 3.17157Z" fill="currentColor"/>''',
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
