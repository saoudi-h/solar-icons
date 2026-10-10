// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `paperclip-rounded-2` icon in the outline style.
class PaperclipRounded2OutlineIcon extends StatelessWidget {
  /// Creates the `paperclip-rounded-2` icon in the outline style.
  const PaperclipRounded2OutlineIcon({
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
    name: 'paperclip-rounded-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.27651 3.89276C10.8163 0.369079 16.554 0.369079 20.0938 3.89276C23.6354 7.41833 23.6354 13.1358 20.0938 16.6614L16.4191 20.3194C14.5029 22.2269 11.3975 22.2269 9.48133 20.3194C7.56324 18.41 7.56324 15.3129 9.48133 13.4035L12.4211 10.4771C12.7146 10.1849 13.1895 10.186 13.4817 10.4796C13.774 10.7731 13.7729 11.248 13.4793 11.5402L10.5396 14.4666C9.21049 15.7896 9.21049 17.9333 10.5396 19.2563C11.8705 20.5812 14.0299 20.5812 15.3608 19.2563L19.0355 15.5983C21.9882 12.6591 21.9882 7.89507 19.0355 4.95584C16.081 2.01472 11.2893 2.01472 8.33476 4.95584L4.66007 8.61382C2.11331 11.149 2.11331 15.2579 4.66007 17.7931C4.95363 18.0853 4.95471 18.5602 4.66248 18.8538C4.37026 19.1473 3.89539 19.1484 3.60183 18.8562C0.466058 15.7347 0.466058 10.6723 3.60183 7.55075L7.27651 3.89276Z" fill="currentColor"/>''',
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
