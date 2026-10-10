// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tag` icon in the boldDuotone style.
class TagBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `tag` icon in the boldDuotone style.
  const TagBoldDuotoneIcon({
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
    name: 'tag',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.1235 7.27135C10.911 8.05894 10.911 9.33587 10.1235 10.1235C9.33587 10.911 8.05894 10.911 7.27135 10.1235C6.48377 9.33587 6.48377 8.05894 7.27135 7.27135C8.05894 6.48377 9.33587 6.48377 10.1235 7.27135Z" fill="currentColor"/>
<path d="M19.0512 12.0514L12.0721 19.0307C11.7793 19.3236 11.3044 19.3236 11.0115 19.0307C10.7186 18.7378 10.7186 18.263 11.0115 17.9701L17.9905 10.9908C18.2834 10.6979 18.7582 10.6979 19.0511 10.9908C19.344 11.2837 19.344 11.7586 19.0512 12.0514Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.72848 16.1369C3.18295 14.5914 2.41018 13.8186 2.12264 12.816C1.83509 11.8134 2.08083 10.7485 2.57231 8.61875L2.85574 7.39057C3.26922 5.59881 3.47597 4.70292 4.08944 4.08944C4.70292 3.47597 5.5988 3.26922 7.39057 2.85574L8.61875 2.57231C10.7485 2.08083 11.8134 1.83509 12.816 2.12264C13.8186 2.41018 14.5914 3.18295 16.1369 4.72848L17.9665 6.55812L17.9665 6.55813C20.6555 9.24711 22 10.5916 22 12.2623C22 13.933 20.6555 15.2775 17.9665 17.9665L17.9665 17.9665L17.9665 17.9665C15.2775 20.6555 13.933 22 12.2623 22C10.5916 22 9.24711 20.6555 6.55813 17.9665L6.55812 17.9665L4.72848 16.1369Z" fill="currentColor"/>''',
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
