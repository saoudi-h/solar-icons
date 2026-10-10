// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `file-braces` icon in the broken style.
class FileBracesBrokenIcon extends StatelessWidget {
  /// Creates the `file-braces` icon in the broken style.
  const FileBracesBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13 2.2627V5.0003C13 7.35732 13 8.53583 13.7322 9.26806C14.4645 10.0003 15.643 10.0003 18 10.0003H21.58" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 10V14C2 17.7712 2 19.6569 3.17157 20.8284C4.34315 22 6.22876 22 10 22H14C17.7712 22 19.6569 22 20.8284 20.8284C21.4816 20.1752 21.7706 19.3001 21.8985 18M22 14V13.5629C22 11.8083 22 10.931 21.654 10.1541C21.308 9.3772 20.6559 8.79032 19.3517 7.61654L15.3929 4.05365C14.2651 3.03857 13.7012 2.53104 13.0092 2.26552C12.3173 2 11.5548 2 10.0298 2C6.23869 2 4.34315 2 3.17157 3.17157C2.51839 3.82475 2.22937 4.69989 2.10149 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8.39304 11.2773C7.09965 11.2773 6.89018 12.4214 6.88562 12.9977C6.88562 13.7924 6.35251 14.2918 5.85084 14.6252C5.64126 14.7645 5.64406 15.0311 5.8681 15.153C6.36992 15.4862 6.9032 15.9853 6.9032 16.7794C6.90776 17.3553 7.11734 18.5156 8.41113 18.5156" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10.2388 11.2773C11.5322 11.2773 11.7417 12.4214 11.7462 12.9977C11.7462 13.7924 12.2793 14.2918 12.781 14.6252C12.9906 14.7645 12.9878 15.0311 12.7637 15.153C12.2619 15.4862 11.7286 15.9853 11.7286 16.7794C11.7241 17.3553 11.5145 18.5156 10.2207 18.5156" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
