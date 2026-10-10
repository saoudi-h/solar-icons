// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `monitor-smartphone` icon in the boldDuotone style.
class MonitorSmartphoneBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `monitor-smartphone` icon in the boldDuotone style.
  const MonitorSmartphoneBoldDuotoneIcon({
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
    name: 'monitor-smartphone',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.5166 13.5C12.5 13.9364 12.4999 14.4114 12.5 14.9102V18.0898C12.4999 18.9553 12.4991 19.749 12.5859 20.3945C12.6815 21.1053 12.9067 21.8566 13.5244 22.4746L13.5498 22.5H8C7.58579 22.5 7.25 22.1642 7.25 21.75C7.25 21.3358 7.58579 21 8 21H11.25V17H8C5.17157 17 3.75661 16.9998 2.87793 16.1211C2.30888 15.5518 2.07056 14.7576 2 13.5V13H12.5166V13.5Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M18 11C19.8856 11 20.8283 11.0002 21.4141 11.5859C21.9998 12.1717 22 13.1144 22 15V18C22 19.8856 21.9998 20.8283 21.4141 21.4141C20.8283 21.9998 19.8856 22 18 22C16.1144 22 15.1717 21.9998 14.5859 21.4141C14.0002 20.8283 14 19.8856 14 18V15C14 13.1144 14.0002 12.1717 14.5859 11.5859C15.1717 11.0002 16.1144 11 18 11ZM17 19.25C16.5858 19.25 16.25 19.5858 16.25 20C16.25 20.4142 16.5858 20.75 17 20.75H19C19.4142 20.75 19.75 20.4142 19.75 20C19.75 19.5858 19.4142 19.25 19 19.25H17Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.99997 2H14C17.7712 2 19.6568 2 20.8284 3.17157C22 4.34315 22 6.22876 22 10V10.1383C21.4916 9.80481 20.9315 9.65881 20.3944 9.5866C19.7488 9.4998 18.9551 9.49989 18.0895 9.49999H17.9105C17.0448 9.49989 16.2512 9.4998 15.6056 9.5866C14.8946 9.68219 14.1431 9.90708 13.5251 10.5251C12.9376 11.1127 12.7053 11.8207 12.6017 12.5V13H1.99997L2 12.5C1.99348 12.0494 1.99997 11.5516 1.99997 11V10C1.99997 6.22876 1.99997 4.34315 3.17154 3.17157C4.34311 2 6.22873 2 9.99997 2Z" fill="currentColor"/>''',
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
