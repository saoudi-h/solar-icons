// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `archive-down-minimalistic` icon in the bold style.
class ArchiveDownMinimalisticBoldIcon extends StatelessWidget {
  /// Creates the `archive-down-minimalistic` icon in the bold style.
  const ArchiveDownMinimalisticBoldIcon({
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
    name: 'archive-down-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M14 6C16.8 6 18.2 6.00013 19.2695 6.54492C20.2103 7.02429 20.9757 7.78966 21.4551 8.73047C21.9999 9.79998 22 11.2 22 14C22 16.8 21.9999 18.2 21.4551 19.2695C20.9757 20.2103 20.2103 20.9757 19.2695 21.4551C18.2 21.9999 16.8 22 14 22H10C7.20005 22 5.79998 21.9999 4.73047 21.4551C3.78966 20.9757 3.02429 20.2103 2.54492 19.2695C2.00013 18.2 2 16.8 2 14C2 11.2 2.00013 9.79998 2.54492 8.73047C3.02429 7.78966 3.78966 7.02429 4.73047 6.54492C5.79998 6.00013 7.20005 6 10 6H14ZM12 10.25C11.5858 10.25 11.25 10.5858 11.25 11V15.1895L10.0303 13.9697C9.73738 13.6768 9.26262 13.6768 8.96973 13.9697C8.67683 14.2626 8.67683 14.7374 8.96973 15.0303L11.4697 17.5303C11.6104 17.6709 11.8011 17.75 12 17.75C12.1989 17.75 12.3896 17.6709 12.5303 17.5303L15.0303 15.0303C15.3232 14.7374 15.3232 14.2626 15.0303 13.9697C14.7374 13.6768 14.2626 13.6768 13.9697 13.9697L12.75 15.1895V11C12.75 10.5858 12.4142 10.25 12 10.25Z" fill="currentColor"/>
<path d="M11.999 2C16.7131 2 19.0707 2.00038 20.5352 3.46484C21.2924 4.22229 21.6585 5.21873 21.835 6.65625C21.3043 6.06559 20.6662 5.57283 19.9502 5.20801C19.1688 4.8099 18.3317 4.64893 17.4053 4.57324C16.5103 4.50013 15.409 4.49998 14.0625 4.5H9.93652C8.58977 4.49998 7.4879 4.50011 6.59277 4.57324C5.66663 4.64894 4.83004 4.81009 4.04883 5.20801C3.33282 5.57283 2.69473 6.06559 2.16406 6.65625C2.34059 5.2186 2.70647 4.22231 3.46387 3.46484C4.9283 2.00041 7.28516 2 11.999 2Z" fill="currentColor"/>''',
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
