// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `money-roll` icon in the boldDuotone style.
class MoneyRollBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `money-roll` icon in the boldDuotone style.
  const MoneyRollBoldDuotoneIcon({
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
    name: 'money-roll',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.25 18.9999H15.75C18.0674 18.9946 19.3075 18.9376 20.2223 18.3263C20.659 18.0345 21.034 17.6595 21.3259 17.2227C22 16.2138 22 14.8094 22 12.0004C22 9.1915 22 7.78704 21.3259 6.77815C21.034 6.34139 20.659 5.96638 20.2223 5.67455C19.3075 5.06329 18.0674 5.00629 15.75 5.00098H14.25V9H15C16.6569 9 18 10.3431 18 12C18 13.6569 16.6569 15 15 15H14.25V18.9999Z" fill="currentColor"/>
<path d="M9.75 18.9999V15H9C7.34315 15 6 13.6569 6 12C6 10.3431 7.34315 9 9 9H9.75V5.00098H8.25C5.93257 5.00629 4.69253 5.06329 3.77772 5.67455C3.34096 5.96639 2.96596 6.34139 2.67412 6.77815C2 7.78704 2 9.19151 2 12.0004C2 14.8094 2 16.2138 2.67412 17.2227C2.96596 17.6595 3.34096 18.0345 3.77772 18.3263C4.69253 18.9376 5.93258 18.9946 8.25 18.9999H9.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.75 19L14.25 19V5H9.75V19Z" fill="currentColor"/>''',
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
