// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `flag` icon in the outline style.
class FlagOutlineIcon extends StatelessWidget {
  /// Creates the `flag` icon in the outline style.
  const FlagOutlineIcon({
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
    name: 'flag',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M5 1.25C5.41421 1.25 5.75 1.58579 5.75 2V3.08496L7.32324 2.77051C9.11643 2.41187 10.9759 2.58256 12.6738 3.26172L12.877 3.34277C14.2917 3.90866 15.849 4.01501 17.3271 3.64551C18.5578 3.33785 19.75 4.26862 19.75 5.53711V12.9033C19.75 13.8918 19.0771 14.7534 18.1182 14.9932L17.9043 15.0469C15.9818 15.5275 13.9561 15.3903 12.1162 14.6543C10.6886 14.0833 9.12584 13.9398 7.61816 14.2412L5.75 14.6152V22C5.75 22.4142 5.41421 22.75 5 22.75C4.58579 22.75 4.25 22.4142 4.25 22V2C4.25 1.58579 4.58579 1.25 5 1.25ZM12.1162 4.6543C10.6886 4.08331 9.12584 3.93976 7.61816 4.24121L5.75 4.61523V13.085L7.32324 12.7705C9.11643 12.4119 10.9759 12.5826 12.6738 13.2617C14.2209 13.8805 15.9236 13.9959 17.54 13.5918L17.7549 13.5381C18.0459 13.4652 18.25 13.2033 18.25 12.9033V5.53711C18.25 5.24455 17.9752 5.02978 17.6914 5.10059C15.9073 5.54662 14.0278 5.41833 12.3203 4.73535L12.1162 4.6543Z" fill="currentColor"/>''',
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
