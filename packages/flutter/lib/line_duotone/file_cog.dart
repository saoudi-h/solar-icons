// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `file-cog` icon in the lineDuotone style.
class FileCogLineDuotoneIcon extends StatelessWidget {
  /// Creates the `file-cog` icon in the lineDuotone style.
  const FileCogLineDuotoneIcon({
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
    name: 'file-cog',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="9.24935" cy="14.889" r="1.08333" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.17139 3.17157C4.34296 2 6.23851 2 10.0296 2C11.5546 2 12.3173 2.00011 13.0093 2.26562C13.7012 2.53114 14.2651 3.03857 15.3929 4.05365L19.3516 7.61621C20.6558 8.78998 21.3078 9.3774 21.6538 10.1543C21.9998 10.9312 22 11.8079 22 13.5625V14C22 17.7712 22 19.6566 20.8284 20.8281C19.6569 21.9997 17.7712 22 14 22L9.9969 21.9997C6.22761 21.9997 4.34284 21.9997 3.17157 20.8284C2 19.6569 2 17.7712 2 14V9.9982C2 6.22817 2 4.34296 3.17139 3.17157Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 2.2627V5.0003C13 7.35732 13 8.53583 13.7322 9.26806C14.4645 10.0003 15.643 10.0003 18 10.0003H21.58" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M7.74889 11.9281C8.48148 11.4943 8.84778 11.2773 9.25 11.2773C9.65222 11.2773 10.0185 11.4943 10.7511 11.9281L10.9989 12.0748C11.7315 12.5087 12.0978 12.7256 12.2989 13.0829C12.5 13.4402 12.5 13.874 12.5 14.7417V15.0352C12.5 15.9029 12.5 16.3367 12.2989 16.694C12.0978 17.0513 11.7315 17.2682 10.9989 17.7021L10.7511 17.8488C10.0185 18.2826 9.65222 18.4996 9.25 18.4996C8.84778 18.4996 8.48148 18.2826 7.74889 17.8488L7.50111 17.7021C6.76852 17.2682 6.40222 17.0513 6.20111 16.694C6 16.3367 6 15.9029 6 15.0352V14.7417C6 13.874 6 13.4402 6.20111 13.0829C6.40222 12.7256 6.76852 12.5087 7.50111 12.0748L7.74889 11.9281Z" stroke="currentColor" stroke-linecap="round"/>''',
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
