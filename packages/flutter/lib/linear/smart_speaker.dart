// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smart-speaker` icon in the linear style.
class SmartSpeakerLinearIcon extends StatelessWidget {
  /// Creates the `smart-speaker` icon in the linear style.
  const SmartSpeakerLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8 4.41211C7.67967 4.68754 7.5 5.08533 7.5 5.41211C7.5 6.56558 9.23858 7.41211 12 7.41211C14.7614 7.41211 16.5 6.56558 16.5 5.41211C16.5 5.08533 16.3203 4.77607 16 4.50065" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.32102 6.65818C3.56225 4.55367 5.15124 2.85176 7.23935 2.4614L7.4544 2.4212C10.4585 1.8596 13.541 1.8596 16.5451 2.42119L16.8681 2.48157C18.8934 2.86019 20.4367 4.50764 20.6774 6.54809C21.0957 10.0925 21.1072 13.6729 20.712 17.2199L20.6948 17.3739C20.4473 19.5951 18.7041 21.357 16.48 21.6342L15.5738 21.7471C15.079 21.8088 14.8316 21.8396 14.5845 21.8654C12.866 22.0449 11.1335 22.0449 9.41505 21.8654C9.16792 21.8396 8.92051 21.8088 8.42569 21.7471L7.41019 21.6206C5.24868 21.3512 3.55266 19.6422 3.30532 17.4844C2.89823 13.9329 2.89823 10.3467 3.30532 6.79516L3.32102 6.65818Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5732 16.251L15.4999 16C14.9176 14.2522 13.8466 13.5 11.9999 13.5C10.1532 13.5 9.08211 14.2522 8.49986 16L8.43262 16.2505" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.04004 14.0845C3.82265 14.7593 6.11352 16.4998 11.9997 16.4998C18.0248 16.4998 20.2281 14.7018 20.9568 14.0391" stroke="currentColor" stroke-linecap="round"/>''',
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
