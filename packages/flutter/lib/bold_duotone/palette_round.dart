// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `palette-round` icon in the boldDuotone style.
class PaletteRoundBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `palette-round` icon in the boldDuotone style.
  const PaletteRoundBoldDuotoneIcon({
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
    name: 'palette-round',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17.8994 14C20.1086 14 21.8994 15.7909 21.8994 18C21.8994 20.2091 20.1086 22 17.8994 22H6C7.35277 22 8.54757 21.3277 9.27148 20.2998C9.26322 20.3115 9.25643 20.3243 9.24805 20.3359L13.2217 16.3613L15.4863 14H17.8994Z" fill="currentColor"/>
<path d="M6 17C6.55228 17 7 17.4477 7 18C7 18.5523 6.55228 19 6 19C5.44772 19 5 18.5523 5 18C5 17.4477 5.44772 17 6 17Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M6 2C8.20914 2 10 3.79086 10 6V7.90039L13.2842 4.61621C14.8627 3.03793 17.4215 3.03792 19 4.61621C20.5551 6.17129 20.5815 8.68397 19.0596 10.2715L13.2217 16.3613L9.24805 20.3359C9.25891 20.3209 9.26766 20.3043 9.27832 20.2891C8.55516 21.3228 7.35733 22 6 22C3.79086 22 2 20.2091 2 18V6C2 3.79086 3.79086 2 6 2Z" fill="currentColor"/>

<path opacity="0.5" d="M13.2842 4.61615C14.8627 3.03794 17.4215 3.03794 19 4.61615C20.5551 6.17123 20.5815 8.68488 19.0596 10.2724L13.2217 16.3613L9.24707 20.3359C9.72057 19.6787 10 18.8718 10 17.9999V7.90033L13.2842 4.61615Z" fill="currentColor"/>''',
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
