// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smart-speaker` icon in the lineDuotone style.
class SmartSpeakerLineDuotoneIcon extends StatelessWidget {
  /// Creates the `smart-speaker` icon in the lineDuotone style.
  const SmartSpeakerLineDuotoneIcon({
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
    name: 'smart-speaker',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.04028 14.0845C3.8229 14.7593 6.11377 16.4998 12 16.4998C18.0251 16.4998 20.2284 14.7018 20.957 14.0391" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.32102 6.65818C3.56225 4.55367 5.15124 2.85176 7.23935 2.4614L7.4544 2.4212C10.4585 1.8596 13.541 1.8596 16.5451 2.42119L16.8681 2.48157C18.8934 2.86019 20.4367 4.50764 20.6774 6.54809C21.0957 10.0925 21.1072 13.6729 20.712 17.2199L20.6948 17.3739C20.4473 19.5951 18.7041 21.357 16.48 21.6342L15.5738 21.7471C15.079 21.8088 14.8316 21.8396 14.5845 21.8654C12.866 22.0449 11.1335 22.0449 9.41505 21.8654C9.16792 21.8396 8.92051 21.8088 8.42569 21.7471L7.41019 21.6206C5.24868 21.3512 3.55266 19.6422 3.30532 17.4844C2.89823 13.9329 2.89823 10.3467 3.30532 6.79516L3.32102 6.65818Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.5734 16.251L15.5001 16C14.9179 14.2522 13.8468 13.5 12.0001 13.5C10.1534 13.5 9.08235 14.2522 8.50011 16L8.43286 16.2505" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M8 4.41211C7.67967 4.68754 7.5 5.08533 7.5 5.41211C7.5 6.56558 9.23858 7.41211 12 7.41211C14.7614 7.41211 16.5 6.56558 16.5 5.41211C16.5 5.08533 16.3203 4.77607 16 4.50065" stroke="currentColor" stroke-linecap="round"/>''',
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
