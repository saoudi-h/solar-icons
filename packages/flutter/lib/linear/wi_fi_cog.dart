// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-cog` icon in the linear style.
class WiFiCogLinearIcon extends StatelessWidget {
  /// Creates the `wi-fi-cog` icon in the linear style.
  const WiFiCogLinearIcon({
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
    name: 'wi-fi-cog',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8.66699 15.8931C10.5079 13.9061 13.4927 13.9061 15.3337 15.8931" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.33301 12.295C7.42965 10.032 10.2681 9.05764 13.0035 9.37195" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8.69694C5.01816 5.43925 9.06111 3.96185 13.0088 4.26472" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 8H19.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17.6144 5.2677C18.2906 4.86723 18.6287 4.66699 19 4.66699C19.3713 4.66699 19.7094 4.86723 20.3856 5.2677L20.6144 5.40314C21.2906 5.80361 21.6287 6.00385 21.8144 6.33366C22 6.66347 22 7.06394 22 7.86488V8.13577C22 8.93671 22 9.33718 21.8144 9.66699C21.6287 9.9968 21.2906 10.197 20.6144 10.5975L20.3856 10.733C19.7094 11.1334 19.3713 11.3337 19 11.3337C18.6287 11.3337 18.2906 11.1334 17.6144 10.733L17.3856 10.5975C16.7094 10.197 16.3713 9.9968 16.1856 9.66699C16 9.33718 16 8.93671 16 8.13577V7.86488C16 7.06394 16 6.66347 16.1856 6.33366C16.3713 6.00385 16.7094 5.80361 17.3856 5.40314L17.6144 5.2677Z" stroke="currentColor" stroke-linecap="round"/>''',
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
