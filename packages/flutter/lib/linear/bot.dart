// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bot` icon in the linear style.
class BotLinearIcon extends StatelessWidget {
  /// Creates the `bot` icon in the linear style.
  const BotLinearIcon({
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
    name: 'bot',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19.9458 12.5732C20.5207 12.6331 20.9393 12.7418 21.268 12.9391C22.0003 13.3784 22.0003 14.0855 22.0003 15.4997C22.0003 16.9139 22.0003 17.621 21.268 18.0604C20.9393 18.2576 20.5207 18.3663 19.9458 18.4262" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.05448 18.4262C3.47962 18.3663 3.06096 18.2576 2.73223 18.0604C2 17.621 2 16.9139 2 15.4997C2 14.0855 2 13.3784 2.73223 12.9391C3.06096 12.7418 3.47962 12.6331 4.05448 12.5732" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 15.5C4 14.3131 4 13.356 4.05448 12.5735C4.14064 11.336 4.36306 10.5351 4.93726 9.9519C5.87452 9 7.38301 9 10.4 9H13.6C16.617 9 18.1255 9 19.0627 9.9519C19.6369 10.5351 19.8594 11.336 19.9455 12.5735C20 13.356 20 14.3131 20 15.5C20 16.6869 20 17.644 19.9455 18.4265C19.8594 19.664 19.6369 20.4649 19.0627 21.0481C18.1255 22 16.617 22 13.6 22H10.4C7.38301 22 5.87452 22 4.93726 21.0481C4.36306 20.4649 4.14064 19.664 4.05448 18.4265C4 17.644 4 16.6869 4 15.5Z" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="3.5" r="1.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 5V9" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 18C9.85038 18.6303 10.8846 19 12 19C13.1154 19 14.1496 18.6303 15 18" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 13.5C15.5 14.0523 15.2761 14.5 15 14.5C14.7239 14.5 14.5 14.0523 14.5 13.5C14.5 12.9477 14.7239 12.5 15 12.5C15.2761 12.5 15.5 12.9477 15.5 13.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="13.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
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
