// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `paperclip` icon in the boldDuotone style.
class PaperclipBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `paperclip` icon in the boldDuotone style.
  const PaperclipBoldDuotoneIcon({
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
    name: 'paperclip',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.88558 3.36262C11.8283 0.545795 16.5864 0.545795 19.5291 3.36262C19.8283 3.64904 19.8387 4.1238 19.5523 4.42302C19.2658 4.72225 18.7911 4.73262 18.4919 4.4462C16.1292 2.1846 12.2855 2.1846 9.9228 4.4462L3.51861 10.5764C3.21939 10.8628 2.74463 10.8524 2.45821 10.5532C2.17179 10.254 2.18216 9.77924 2.48139 9.49282L8.88558 3.36262ZM15.2666 6.45089C15.553 6.15167 16.0278 6.14129 16.327 6.42771C17.5829 7.62989 17.5829 9.59316 16.327 10.7953L8.43612 18.3486C8.13689 18.635 7.66213 18.6247 7.37571 18.3254C7.08929 18.0262 7.09967 17.5515 7.39889 17.265L15.2898 9.71175C15.9286 9.1002 15.9286 8.12285 15.2898 7.5113C14.9905 7.22488 14.9802 6.75012 15.2666 6.45089Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.4914 4.44598C20.8356 6.68987 20.8356 10.3138 18.4914 12.5577L10.5433 20.1657C9.0333 21.6111 6.57204 21.6111 5.06201 20.1657C3.57048 18.738 3.57048 16.4373 5.06201 15.0096L12.8957 7.51108C13.5531 6.88183 14.6319 6.88183 15.2893 7.51108C14.9904 7.22463 14.9803 6.74991 15.2666 6.45078C15.5479 6.15692 16.0108 6.14164 16.3107 6.4125C15.0722 5.24304 13.0906 5.24804 11.8585 6.42749L4.02478 13.926C1.91622 15.9444 1.91622 19.2309 4.02478 21.2493C6.11485 23.2499 9.4905 23.2499 11.5806 21.2493L19.5286 13.6413C22.4848 10.8116 22.4898 6.21268 19.5438 3.37695C19.8286 3.66467 19.8339 4.12866 19.5523 4.42291C19.2658 4.72213 18.7906 4.7324 18.4914 4.44598Z" fill="currentColor"/>''',
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
