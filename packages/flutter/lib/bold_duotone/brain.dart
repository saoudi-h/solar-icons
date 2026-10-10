// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `brain` icon in the boldDuotone style.
class BrainBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `brain` icon in the boldDuotone style.
  const BrainBoldDuotoneIcon({
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
    name: 'brain',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.85442 10.8908C8.08221 11.548 6.18533 10.6594 5.63696 8.91528C5.51504 8.52686 5.74197 8.1089 6.1433 7.98198C6.54466 7.8552 6.96915 8.06778 7.09128 8.45621C7.38671 9.39499 8.38436 9.86229 9.33841 9.50882C9.73308 9.36247 10.1689 9.5529 10.3112 9.93433C10.4534 10.3159 10.249 10.7443 9.85442 10.8908Z" fill="currentColor"/>
<path d="M8.9633 17.9494C7.1911 18.6066 5.29422 17.718 4.74584 15.9739C4.62393 15.5855 4.85086 15.1675 5.25218 15.0406C5.65354 14.9138 6.07804 15.1264 6.20017 15.5148C6.4956 16.4536 7.49325 16.9209 8.4473 16.5674C8.84197 16.4211 9.27776 16.6115 9.42012 16.9929C9.56232 17.3744 9.35787 17.8029 8.9633 17.9494Z" fill="currentColor"/>
<path d="M14.1471 10.8908C15.9193 11.548 17.8162 10.6594 18.3646 8.91528C18.4865 8.52686 18.2595 8.1089 17.8582 7.98198C17.4569 7.8552 17.0324 8.06778 16.9102 8.45621C16.6148 9.39499 15.6172 9.86229 14.6631 9.50882C14.2684 9.36247 13.8326 9.5529 13.6903 9.93433C13.5481 10.3159 13.7525 10.7443 14.1471 10.8908Z" fill="currentColor"/>
<path d="M15.0382 17.9494C16.8104 18.6066 18.7073 17.718 19.2557 15.9739C19.3776 15.5855 19.1507 15.1675 18.7493 15.0406C18.348 14.9138 17.9235 15.1264 17.8013 15.5148C17.5059 16.4536 16.5083 16.9209 15.5542 16.5674C15.1595 16.4211 14.7238 16.6115 14.5814 16.9929C14.4392 17.3744 14.6436 17.8029 15.0382 17.9494Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M8.24889 21.9999C11.8495 22.0307 12.0009 19.1376 12.0009 18.7411V4.60213C12.0009 3.20919 10.4326 1.97257 8.99963 2.00097C6.96718 2.04124 4.67387 3.65305 4.71233 5.85823C1.4012 7.46082 2.07374 10.7124 2.8239 12.1379C0.372706 16.1829 3.74813 21.9615 8.24889 21.9999Z" fill="currentColor"/>
<path d="M15.7531 21.9999C12.1525 22.0307 12.0009 19.1376 12.0009 18.7411V4.60213C12.0009 3.20919 13.5694 1.97257 15.0023 2.00097C17.0348 2.04124 19.3281 3.65305 19.2896 5.85823C22.6007 7.46082 21.9282 10.7124 21.178 12.1379C23.6292 16.1829 20.2538 21.9615 15.7531 21.9999Z" fill="currentColor"/>
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
