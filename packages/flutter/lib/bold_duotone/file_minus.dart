// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `file-minus` icon in the boldDuotone style.
class FileMinusBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `file-minus` icon in the boldDuotone style.
  const FileMinusBoldDuotoneIcon({
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
    name: 'file-minus',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.0293 14.25C10.4435 14.25 10.7793 14.5858 10.7793 15C10.7793 15.4142 10.4435 15.75 10.0293 15.75H6.0293C5.61508 15.75 5.2793 15.4142 5.2793 15C5.2793 14.5858 5.61508 14.25 6.0293 14.25H10.0293Z" fill="currentColor"/>
<path d="M11.5 2.00586C12.0265 2.01726 12.4003 2.05003 12.7842 2.14453C12.9404 2.18298 13.1398 2.24407 13.291 2.29883C13.8614 2.50535 14.2774 2.78317 15.1094 3.33887C16.0779 3.98573 17.1891 4.77692 18 5.5C18.9109 6.31238 19.9537 7.49396 20.7461 8.44238C20.8737 8.5951 20.9379 8.67162 21.0312 8.79883C21.5612 9.52142 21.9327 10.5461 21.9893 11.4404C21.9992 11.5979 22 11.7325 22 12H21.9844C21.9781 11.8216 21.9694 11.6554 21.957 11.5H17.9043C16.8074 11.5001 15.838 11.4996 15.0566 11.3945C14.2095 11.2806 13.3622 11.0194 12.6709 10.3281C11.9797 9.63687 11.7184 8.78947 11.6045 7.94238C11.4995 7.16097 11.4999 6.1916 11.5 5.09473L11.5088 2.25977L11.5 2.00586Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path fill-rule="evenodd" clip-rule="evenodd" d="M14 22H10C6.22876 22 4.34315 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14V10C2 6.22876 2 4.34315 3.17157 3.17157C4.34315 2 6.23869 2 10.0298 2C10.6358 2 11.1214 2 11.53 2.01666C11.5166 2.09659 11.5095 2.17813 11.5092 2.26057L11.5 5.09497C11.4999 6.19207 11.4998 7.16164 11.6049 7.94316C11.7188 8.79028 11.9803 9.63726 12.6716 10.3285C13.3628 11.0198 14.2098 11.2813 15.0569 11.3952C15.8385 11.5003 16.808 11.5002 17.9051 11.5001L18 11.5001H21.9574C22 12.0344 22 12.6901 22 13.5629V14C22 17.7712 22 19.6569 20.8284 20.8284C19.6569 22 17.7712 22 14 22Z" fill="currentColor"/>
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
