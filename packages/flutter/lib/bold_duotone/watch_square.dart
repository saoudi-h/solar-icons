// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `watch-square` icon in the boldDuotone style.
class WatchSquareBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `watch-square` icon in the boldDuotone style.
  const WatchSquareBoldDuotoneIcon({
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
    name: 'watch-square',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.6963 18.8682C16.3627 20.3695 16.1958 21.1207 15.6475 21.5605C15.0991 22.0004 14.3292 22 12.791 22H11.209C9.67072 22 8.90095 22.0005 8.35254 21.5605C7.8042 21.1207 7.63735 20.3695 7.30371 18.8682L7.23926 18.5762C8.21841 18.9999 9.59397 19 12 19C14.406 19 15.7816 18.9998 16.7607 18.5762L16.6963 18.8682Z" fill="currentColor"/>
<path d="M12 8.25C12.4142 8.25 12.75 8.58579 12.75 9V11.7578L14.5195 13.459C14.818 13.746 14.8278 14.2209 14.541 14.5195C14.254 14.818 13.7791 14.8278 13.4805 14.541L11.4805 12.6172C11.3335 12.4758 11.2501 12.2811 11.25 12.0771V9C11.25 8.58579 11.5858 8.25 12 8.25Z" fill="currentColor"/>
<path d="M12.791 2C14.3292 2 15.0991 1.99963 15.6475 2.43945C16.1958 2.87933 16.3627 3.63048 16.6963 5.13184L16.7607 5.42383C15.7816 5.00017 14.406 5 12 5C9.59405 5 8.21841 5.00019 7.23926 5.42383L7.30371 5.13184C7.63736 3.63043 7.80515 2.87934 8.35352 2.43945C8.90189 1.99994 9.6712 2 11.209 2H12.791Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M6.77772 18.3259C7.78661 19 9.19108 19 12 19C14.8089 19 16.2134 19 17.2223 18.3259C17.659 18.034 18.034 17.659 18.3259 17.2223C19 16.2134 19 14.8089 19 12C19 9.19108 19 7.78661 18.3259 6.77772C18.034 6.34096 17.659 5.96596 17.2223 5.67412C16.2134 5 14.8089 5 12 5C9.19108 5 7.78661 5 6.77772 5.67412C6.34096 5.96596 5.96596 6.34096 5.67412 6.77772C5 7.78661 5 9.19108 5 12C5 14.8089 5 16.2134 5.67412 17.2223C5.96596 17.659 6.34096 18.034 6.77772 18.3259Z" fill="currentColor"/>''',
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
