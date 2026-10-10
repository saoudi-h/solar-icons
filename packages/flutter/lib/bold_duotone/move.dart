// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `move` icon in the boldDuotone style.
class MoveBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `move` icon in the boldDuotone style.
  const MoveBoldDuotoneIcon({
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
    name: 'move',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M4.46967 8.46967C4.76256 8.17678 5.23732 8.17678 5.53022 8.46967C5.82311 8.76256 5.82311 9.23732 5.53022 9.53022L3.06049 11.9999L5.53022 14.4697C5.82311 14.7626 5.82311 15.2373 5.53022 15.5302C5.23732 15.8231 4.76256 15.8231 4.46967 15.5302L1.46967 12.5302C1.17678 12.2373 1.17678 11.7626 1.46967 11.4697L4.46967 8.46967Z" fill="currentColor"/>
<path d="M19.5307 15.5302C19.2378 15.8231 18.7631 15.8231 18.4702 15.5302C18.1773 15.2373 18.1773 14.7626 18.4702 14.4697L20.9399 11.9999L18.4702 9.53022C18.1773 9.23732 18.1773 8.76256 18.4702 8.46967C18.7631 8.17678 19.2378 8.17678 19.5307 8.46967L22.5307 11.4697C22.8236 11.7626 22.8236 12.2373 22.5307 12.5302L19.5307 15.5302Z" fill="currentColor"/>
<path d="M15.5305 4.46943C15.8234 4.76232 15.8234 5.23708 15.5305 5.52997C15.2376 5.82287 14.7628 5.82287 14.4699 5.52997L12.0002 3.06025L9.53046 5.52997C9.23757 5.82287 8.76281 5.82287 8.46991 5.52997C8.17702 5.23708 8.17702 4.76232 8.46991 4.46943L11.4699 1.46943C11.7628 1.17653 12.2376 1.17653 12.5305 1.46943L15.5305 4.46943Z" fill="currentColor"/>
<path d="M8.46991 19.5305C8.17702 19.2376 8.17702 18.7628 8.46991 18.4699C8.76281 18.177 9.23757 18.177 9.53046 18.4699L12.0002 20.9396L14.4699 18.4699C14.7628 18.177 15.2376 18.177 15.5305 18.4699C15.8234 18.7628 15.8234 19.2376 15.5305 19.5305L12.5305 22.5305C12.2376 22.8234 11.7628 22.8234 11.4699 22.5305L8.46991 19.5305Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M8.99986 11.2497C9.41408 11.2497 9.75047 11.5861 9.75047 12.0003C9.7503 12.4143 9.41451 12.7501 9.00055 12.7502H1.99992C1.58596 12.7501 1.25017 12.4143 1.25 12.0003C1.25 11.5861 1.5864 11.2497 2.00061 11.2497H8.99986Z" fill="currentColor"/>
<path d="M15.0011 12.7503C14.5869 12.7503 14.2505 12.4139 14.2505 11.9997C14.2507 11.5857 14.5864 11.2499 15.0004 11.2498L22.001 11.2498C22.415 11.2499 22.7508 11.5857 22.751 11.9997C22.751 12.4139 22.4146 12.7503 22.0004 12.7503L15.0011 12.7503Z" fill="currentColor"/>
<path d="M12.7508 8.99937C12.7508 9.41359 12.4144 9.74998 12.0002 9.74998C11.5862 9.74981 11.2504 9.41403 11.2502 9.00006V1.99943C11.2504 1.58547 11.5862 1.24968 12.0002 1.24951C12.4144 1.24951 12.7508 1.58591 12.7508 2.00012V8.99937Z" fill="currentColor"/>
<path d="M11.2502 15.0006C11.2502 14.5864 11.5866 14.25 12.0008 14.25C12.4148 14.2502 12.7505 14.586 12.7507 14.9999L12.7507 22.0006C12.7505 22.4145 12.4148 22.7503 12.0008 22.7505C11.5866 22.7505 11.2502 22.4141 11.2502 21.9999L11.2502 15.0006Z" fill="currentColor"/>
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
