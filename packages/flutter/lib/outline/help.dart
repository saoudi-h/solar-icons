// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `help` icon in the outline style.
class HelpOutlineIcon extends StatelessWidget {
  /// Creates the `help` icon in the outline style.
  const HelpOutlineIcon({
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
    name: 'help',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25ZM2.75 12C2.75 9.71567 3.57804 7.62475 4.95034 6.011L8.1528 9.21346C7.58488 9.99619 7.25 10.959 7.25 12C7.25 13.041 7.58488 14.0038 8.1528 14.7865L4.95033 17.989C3.57804 16.3753 2.75 14.2843 2.75 12ZM9.21346 8.1528L6.011 4.95034C7.62475 3.57804 9.71567 2.75 12 2.75C14.2843 2.75 16.3753 3.57804 17.989 4.95034L14.7865 8.1528C14.0038 7.58488 13.041 7.25 12 7.25C10.959 7.25 9.99619 7.58488 9.21346 8.1528ZM6.01099 19.0497C7.62474 20.422 9.71567 21.25 12 21.25C14.2843 21.25 16.3753 20.422 17.989 19.0497L14.7865 15.8472C14.0038 16.4151 13.041 16.75 12 16.75C10.959 16.75 9.99619 16.4151 9.21346 15.8472L6.01099 19.0497ZM15.8472 14.7865L19.0497 17.989C20.422 16.3753 21.25 14.2843 21.25 12C21.25 9.71567 20.422 7.62475 19.0497 6.011L15.8472 9.21346C16.4151 9.99619 16.75 10.959 16.75 12C16.75 13.041 16.4151 14.0038 15.8472 14.7865ZM8.75 12C8.75 10.2051 10.2051 8.75 12 8.75C13.7949 8.75 15.25 10.2051 15.25 12C15.25 13.7949 13.7949 15.25 12 15.25C10.2051 15.25 8.75 13.7949 8.75 12Z" fill="currentColor"/>''',
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
