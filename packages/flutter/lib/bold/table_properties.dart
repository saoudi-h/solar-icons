// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `table-properties` icon in the bold style.
class TablePropertiesBoldIcon extends StatelessWidget {
  /// Creates the `table-properties` icon in the bold style.
  const TablePropertiesBoldIcon({
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
    name: 'table-properties',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M14.25 16.0828V21.9978C13.858 21.9997 13.4419 21.9998 13 21.9998H11C7.22917 21.9998 5.34348 22.0001 4.17188 20.8289C3.23934 19.8963 3.05152 18.5109 3.0127 16.0828H14.25Z" fill="currentColor"/>
<path d="M20.9873 16.0828C20.9485 18.5109 20.7607 19.8963 19.8281 20.8289C18.9846 21.6721 17.7708 21.9063 15.75 21.9724V16.0828H20.9873Z" fill="currentColor"/>
<path d="M21 9.99976V13.9998C21 14.1992 20.9992 14.3937 20.999 14.5828H15.75V9.41675H20.999C20.9992 9.60592 21 9.8002 21 9.99976Z" fill="currentColor"/>
<path d="M14.25 9.41675V14.5828H3.00098C3.0008 14.3937 3 14.1992 3 13.9998V9.99976C3 9.8002 3.0008 9.60592 3.00098 9.41675H14.25Z" fill="currentColor"/>
<path d="M15.75 2.02612C17.7711 2.09225 18.9846 2.32818 19.8281 3.17163C20.7606 4.10411 20.9485 5.48888 20.9873 7.91675H15.75V2.02612Z" fill="currentColor"/>
<path d="M14.25 2.00171V7.91675H3.0127C3.05153 5.48888 3.2394 4.10411 4.17188 3.17163C5.34346 2.00017 7.22888 1.99976 11 1.99976H13C13.4419 1.99976 13.858 1.99982 14.25 2.00171Z" fill="currentColor"/>''',
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
