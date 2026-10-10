// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `file-spreadsheet` icon in the lineDuotone style.
class FileSpreadsheetLineDuotoneIcon extends StatelessWidget {
  /// Creates the `file-spreadsheet` icon in the lineDuotone style.
  const FileSpreadsheetLineDuotoneIcon({
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
    name: 'file-spreadsheet',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5.11865 14.3686C5.11865 12.8105 5.11865 12.0315 5.60268 11.5475C6.0867 11.0635 6.86572 11.0635 8.42377 11.0635H10.0763C11.6344 11.0635 12.4134 11.0635 12.8974 11.5475C13.3815 12.0315 13.3815 12.8105 13.3815 14.3686V15.1949C13.3815 16.7529 13.3815 17.532 12.8974 18.016C12.4134 18.5 11.6344 18.5 10.0763 18.5H8.42377C6.86572 18.5 6.0867 18.5 5.60268 18.016C5.11865 17.532 5.11865 16.7529 5.11865 15.1949V14.3686Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.17139 3.17157C4.34296 2 6.23851 2 10.0296 2C11.5546 2 12.3173 2.00011 13.0093 2.26562C13.7012 2.53114 14.2651 3.03857 15.3929 4.05365L19.3516 7.61621C20.6558 8.78998 21.3078 9.3774 21.6538 10.1543C21.9998 10.9312 22 11.8079 22 13.5625V14C22 17.7712 22 19.6566 20.8284 20.8281C19.6569 21.9997 17.7712 22 14 22L9.9969 21.9997C6.22761 21.9997 4.34284 21.9997 3.17157 20.8284C2 19.6569 2 17.7712 2 14V9.9982C2 6.22817 2 4.34296 3.17139 3.17157Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 2.2627V5.0003C13 7.35732 13 8.53583 13.7322 9.26806C14.4645 10.0003 15.643 10.0003 18 10.0003H21.58" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5.11865 14.3457H13.3815M8.48779 11.0635L8.48779 18.5" stroke="currentColor" stroke-linecap="round"/>''',
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
