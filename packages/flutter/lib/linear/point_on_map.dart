// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `point-on-map` icon in the linear style.
class PointOnMapLinearIcon extends StatelessWidget {
  /// Creates the `point-on-map` icon in the linear style.
  const PointOnMapLinearIcon({
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
    name: 'point-on-map',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6.35203 10.1176C5.01177 9.67375 4.30159 9.47417 3.76917 9.77122C3.66809 9.82762 3.57388 9.89552 3.48841 9.97358C3 10.4197 3 11.2491 3 12.908V17.8377C3 18.8813 3 19.4031 3.28314 19.7959C3.56627 20.1888 4.06129 20.3538 5.05132 20.6838L5.43488 20.8116C7.01186 21.3373 7.80035 21.6001 8.60688 21.6016C8.8498 21.6021 9.09242 21.5849 9.33284 21.5501C10.131 21.4345 10.8809 21.0596 12.3806 20.3097C13.5299 19.735 14.1046 19.4477 14.715 19.3144C14.9292 19.2676 15.1463 19.235 15.3648 19.2167C15.9875 19.1646 16.6157 19.2693 17.8721 19.4787C19.1455 19.6909 19.7821 19.797 20.247 19.5301C20.4048 19.4394 20.5449 19.3208 20.6603 19.18C21 18.7653 21 18.1199 21 16.829V11.1623C21 10.1187 21 9.5969 20.7169 9.20407C20.4337 8.81124 19.9387 8.64624 18.9487 8.31623L18 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 7.70031C6 4.55211 8.68629 2 12 2C15.3137 2 18 4.55211 18 7.70031C18 10.8238 16.085 14.4687 13.0972 15.7721C12.4007 16.076 11.5993 16.076 10.9028 15.7721C7.91499 14.4687 6 10.8238 6 7.70031Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 7.70031C6 4.55211 8.68629 2 12 2C15.3137 2 18 4.55211 18 7.70031C18 10.8238 16.085 14.4687 13.0972 15.7721C12.4007 16.076 11.5993 16.076 10.9028 15.7721C8.66866 14.7975 7.03437 12.5137 6.35203 10.1176C6.12185 9.30929 6 8.48821 6 7.70031Z" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="8" r="2" stroke="currentColor" stroke-linecap="round"/>''',
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
