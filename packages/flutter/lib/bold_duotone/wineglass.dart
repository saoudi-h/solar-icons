// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wineglass` icon in the boldDuotone style.
class WineglassBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `wineglass` icon in the boldDuotone style.
  const WineglassBoldDuotoneIcon({
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
    name: 'wineglass',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15.75 20.25C16.1642 20.25 16.5 20.5858 16.5 21C16.5 21.4143 16.1642 21.75 15.75 21.75H8.25C7.83579 21.75 7.5 21.4143 7.5 21C7.5 20.5858 7.83579 20.25 8.25 20.25H15.75Z" fill="currentColor"/>
<path d="M8.76953 8.00687C9.93095 7.94103 10.8048 8.34187 11.6426 8.80082L12.3574 9.19926C13.1954 9.6583 14.0698 10.0591 15.2314 9.9932C16.5938 9.91583 18.5225 9.18643 18.9248 9.02933C18.4268 12.4071 15.5162 15 12 15C8.4645 14.9999 5.54122 12.3787 5.06738 8.97367C5.45112 8.82349 7.39778 8.08466 8.76953 8.00687Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M17.1055 3C18.1517 3.00011 18.9999 3.84826 19 4.89453V8C19 11.6163 16.2577 14.5906 12.7393 14.96C12.7428 14.9596 12.7465 14.9603 12.75 14.96V20.25H11.25V14.96C11.2532 14.9603 11.2566 14.9596 11.2598 14.96C7.74182 14.5901 5 11.6159 5 8V4.89453C5.00011 3.84826 5.84826 3.00011 6.89453 3H17.1055Z" fill="currentColor"/>''',
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
