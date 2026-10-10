// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `plug-circle` icon in the outline style.
class PlugCircleOutlineIcon extends StatelessWidget {
  /// Creates the `plug-circle` icon in the outline style.
  const PlugCircleOutlineIcon({
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
    name: 'plug-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89721 2.75 2.75 6.92275 2.75 12.0832C2.75 16.6065 5.93808 20.3736 10.1622 21.2324C10.6697 21.3355 11.25 20.909 11.25 20.1498V15.675C9.53832 15.3275 8.25 13.8142 8.25 12V11.8C8.25 10.9607 8.9171 10.2772 9.75 10.2508V9C9.75 8.58579 10.0858 8.25 10.5 8.25C10.9142 8.25 11.25 8.58579 11.25 9V10.25H12.75V9C12.75 8.58579 13.0858 8.25 13.5 8.25C13.9142 8.25 14.25 8.58579 14.25 9V10.2508C15.0829 10.2772 15.75 10.9607 15.75 11.8V12C15.75 13.8142 14.4617 15.3275 12.75 15.675V20.1498C12.75 21.618 11.5214 23.0394 9.86335 22.7023C4.94578 21.7025 1.25 17.3253 1.25 12.0832C1.25 6.10607 6.05709 1.25 12 1.25C17.9429 1.25 22.75 6.10607 22.75 12.0832C22.75 16.369 20.2798 20.0752 16.6941 21.8316C16.3221 22.0138 15.8728 21.86 15.6906 21.488C15.5084 21.116 15.6622 20.6668 16.0342 20.4846C19.1208 18.9726 21.25 15.7797 21.25 12.0832C21.25 6.92275 17.1028 2.75 12 2.75ZM9.8 11.75C9.77239 11.75 9.75 11.7724 9.75 11.8V12C9.75 13.2426 10.7574 14.25 12 14.25C13.2426 14.25 14.25 13.2426 14.25 12V11.8C14.25 11.7724 14.2276 11.75 14.2 11.75H9.8Z" fill="currentColor"/>''',
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
