// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `phone-rounded` icon in the boldDuotone style.
class PhoneRoundedBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `phone-rounded` icon in the boldDuotone style.
  const PhoneRoundedBoldDuotoneIcon({
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
    name: 'phone-rounded',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.6866 6.4791L10.0376 5.31617C9.15317 3.73144 6.93076 3.54428 5.53781 4.93723C4.7008 5.77423 4.04952 6.7996 4.00655 7.93309C3.95086 9.40215 4.22428 11.6609 5.83644 14.1061L10.1147 9.8278C11.0372 8.90533 11.2723 7.52858 10.6866 6.4791ZM14.1722 13.8853L9.89393 18.1636C12.3391 19.7757 14.5979 20.0491 16.0669 19.9934C17.2004 19.9505 18.2258 19.2992 19.0628 18.4622C20.4557 17.0692 20.2686 14.8468 18.6838 13.9624L17.5209 13.3134C16.4714 12.7277 15.0947 12.9628 14.1722 13.8853Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.0245 12.9758C8.99576 10.9471 10.1147 9.82812 10.1147 9.82812L5.83643 14.1064C6.31827 14.8372 6.91971 15.5846 7.66769 16.3326C8.41567 17.0806 9.16311 17.682 9.89392 18.1639L14.1722 13.8856C14.1722 13.8856 13.0532 15.0045 11.0245 12.9758Z" fill="currentColor"/>''',
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
