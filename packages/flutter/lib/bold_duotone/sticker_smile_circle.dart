// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sticker-smile-circle` icon in the boldDuotone style.
class StickerSmileCircleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `sticker-smile-circle` icon in the boldDuotone style.
  const StickerSmileCircleBoldDuotoneIcon({
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
    name: 'sticker-smile-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.7911 13.3425C17.5719 13.0693 18.5429 13.0318 20.5714 13.0271H21.9972C21.966 13.37 21.8162 13.6922 21.5734 13.9363L13.922 21.6248C13.6852 21.8627 13.3631 21.9968 13.0275 21.9968V20.571C13.0322 18.5425 13.0697 17.5716 13.3429 16.7908C13.3643 16.7295 13.3888 16.6694 13.4122 16.6091C13.3957 16.6517 13.378 16.694 13.3624 16.7371L13.2823 16.574L13.2296 16.5886C11.6743 17.0054 10.1169 17.0083 8.73059 16.6609C8.3288 16.5602 8.08496 16.1525 8.18567 15.7507C8.2864 15.3491 8.69319 15.1053 9.09485 15.2058C10.2251 15.4891 11.5233 15.4924 12.8409 15.1394C14.1586 14.7864 15.2811 14.1343 16.1183 13.324C16.3836 13.0671 16.7901 13.0453 17.0792 13.2546C16.9797 13.2808 16.8839 13.3101 16.7911 13.3425Z" fill="currentColor"/>
<path d="M8.32629 9.87866C8.8597 9.73594 9.46543 10.269 9.67981 11.0691C9.89407 11.8691 9.63592 12.633 9.10266 12.7761C8.56925 12.9191 7.96264 12.3867 7.74817 11.5867C7.53375 10.7865 7.79283 10.0216 8.32629 9.87866Z" fill="currentColor"/>
<path d="M14.1212 8.32593C14.6546 8.18301 15.2612 8.71536 15.4757 9.51538C15.6901 10.3156 15.431 11.0804 14.8976 11.2234C14.3642 11.3661 13.7584 10.833 13.5441 10.033C13.3298 9.23302 13.588 8.46905 14.1212 8.32593Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M13.0278 21.9478C12.6899 21.9823 12.347 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 12.347 21.9823 12.6899 21.9478 13.0278H20.5715C18.5428 13.0325 17.5722 13.0693 16.7914 13.3425C15.1769 13.9075 13.9075 15.1769 13.3425 16.7914C13.0693 17.5722 13.0325 18.5428 13.0278 20.5715V21.9478Z" fill="currentColor"/>''',
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
