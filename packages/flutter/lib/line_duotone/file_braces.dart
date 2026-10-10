// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `file-braces` icon in the lineDuotone style.
class FileBracesLineDuotoneIcon extends StatelessWidget {
  /// Creates the `file-braces` icon in the lineDuotone style.
  const FileBracesLineDuotoneIcon({
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
    name: 'file-braces',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.17139 3.17157C4.34296 2 6.23851 2 10.0296 2C11.5546 2 12.3173 2.00011 13.0093 2.26562C13.7012 2.53114 14.2651 3.03857 15.3929 4.05365L19.3516 7.61621C20.6558 8.78998 21.3078 9.3774 21.6538 10.1543C21.9998 10.9312 22 11.8079 22 13.5625V14C22 17.7712 22 19.6566 20.8284 20.8281C19.6569 21.9997 17.7712 22 14 22L9.9969 21.9997C6.22761 21.9997 4.34284 21.9997 3.17157 20.8284C2 19.6569 2 17.7712 2 14V9.9982C2 6.22817 2 4.34296 3.17139 3.17157Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 2.2627V5.0003C13 7.35732 13 8.53583 13.7322 9.26806C14.4645 10.0003 15.643 10.0003 18 10.0003H21.58" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M8.39304 11.2773C7.09965 11.2773 6.89018 12.4214 6.88562 12.9977C6.88562 13.7924 6.35251 14.2918 5.85084 14.6252C5.64126 14.7645 5.64406 15.0311 5.8681 15.153C6.36992 15.4862 6.9032 15.9853 6.9032 16.7794C6.90776 17.3553 7.11734 18.5156 8.41113 18.5156" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M10.2388 11.2773C11.5322 11.2773 11.7417 12.4214 11.7462 12.9977C11.7462 13.7924 12.2793 14.2918 12.781 14.6252C12.9906 14.7645 12.9878 15.0311 12.7637 15.153C12.2619 15.4862 11.7286 15.9853 11.7286 16.7794C11.7241 17.3553 11.5145 18.5156 10.2207 18.5156" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
