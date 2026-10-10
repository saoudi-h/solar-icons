// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hand-pills` icon in the linear style.
class HandPillsLinearIcon extends StatelessWidget {
  /// Creates the `hand-pills` icon in the linear style.
  const HandPillsLinearIcon({
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
    name: 'hand-pills',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8.79623 6.64075C7.73459 5.57912 7.73459 3.85786 8.79623 2.79623C9.85786 1.73459 11.5791 1.73459 12.6408 2.79623C13.0833 3.2388 13.5259 3.68137 13.9685 4.12394C14.3802 4.53571 14.792 4.94748 15.2038 5.35925C16.2654 6.42088 16.2654 8.14214 15.2038 9.20377C14.1421 10.2654 12.4209 10.2654 11.3592 9.20377C10.9475 8.79201 10.5357 8.38024 10.1239 7.96847C9.68137 7.5259 9.2388 7.08333 8.79623 6.64075Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9685 4.12402C13.8724 4.45755 13.5225 5.42027 12.4713 6.47148C11.4201 7.52265 10.4575 7.87247 10.124 7.96856" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 20.3884H7.25993C8.27079 20.3884 9.29253 20.4937 10.2763 20.6964C12.0166 21.0549 13.8488 21.0983 15.6069 20.8138C16.4738 20.6734 17.326 20.4589 18.0975 20.0865C18.7939 19.7504 19.6469 19.2766 20.2199 18.7459C20.7921 18.216 21.388 17.3487 21.8109 16.6707C22.1736 16.0894 21.9982 15.3762 21.4245 14.943C20.7873 14.4619 19.8417 14.462 19.2046 14.9433L17.3974 16.3084C16.697 16.8375 15.932 17.3245 15.0206 17.4699C14.911 17.4874 14.7962 17.5033 14.6764 17.5172M12.7518 17.5326C13.4312 17.5968 14.0434 17.5829 14.5668 17.5292C14.6038 17.5254 14.6403 17.5214 14.6764 17.5172M14.6764 17.5172C14.8222 17.486 14.9669 17.396 15.1028 17.2775C15.746 16.7161 15.7866 15.77 15.2285 15.1431C15.0991 14.9977 14.9475 14.8764 14.7791 14.7759C11.9817 13.1074 7.62942 14.3782 5 16.2429M14.6764 17.5172C14.6399 17.525 14.6033 17.5292 14.5668 17.5292" stroke="currentColor" stroke-linecap="round"/>
<rect x="2" y="14" width="3" height="8" rx="1.5" stroke="currentColor" stroke-linecap="round"/>''',
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
