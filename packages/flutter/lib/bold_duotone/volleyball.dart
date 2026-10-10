// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `volleyball` icon in the boldDuotone style.
class VolleyballBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `volleyball` icon in the boldDuotone style.
  const VolleyballBoldDuotoneIcon({
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
    name: 'volleyball',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M4.86426 4.99414C4.05511 8.60441 4.37798 12.3755 5.83301 15.8574C4.94932 16.187 4.01923 16.4042 3.06543 16.4971C2.3837 15.1453 2.00005 13.6173 2 12C2 9.27467 3.09029 6.80373 4.8584 5L4.86426 4.99414Z" fill="currentColor"/>
<path d="M10.1846 2.55859C8.8658 5.6907 9.08232 9.23977 10.7471 12.1826L10.5762 12.3984C9.6482 13.5791 8.49496 14.5392 7.2002 15.2373C5.6224 11.4333 5.51474 7.26194 6.87891 3.4082C7.93086 2.77985 9.10839 2.33946 10.3643 2.13281L10.1846 2.55859Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M18.6152 15.4385C19.2957 15.9974 19.9102 16.6432 20.4404 17.3652C18.6655 20.1515 15.5484 22 12 22C10.7178 22 9.4918 21.7581 8.36523 21.3184C12.2683 20.4472 15.9425 18.3127 18.6152 15.4385Z" fill="currentColor"/>
<path d="M12.0176 12.9932C13.9402 13.0388 15.7856 13.593 17.3799 14.5625C14.4912 17.5979 10.3914 19.7025 6.21484 20.1572C5.33558 19.5325 4.56152 18.7694 3.9248 17.8994C7.00233 17.4192 9.81179 15.7987 11.7559 13.3252L12.0176 12.9932Z" fill="currentColor"/>
<path d="M10.8281 6.81152C14.8827 6.89031 18.7526 8.51798 21.624 11.3584L21.626 11.3604L21.9971 11.7324C21.9994 11.8212 22 11.9107 22 12C22 13.3875 21.7178 14.7091 21.207 15.9102C18.9648 13.2081 15.6374 11.5867 12.0811 11.4941C11.2525 10.05 10.8304 8.43484 10.8281 6.81152Z" fill="currentColor"/>
<path d="M12.0479 2C16.6315 2.02142 20.4864 5.1267 21.6445 9.34766C18.6557 6.83896 14.8813 5.4101 10.9463 5.31348C11.0642 4.57533 11.2706 3.84553 11.5674 3.14062L12.0479 2Z" fill="currentColor"/>
</g>

<g opacity="0.5">
<path d="M18.6152 15.4385C19.2957 15.9974 19.9102 16.6432 20.4404 17.3652C18.6655 20.1515 15.5484 22 12 22C10.7178 22 9.4918 21.7581 8.36523 21.3184C12.2683 20.4472 15.9425 18.3127 18.6152 15.4385Z" fill="currentColor"/>
<path d="M12.0176 12.9932C13.9402 13.0388 15.7856 13.593 17.3799 14.5625C14.4912 17.5979 10.3914 19.7025 6.21484 20.1572C5.33558 19.5325 4.56152 18.7694 3.9248 17.8994C7.00233 17.4192 9.81179 15.7987 11.7559 13.3252L12.0176 12.9932Z" fill="currentColor"/>
</g>''',
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
