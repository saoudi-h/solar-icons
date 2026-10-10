// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `volleyball` icon in the bold style.
class VolleyballBoldIcon extends StatelessWidget {
  /// Creates the `volleyball` icon in the bold style.
  const VolleyballBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.0171 12.9934C13.94 13.039 15.7856 13.5932 17.38 14.5629C14.4913 17.5983 10.3915 19.703 6.21502 20.1577C5.33561 19.533 4.56158 18.7696 3.92479 17.8994C7.00231 17.4192 9.81188 15.7992 11.756 13.3257L12.0171 12.9934Z" fill="currentColor"/>
<path d="M20.4402 17.3653C18.6653 20.1517 15.5485 21.9999 12 21.9999C10.7178 21.9999 9.49188 21.7586 8.36531 21.3188C12.2683 20.4477 15.9424 18.3132 18.6152 15.439C19.2956 15.9979 19.91 16.6432 20.4402 17.3653Z" fill="currentColor"/>
<path d="M21.6241 11.3581L21.6261 11.3601L21.9965 11.7327C21.9988 11.8215 22 11.9106 22 11.9999C22 13.3876 21.7173 14.7093 21.2065 15.9105C18.9642 13.2085 15.6375 11.5871 12.0812 11.4946C11.2524 10.0502 10.8302 8.43473 10.828 6.81111C14.8825 6.8899 18.7527 8.51769 21.6241 11.3581Z" fill="currentColor"/>
<path d="M10.9458 5.31334C11.0638 4.5752 11.2705 3.84586 11.5673 3.14096L12.0477 2C16.6314 2.02142 20.4864 5.12669 21.6445 9.34767C18.6556 6.83888 14.881 5.4099 10.9458 5.31334Z" fill="currentColor"/>
<path d="M10.5766 12.3988C9.64853 13.5796 8.49484 14.5397 7.19986 15.2379C5.62198 11.4338 5.51513 7.26247 6.87932 3.40866C7.93127 2.7803 9.1083 2.33968 10.3642 2.13303L10.1849 2.55887C8.86607 5.69099 9.08193 9.23954 10.7467 12.1824L10.5766 12.3988Z" fill="currentColor"/>
<path d="M4.8586 4.99986C3.09033 6.80361 2 9.27442 2 11.9999C2 13.6173 2.38398 15.145 3.06576 16.4969C4.01958 16.4039 4.94937 16.1873 5.83307 15.8577C4.37799 12.3757 4.05507 8.60441 4.86431 4.99403L4.8586 4.99986Z" fill="currentColor"/>''',
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
