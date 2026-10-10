// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chandelier` icon in every style.
///
/// Prefer the static widgets (e.g. `ChandelierLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ChandelierIcon extends StatelessWidget {
  /// Creates the `chandelier` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ChandelierIcon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

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

  static const bold = SolarIconData(
    name: 'chandelier',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8.25 4C8.25 3.58579 8.58579 3.25 9 3.25H15C15.4142 3.25 15.75 3.58579 15.75 4C15.75 4.41421 15.4142 4.75 15 4.75H12.75V16.5C12.75 18.0188 13.9812 19.25 15.5 19.25C17.0188 19.25 18.25 18.0188 18.25 16.5V15.9055C16.9561 15.5725 16 14.3979 16 13V11.2C16 10.5373 16.5373 10 17.2 10H20.8C21.4627 10 22 10.5373 22 11.2V13C22 14.3979 21.0439 15.5725 19.75 15.9055V16.5C19.75 18.8472 17.8472 20.75 15.5 20.75C14.0484 20.75 12.7667 20.0222 12 18.9116C11.2333 20.0222 9.95165 20.75 8.5 20.75C6.15279 20.75 4.25 18.8472 4.25 16.5V15.9055C2.95608 15.5725 2 14.3979 2 13V10.8571C2 10.3838 2.38376 10 2.85714 10H7.14286C7.61624 10 8 10.3838 8 10.8571V13C8 14.3979 7.04392 15.5725 5.75 15.9055V16.5C5.75 18.0188 6.98122 19.25 8.5 19.25C10.0188 19.25 11.25 18.0188 11.25 16.5V4.75H9C8.58579 4.75 8.25 4.41421 8.25 4Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'chandelier',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7.14258 10C7.61596 10 8 10.384 8 10.8574V13C8 14.3979 7.04389 15.5722 5.75 15.9053H4.25C2.95611 15.5722 2 14.3979 2 13V10.8574C2 10.384 2.38403 10 2.85742 10H7.14258Z" fill="currentColor"/>
<path d="M20.7998 10C21.4625 10 22 10.5375 22 11.2002V13C22 14.3979 21.0439 15.5722 19.75 15.9053H18.25C16.9561 15.5722 16 14.3979 16 13V11.2002C16 10.5375 16.5375 10 17.2002 10H20.7998Z" fill="currentColor"/>
<path d="M15 3.25C15.4142 3.25 15.75 3.58579 15.75 4C15.75 4.41421 15.4142 4.75 15 4.75H9C8.58579 4.75 8.25 4.41421 8.25 4C8.25 3.58579 8.58579 3.25 9 3.25H15Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M11.25 4.75V16.5C11.25 18.0188 10.0188 19.25 8.5 19.25C6.98122 19.25 5.75 18.0188 5.75 16.5V15.9055H4.25V16.5C4.25 18.8472 6.15279 20.75 8.5 20.75C9.95165 20.75 11.2333 20.0222 12 18.9116C12.7667 20.0222 14.0484 20.75 15.5 20.75C17.8472 20.75 19.75 18.8472 19.75 16.5V15.9055H18.25V16.5C18.25 18.0188 17.0188 19.25 15.5 19.25C13.9812 19.25 12.75 18.0188 12.75 16.5V4.75H11.25Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'chandelier',
    style: SolarIconStyle.broken,
    body: r'''<path d="M9 4H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.8 10C21.4627 10 22 10.5373 22 11.2V13C22 14.6569 20.6569 16 19 16C17.3431 16 16 14.6569 16 13V11.2C16 10.5373 16.5373 10 17.2 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 4V7M12 16.5C12 18.433 13.567 20 15.5 20C17.433 20 19 18.433 19 16.5V16.4444M12 16.5C12 18.433 10.433 20 8.5 20C6.567 20 5 18.433 5 16.5V16.4444M12 16.5V11" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 10.8571C8 10.3838 7.61624 10 7.14286 10H2.85714C2.38376 10 2 10.3838 2 10.8571V13C2 14.6569 3.34315 16 5 16C6.65685 16 8 14.6569 8 13V10.8571Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'chandelier',
    style: SolarIconStyle.linear,
    body: r'''<path d="M9 4H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 4V16.5C12 18.433 13.567 20 15.5 20C17.433 20 19 18.433 19 16.5V16.4444" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 11.2C16 10.5373 16.5373 10 17.2 10H20.8C21.4627 10 22 10.5373 22 11.2V13C22 14.6569 20.6569 16 19 16C17.3431 16 16 14.6569 16 13V11.2Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 4V16.5C12 18.433 10.433 20 8.5 20C6.567 20 5 18.433 5 16.5V16.4444" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 10.8571C8 10.3838 7.61624 10 7.14286 10H2.85714C2.38376 10 2 10.3838 2 10.8571V13C2 14.6569 3.34315 16 5 16C6.65685 16 8 14.6569 8 13V10.8571Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'chandelier',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M9 4H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 11.2C16 10.5373 16.5373 10 17.2 10H20.8C21.4627 10 22 10.5373 22 11.2V13C22 14.6569 20.6569 16 19 16C17.3431 16 16 14.6569 16 13V11.2Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 10.8571C8 10.3838 7.61624 10 7.14286 10H2.85714C2.38376 10 2 10.3838 2 10.8571V13C2 14.6569 3.34315 16 5 16C6.65685 16 8 14.6569 8 13V10.8571Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 4V16.5M12 16.5C12 18.433 13.567 20 15.5 20C17.433 20 19 18.433 19 16.5V16.4444M12 16.5C12 18.433 10.433 20 8.5 20C6.567 20 5 18.433 5 16.5V16.4444" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'chandelier',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.25 4C8.25 3.58579 8.58579 3.25 9 3.25H15C15.4142 3.25 15.75 3.58579 15.75 4C15.75 4.41421 15.4142 4.75 15 4.75H12.75V16.5C12.75 18.0188 13.9812 19.25 15.5 19.25C16.9604 19.25 18.1549 18.1117 18.2446 16.6739C16.5356 16.3243 15.25 14.8123 15.25 13V11.2C15.25 10.123 16.123 9.25 17.2 9.25H20.8C21.877 9.25 22.75 10.123 22.75 11.2V13C22.75 14.8155 21.4599 16.3296 19.7464 16.6757C19.6543 18.9414 17.7884 20.75 15.5 20.75C14.0484 20.75 12.7667 20.0222 12 18.9116C11.2333 20.0222 9.95165 20.75 8.5 20.75C6.21165 20.75 4.34571 18.9414 4.25357 16.6757C2.54011 16.3296 1.25 14.8155 1.25 13V10.8571C1.25 9.96954 1.96954 9.25 2.85714 9.25H7.14286C8.03046 9.25 8.75 9.96954 8.75 10.8571V13C8.75 14.8123 7.46439 16.3243 5.75541 16.6739C5.84512 18.1117 7.03962 19.25 8.5 19.25C10.0188 19.25 11.25 18.0188 11.25 16.5V4.75H9C8.58579 4.75 8.25 4.41421 8.25 4ZM2.85714 10.75C2.79797 10.75 2.75 10.798 2.75 10.8571V13C2.75 14.2426 3.75736 15.25 5 15.25C6.24264 15.25 7.25 14.2426 7.25 13V10.8571C7.25 10.798 7.20203 10.75 7.14286 10.75H2.85714ZM17.2 10.75C16.9515 10.75 16.75 10.9515 16.75 11.2V13C16.75 14.2426 17.7574 15.25 19 15.25C20.2426 15.25 21.25 14.2426 21.25 13V11.2C21.25 10.9515 21.0485 10.75 20.8 10.75H17.2Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

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
