// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `remote-controller-minimalistic` icon in the boldDuotone style.
class RemoteControllerMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `remote-controller-minimalistic` icon in the boldDuotone style.
  const RemoteControllerMinimalisticBoldDuotoneIcon({
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
    name: 'remote-controller-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13 5C13 5.55228 12.5523 6 12 6C11.4477 6 11 5.55228 11 5C11 4.44772 11.4477 4 12 4C12.5523 4 13 4.44772 13 5Z" fill="currentColor"/>
<path d="M12 18C12.5523 18 13 17.5523 13 17C13 16.4477 12.5523 16 12 16C11.4477 16 11 16.4477 11 17C11 17.5523 11.4477 18 12 18Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M8.25 11C8.25 8.92893 9.92893 7.25 12 7.25C14.0711 7.25 15.75 8.92893 15.75 11C15.75 13.0711 14.0711 14.75 12 14.75C9.92893 14.75 8.25 13.0711 8.25 11ZM9.75 11C9.75 9.75736 10.7574 8.75 12 8.75C13.2426 8.75 14.25 9.75736 14.25 11C14.25 12.2426 13.2426 13.25 12 13.25C10.7574 13.25 9.75 12.2426 9.75 11Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.67412 3.77772C5 4.78661 5 6.19108 5 9V15C5 17.8089 5 19.2134 5.67412 20.2223C5.96596 20.659 6.34096 21.034 6.77772 21.3259C7.78661 22 9.19108 22 12 22C14.8089 22 16.2134 22 17.2223 21.3259C17.659 21.034 18.034 20.659 18.3259 20.2223C19 19.2134 19 17.8089 19 15V9C19 6.19108 19 4.78661 18.3259 3.77772C18.034 3.34096 17.659 2.96596 17.2223 2.67412C16.2134 2 14.8089 2 12 2C9.19108 2 7.78661 2 6.77772 2.67412C6.34096 2.96596 5.96596 3.34096 5.67412 3.77772Z" fill="currentColor"/>''',
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
