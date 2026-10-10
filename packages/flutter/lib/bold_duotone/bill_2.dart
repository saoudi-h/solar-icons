// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bill-2` icon in the boldDuotone style.
class Bill2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bill-2` icon in the boldDuotone style.
  const Bill2BoldDuotoneIcon({
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
    name: 'bill-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15.5 13.25C15.9142 13.25 16.25 13.5858 16.25 14C16.25 14.4142 15.9142 14.75 15.5 14.75H8.5C8.08579 14.75 7.75 14.4142 7.75 14C7.75 13.5858 8.08579 13.25 8.5 13.25H15.5Z" fill="currentColor"/>
<path d="M15.5 8.25C15.9142 8.25 16.25 8.58579 16.25 9C16.25 9.41421 15.9142 9.75 15.5 9.75H8.5C8.08579 9.75 7.75 9.41421 7.75 9C7.75 8.58579 8.08579 8.25 8.5 8.25H15.5Z" fill="currentColor"/>
<path d="M22 2.25C22.4142 2.25 22.75 2.58579 22.75 3C22.75 3.41421 22.4142 3.75 22 3.75H2C1.58579 3.75 1.25 3.41421 1.25 3C1.25 2.58579 1.58579 2.25 2 2.25H22Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 3.75V13.2774C4 14.6175 4 15.2875 4.2681 15.8783C4.5362 16.4692 5.04046 16.9104 6.04896 17.7928L8.04897 19.5429C9.93152 21.1901 10.8728 22.0137 12 22.0137C13.1272 22.0137 14.0685 21.1901 15.951 19.5429L17.951 17.7929C18.9595 16.9104 19.4638 16.4692 19.7319 15.8783C20 15.2875 20 14.6175 20 13.2774V3.75H4Z" fill="currentColor"/>''',
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
