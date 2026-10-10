// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clipboard-clock` icon in the bold style.
class ClipboardClockBoldIcon extends StatelessWidget {
  /// Creates the `clipboard-clock` icon in the bold style.
  const ClipboardClockBoldIcon({
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
    name: 'clipboard-clock',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 9.75293C14.3472 9.75293 16.25 11.6557 16.25 14.0029C16.25 16.3501 14.3472 18.2529 12 18.2529C9.65279 18.2529 7.75 16.3501 7.75 14.0029C7.75 11.6557 9.65279 9.75293 12 9.75293ZM12 11.2529C11.5858 11.2529 11.25 11.5887 11.25 12.0029V13.8486C11.25 14.029 11.3155 14.2035 11.4336 14.3398L12.4336 15.4941C12.7049 15.807 13.1783 15.8406 13.4912 15.5693C13.8041 15.298 13.8376 14.8247 13.5664 14.5117L12.75 13.5693V12.0029C12.75 11.5887 12.4142 11.2529 12 11.2529Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5 4.03613C18.7578 4.1067 19.5518 4.30773 20.1211 4.87695C20.9998 5.75561 21 7.16976 21 9.99805V15.998C21 18.8264 20.9997 20.2405 20.1211 21.1191C19.2424 21.9978 17.8284 21.998 15 21.998H9C6.17157 21.998 4.75759 21.9978 3.87891 21.1191C3.00033 20.2405 3 18.8264 3 15.998V9.99805C3 7.16976 3.00025 5.75561 3.87891 4.87695C4.4482 4.30773 5.24217 4.1067 6.5 4.03613V4.5C6.5 6.15685 7.84315 7.5 9.5 7.5H14.5C16.1569 7.5 17.5 6.15685 17.5 4.5V4.03613ZM12 8.25293C8.82436 8.25293 6.25 10.8273 6.25 14.0029C6.25 17.1786 8.82436 19.7529 12 19.7529C15.1756 19.7529 17.75 17.1786 17.75 14.0029C17.75 10.8273 15.1756 8.25293 12 8.25293Z" fill="currentColor"/>
<path d="M14.5 2C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5C8 2.67157 8.67157 2 9.5 2H14.5Z" fill="currentColor"/>''',
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
