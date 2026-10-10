// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `webcam` icon in the boldDuotone style.
class WebcamBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `webcam` icon in the boldDuotone style.
  const WebcamBoldDuotoneIcon({
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
    name: 'webcam',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 6.25C14.0711 6.25 15.75 7.92893 15.75 10C15.75 12.0711 14.0711 13.75 12 13.75C9.92893 13.75 8.25 12.0711 8.25 10C8.25 7.92893 9.92893 6.25 12 6.25ZM12 7.75C10.7574 7.75 9.75 8.75736 9.75 10C9.75 11.2426 10.7574 12.25 12 12.25C13.2426 12.25 14.25 11.2426 14.25 10C14.25 8.75736 13.2426 7.75 12 7.75Z" fill="currentColor"/>
<path d="M12 3.75098C12.4142 3.75098 12.75 4.08676 12.75 4.50098C12.75 4.91519 12.4142 5.25098 12 5.25098C11.5858 5.25098 11.25 4.91519 11.25 4.50098C11.25 4.08676 11.5858 3.75098 12 3.75098Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.9348 2.00026C16.3528 2.03592 19.9634 5.64578 19.9993 10.0637C20.0331 14.2516 16.8426 17.6591 12.7473 17.9729C12.7477 17.9827 12.7493 17.9924 12.7493 18.0022V21.2493H15.9993C16.4134 21.2493 16.7491 21.5852 16.7493 21.9993C16.7493 22.4135 16.4135 22.7493 15.9993 22.7493H7.99929C7.5852 22.7491 7.24929 22.4134 7.24929 21.9993C7.24943 21.5853 7.58529 21.2494 7.99929 21.2493H11.2493V18.0022C11.2493 17.9852 11.2501 17.9682 11.2512 17.9514C7.21148 17.5117 4.0337 14.0787 4.00026 9.93483C3.9647 5.51683 7.51683 1.9647 11.9348 2.00026Z" fill="currentColor"/>''',
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
