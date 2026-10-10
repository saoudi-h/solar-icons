// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `paperclip-rounded` icon in the broken style.
class PaperclipRoundedBrokenIcon extends StatelessWidget {
  /// Creates the `paperclip-rounded` icon in the broken style.
  const PaperclipRoundedBrokenIcon({
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
    name: 'paperclip-rounded',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M18.8854 15.9496C20.3094 14.5128 21.0214 13.7944 21.4104 13.0241C22.1965 11.4673 22.1965 9.62483 21.4104 8.06802C21.0214 7.29773 20.3094 6.57934 18.8854 5.14257C17.4615 3.70579 16.7495 2.98741 15.9861 2.59492C14.4431 1.80169 12.6171 1.80169 11.0741 2.59492C10.3107 2.98741 9.59873 3.70579 8.17476 5.14257M15.2132 19.6548C14.8579 20.0133 14.6802 20.1926 14.5115 20.3232C13.346 21.2256 11.7251 21.2256 10.5596 20.3232C10.3908 20.1926 10.2132 20.0133 9.85786 19.6548C9.50256 19.2963 9.32491 19.1171 9.1954 18.9468C8.30108 17.7708 8.30108 16.1353 9.1954 14.9594C9.32491 14.7891 9.50256 14.6098 9.85786 14.2513L12.6885 11.3952M4.44515 8.90571C3.64545 9.71261 3.2456 10.1161 2.97158 10.5128C1.67614 12.3882 1.67614 14.8794 2.97158 16.7548C3.2456 17.1515 3.64545 17.5549 4.44515 18.3618" stroke="currentColor" stroke-linecap="round"/>''',
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
