// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `soundwave-circle` icon in the boldDuotone style.
class SoundwaveCircleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `soundwave-circle` icon in the boldDuotone style.
  const SoundwaveCircleBoldDuotoneIcon({
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
    name: 'soundwave-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 6.25C12.4142 6.25 12.75 6.58579 12.75 7V17C12.75 17.4142 12.4142 17.75 12 17.75C11.5858 17.75 11.25 17.4142 11.25 17V7C11.25 6.58579 11.5858 6.25 12 6.25Z" fill="currentColor"/>
<path d="M7 8.25C7.41421 8.25 7.75 8.58579 7.75 9V15C7.75 15.4142 7.41421 15.75 7 15.75C6.58579 15.75 6.25 15.4142 6.25 15V9C6.25 8.58579 6.58579 8.25 7 8.25Z" fill="currentColor"/>
<path d="M17 9.25C17.4142 9.25 17.75 9.58579 17.75 10V14C17.75 14.4142 17.4142 14.75 17 14.75C16.5858 14.75 16.25 14.4142 16.25 14V10C16.25 9.58579 16.5858 9.25 17 9.25Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2ZM12.75 7C12.75 6.58579 12.4142 6.25 12 6.25C11.5858 6.25 11.25 6.58579 11.25 7V17C11.25 17.4142 11.5858 17.75 12 17.75C12.4142 17.75 12.75 17.4142 12.75 17V7ZM7.75 9C7.75 8.58579 7.41421 8.25 7 8.25C6.58579 8.25 6.25 8.58579 6.25 9V15C6.25 15.4142 6.58579 15.75 7 15.75C7.41421 15.75 7.75 15.4142 7.75 15V9ZM17.75 10C17.75 9.58579 17.4142 9.25 17 9.25C16.5858 9.25 16.25 9.58579 16.25 10V14C16.25 14.4142 16.5858 14.75 17 14.75C17.4142 14.75 17.75 14.4142 17.75 14V10Z" fill="currentColor"/>
<path d="M12 6.25C12.4142 6.25 12.75 6.58579 12.75 7V17C12.75 17.4142 12.4142 17.75 12 17.75C11.5858 17.75 11.25 17.4142 11.25 17V7C11.25 6.58579 11.5858 6.25 12 6.25Z" fill="currentColor"/>
<path d="M7 8.25C7.41421 8.25 7.75 8.58579 7.75 9V15C7.75 15.4142 7.41421 15.75 7 15.75C6.58579 15.75 6.25 15.4142 6.25 15V9C6.25 8.58579 6.58579 8.25 7 8.25Z" fill="currentColor"/>
<path d="M17 9.25C17.4142 9.25 17.75 9.58579 17.75 10V14C17.75 14.4142 17.4142 14.75 17 14.75C16.5858 14.75 16.25 14.4142 16.25 14V10C16.25 9.58579 16.5858 9.25 17 9.25Z" fill="currentColor"/>
</g>''',
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
