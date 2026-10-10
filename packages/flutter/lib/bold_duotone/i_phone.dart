// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `i-phone` icon in the boldDuotone style.
class IPhoneBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `i-phone` icon in the boldDuotone style.
  const IPhoneBoldDuotoneIcon({
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
    name: 'i-phone',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.25 18.9836C8.25 18.5671 8.58579 18.2295 9 18.2295H15C15.4142 18.2295 15.75 18.5671 15.75 18.9836C15.75 19.4001 15.4142 19.7377 15 19.7377H9C8.58579 19.7377 8.25 19.4001 8.25 18.9836Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 9.80145V13.8676C20 17.7013 20 19.6181 18.8284 20.809C17.6569 22 15.7712 22 12 22H12H12C8.22876 22 6.34314 22 5.17157 20.809C4 19.6181 4 17.7013 4 13.8676V9.80145C4 5.96782 4 4.051 5.17157 2.86005C5.54739 2.47801 5.99669 2.21852 6.55813 2.04228C6.91142 1.93137 7.28557 2.08933 7.5 2.39265L7.65377 2.62751C8.28829 3.59749 8.50937 3.93544 9.02215 4.25936C9.13195 4.32871 9.24604 4.39078 9.36371 4.44518C9.95547 4.71873 10.637 4.71873 12 4.71873C13.363 4.71873 14.0445 4.71873 14.6363 4.44518C14.754 4.39078 14.8681 4.32871 14.9778 4.25936C15.4906 3.93544 15.7117 3.59749 16.3462 2.62752L16.5 2.39265C16.6992 2.08835 17.0639 1.92644 17.4105 2.03256C17.9866 2.20895 18.4456 2.47093 18.8284 2.86005C20 4.051 20 5.96782 20 9.80145Z" fill="currentColor"/>''',
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
