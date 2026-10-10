// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-hand-up` icon in the boldDuotone style.
class UserHandUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `user-hand-up` icon in the boldDuotone style.
  const UserHandUpBoldDuotoneIcon({
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
    name: 'user-hand-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M1.81839 5.27246C2.22022 5.17204 2.62712 5.41653 2.72757 5.81836L3.10941 7.3457C3.71923 9.78497 5.64154 11.6764 8.085 12.25H16C18.091 12.25 19.8513 13.815 20.0957 15.8916L20.7452 21.4121C20.7935 21.8235 20.4993 22.1967 20.0879 22.2451C19.6766 22.2935 19.3034 21.9992 19.2549 21.5879L18.6055 16.0674C18.4501 14.7461 17.3304 13.75 16 13.75H7.918L7.83793 13.7324C4.80276 13.0579 2.40847 10.7263 1.65433 7.70996L1.2725 6.18164C1.17221 5.77988 1.41664 5.3729 1.81839 5.27246Z" fill="currentColor"/>
<path d="M12 2C14.2092 2 16 3.79086 16 6C16 8.20914 14.2092 10 12 10C9.7909 10 8.00004 8.20914 8.00004 6C8.00004 3.79086 9.7909 2 12 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M8 13.75V18C8 19.8856 8 20.8284 8.58579 21.4142C9.17157 22 10.1144 22 12 22C13.8856 22 14.8284 22 15.4142 21.4142C16 20.8284 16 19.8856 16 18V13.75H8Z" fill="currentColor"/>''',
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
