// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `four-k` icon in the boldDuotone style.
class FourKBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `four-k` icon in the boldDuotone style.
  const FourKBoldDuotoneIcon({
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
    name: 'four-k',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M19.0198 7.45938C19.3184 7.74647 19.3277 8.22125 19.0406 8.51983L16.3738 11.2934L19.1314 15.5953C19.3549 15.944 19.2535 16.4079 18.9048 16.6314C18.556 16.8549 18.0921 16.7535 17.8686 16.4048L15.3047 12.4051L14.25 13.5021V16C14.25 16.4142 13.9142 16.75 13.5 16.75C13.0858 16.75 12.75 16.4142 12.75 16V8C12.75 7.58579 13.0858 7.25 13.5 7.25C13.9142 7.25 14.25 7.58579 14.25 8V11.3379L17.9594 7.48017C18.2465 7.18159 18.7213 7.17228 19.0198 7.45938Z" fill="currentColor"/>
<path d="M5.5 7.25C5.91421 7.25 6.25 7.58579 6.25 8V10C6.25 10.6904 6.80964 11.25 7.5 11.25H9.75V8C9.75 7.58579 10.0858 7.25 10.5 7.25C10.9142 7.25 11.25 7.58579 11.25 8V16C11.25 16.4142 10.9142 16.75 10.5 16.75C10.0858 16.75 9.75 16.4142 9.75 16V12.75H7.5C5.98122 12.75 4.75 11.5188 4.75 10V8C4.75 7.58579 5.08579 7.25 5.5 7.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22Z" fill="currentColor"/>''',
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
