// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `health` icon in every style.
///
/// Prefer the static widgets (e.g. `HealthLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class HealthIcon extends StatelessWidget {
  /// Creates the `health` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const HealthIcon({
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
    name: 'health',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.96173 18.4687C6.01943 16.2137 2 12.4886 2 8.96653C2 3.08262 7.50016 0.885859 12 5.43111C16.4998 0.885859 22 3.08262 22 8.9665C22 12.4887 17.9806 16.2137 15.0383 18.4687C13.7063 19.4896 13.0403 20 12 20C10.9597 20 10.2937 19.4896 8.96173 18.4687ZM16.5 6.25C16.9142 6.25 17.25 6.58579 17.25 7V8.25002H18.5C18.9142 8.25002 19.25 8.5858 19.25 9.00002C19.25 9.41423 18.9142 9.75002 18.5 9.75002H17.25V11C17.25 11.4142 16.9142 11.75 16.5 11.75C16.0858 11.75 15.75 11.4142 15.75 11V9.75002L14.5 9.75002C14.0858 9.75002 13.75 9.41423 13.75 9.00002C13.75 8.5858 14.0858 8.25002 14.5 8.25002H15.75V7C15.75 6.58579 16.0858 6.25 16.5 6.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'health',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 6.25C16.9142 6.25 17.25 6.58579 17.25 7L17.25 8.25002H18.5C18.9142 8.25002 19.25 8.5858 19.25 9.00002C19.25 9.41423 18.9142 9.75002 18.5 9.75002H17.25V11C17.25 11.4142 16.9142 11.75 16.5 11.75C16.0858 11.75 15.75 11.4142 15.75 11L15.75 9.75002L14.5 9.75002C14.0858 9.75002 13.75 9.41423 13.75 9.00002C13.75 8.5858 14.0858 8.25002 14.5 8.25002H15.75L15.75 7C15.75 6.58579 16.0858 6.25 16.5 6.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 9.3175C2 13.0468 6.01943 16.991 8.96173 19.3786C10.2937 20.4595 10.9597 21 12 21C13.0403 21 13.7063 20.4596 15.0383 19.3787C17.9806 16.991 22 13.0468 22 9.31747C22 3.08748 16.4998 0.761498 12 5.57412C7.50016 0.761498 2 3.08748 2 9.3175Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'health',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M18.5 9.00002H16.5M16.5 9.00002L14.5 9.00002M16.5 9.00002L16.5 7M16.5 9.00002L16.5 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.29334 13.294C2.50729 11.9943 2 10.6423 2 9.3175C2 3.08748 7.50016 0.761498 12 5.57412C16.4998 0.761498 22 3.08748 22 9.31747C22 13.0468 17.9806 16.991 15.0383 19.3787C13.7063 20.4596 13.0403 21 12 21C10.9597 21 10.2937 20.4595 8.96173 19.3786C8.02863 18.6214 6.9872 17.7077 6 16.6939" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'health',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 9.3175C2 13.0468 6.01943 16.991 8.96173 19.3786C10.2937 20.4595 10.9597 21 12 21C13.0403 21 13.7063 20.4596 15.0383 19.3787C17.9806 16.991 22 13.0468 22 9.31747C22 3.08748 16.4998 0.761498 12 5.57412C7.50016 0.761498 2 3.08748 2 9.3175Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.5 9.00002H16.5M16.5 9.00002L14.5 9.00002M16.5 9.00002L16.5 7M16.5 9.00002L16.5 11" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'health',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M18.5 9.00002H16.5M16.5 9.00002L14.5 9.00002M16.5 9.00002L16.5 7M16.5 9.00002L16.5 11" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 9.3175C2 13.0468 6.01943 16.991 8.96173 19.3786C10.2937 20.4595 10.9597 21 12 21C13.0403 21 13.7063 20.4596 15.0383 19.3787C17.9806 16.991 22 13.0468 22 9.31747C22 3.08748 16.4998 0.761498 12 5.57412C7.50016 0.761498 2 3.08748 2 9.3175Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'health',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M17.25 7.00017C17.25 6.58595 16.9142 6.25017 16.5 6.25017C16.0858 6.25017 15.75 6.58595 15.75 7.00017V8.25018H14.5C14.0858 8.25018 13.75 8.58597 13.75 9.00018C13.75 9.4144 14.0858 9.75018 14.5 9.75018L15.75 9.75018V11.0002C15.75 11.4144 16.0858 11.7502 16.5 11.7502C16.9142 11.7502 17.25 11.4144 17.25 11.0002V9.75018H18.5C18.9142 9.75018 19.25 9.4144 19.25 9.00018C19.25 8.58597 18.9142 8.25018 18.5 8.25018H17.25V7.00017Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M22.75 9.31763C22.75 5.99224 21.2676 3.50983 18.9609 2.60661C16.8252 1.77035 14.2618 2.39603 12 4.51334C9.73815 2.39603 7.17479 1.77035 5.0391 2.60662C2.73242 3.50984 1.25 5.99226 1.25 9.31767C1.25 11.4356 2.38041 13.5198 3.78729 15.3141C5.20863 17.1269 6.99671 18.7501 8.48914 19.9612L8.62327 20.0701C9.82386 21.0458 10.6906 21.7502 12 21.7502C13.3094 21.7502 14.1762 21.0458 15.3767 20.0702L15.5109 19.9612C17.0033 18.7501 18.7914 17.1269 20.2127 15.3141C21.6196 13.5198 22.75 11.4356 22.75 9.31763ZM12.5478 6.08652C14.6596 3.82795 16.8491 3.39059 18.414 4.00335C19.9823 4.61747 21.25 6.41304 21.25 9.31763C21.25 10.9291 20.3707 12.6816 19.0323 14.3886C17.7084 16.0772 16.0156 17.6199 14.5657 18.7965C13.1731 19.9265 12.7229 20.2502 12 20.2502C11.2771 20.2502 10.8269 19.9265 9.43432 18.7964C7.98445 17.6199 6.29166 16.0771 4.96771 14.3886C3.62931 12.6816 2.75 10.929 2.75 9.31767C2.75 6.41306 4.01766 4.61747 5.58602 4.00336C7.15092 3.39059 9.34039 3.82795 11.4522 6.08652C11.594 6.2382 11.7923 6.32429 12 6.32429C12.2077 6.32429 12.406 6.2382 12.5478 6.08652Z" fill="currentColor"/>''',
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
