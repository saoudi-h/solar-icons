// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `file-figma` icon in the broken style.
class FileFigmaBrokenIcon extends StatelessWidget {
  /// Creates the `file-figma` icon in the broken style.
  const FileFigmaBrokenIcon({
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
    name: 'file-figma',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13 2.2627V5.0003C13 7.35732 13 8.53583 13.7322 9.26806C14.4645 10.0003 15.643 10.0003 18 10.0003H21.58" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 11.5C5 10.6716 5.67157 10 6.5 10H8V13H6.5C5.67157 13 5 12.3284 5 11.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 14.5C5 13.6716 5.67157 13 6.5 13H8V16H6.5C5.67157 16 5 15.3284 5 14.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 17.5C5 16.6716 5.67157 16 6.5 16H8V17.5C8 18.3284 7.32843 19 6.5 19C5.67157 19 5 18.3284 5 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 10H9.5C10.3284 10 11 10.6716 11 11.5C11 12.3284 10.3284 13 9.5 13H8" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 14.5C11 13.6716 10.3284 13 9.5 13C8.67157 13 8 13.6716 8 14.5C8 15.3284 8.67157 16 9.5 16C10.3284 16 11 15.3284 11 14.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 10V14C2 17.7712 2 19.6569 3.17157 20.8284C4.34315 22 6.22876 22 10 22H14C17.7712 22 19.6569 22 20.8284 20.8284C21.4816 20.1752 21.7706 19.3001 21.8985 18M22 14V13.5629C22 11.8083 22 10.931 21.654 10.1541C21.308 9.3772 20.6559 8.79032 19.3517 7.61654L15.3929 4.05365C14.2651 3.03857 13.7012 2.53104 13.0092 2.26552C12.3173 2 11.5548 2 10.0298 2C6.23869 2 4.34315 2 3.17157 3.17157C2.51839 3.82475 2.22937 4.69989 2.10149 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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

@Deprecated(
  'Normalized the legacy *-file name to the file-* naming convention. Deprecated since 2026-09-11. Use FileFigmaBrokenIcon instead.',
)
typedef FigmaFileBrokenIcon = FileFigmaBrokenIcon;
