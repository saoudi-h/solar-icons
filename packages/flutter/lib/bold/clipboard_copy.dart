// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clipboard-copy` icon in the bold style.
class ClipboardCopyBoldIcon extends StatelessWidget {
  /// Creates the `clipboard-copy` icon in the bold style.
  const ClipboardCopyBoldIcon({
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
    name: 'clipboard-copy',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5 4.03613C18.7578 4.1067 19.5518 4.30773 20.1211 4.87695C20.9998 5.75561 21 7.16976 21 9.99805V15.998C21 18.8264 20.9997 20.2405 20.1211 21.1191C19.2424 21.9978 17.8284 21.998 15 21.998H9C6.17157 21.998 4.75759 21.9978 3.87891 21.1191C3.00033 20.2405 3 18.8264 3 15.998V9.99805C3 7.16976 3.00025 5.75561 3.87891 4.87695C4.4482 4.30773 5.24217 4.1067 6.5 4.03613V4.5C6.5 6.15685 7.84315 7.5 9.5 7.5H14.5C16.1569 7.5 17.5 6.15685 17.5 4.5V4.03613ZM12.0303 10.9697C11.7374 10.6768 11.2626 10.6768 10.9697 10.9697L8.46973 13.4697L8.37598 13.584C8.29446 13.7063 8.25 13.8509 8.25 14C8.25002 14.1989 8.32909 14.3896 8.46973 14.5303L10.9697 17.0303C11.2626 17.3231 11.7374 17.3231 12.0303 17.0303C12.3232 16.7374 12.3231 16.2626 12.0303 15.9697L10.8105 14.75H15C15.4142 14.75 15.75 14.4142 15.75 14C15.75 13.5858 15.4142 13.25 15 13.25H10.8105L12.0303 12.0303C12.3232 11.7374 12.3231 11.2626 12.0303 10.9697Z" fill="currentColor"/>
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
