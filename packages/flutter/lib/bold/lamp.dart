// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `lamp` icon in the bold style.
class LampBoldIcon extends StatelessWidget {
  /// Creates the `lamp` icon in the bold style.
  const LampBoldIcon({
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
    name: 'lamp',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M6.66749 3.15144C5.88138 3.9264 5.57692 5.0991 4.96802 7.44451L4.88378 7.76897C4.05598 10.9576 3.64207 12.5519 4.39389 13.6719C4.46887 13.7837 4.55129 13.8902 4.64058 13.9909C5.5358 15 7.18295 15 10.4772 15H11.2559V21.25H9.00586C8.59165 21.25 8.25586 21.5858 8.25586 22C8.25586 22.4142 8.59165 22.75 9.00586 22.75H15.0059C15.4201 22.75 15.7559 22.4142 15.7559 22C15.7559 21.5858 15.4201 21.25 15.0059 21.25H12.7559V15H13.5358C14.8551 15 15.9102 15 16.7586 14.9352C16.7568 14.9565 16.7559 14.9782 16.7559 15V17C16.7559 17.4142 17.0916 17.75 17.5059 17.75C17.9201 17.75 18.2559 17.4142 18.2559 17V15V14.6817C18.7241 14.5324 19.0866 14.3131 19.3724 13.9909C19.4617 13.8902 19.5441 13.7837 19.6191 13.6719C20.3709 12.5519 19.957 10.9576 19.1292 7.76898L19.045 7.44451C18.4361 5.0991 18.1316 3.9264 17.3455 3.15144C17.1176 2.92678 16.8636 2.73028 16.5889 2.56616C15.6412 2 14.4297 2 12.0065 2C9.58334 2 8.37176 2 7.42412 2.56616C7.14941 2.73028 6.89538 2.92678 6.66749 3.15144Z" fill="currentColor"/>''',
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
