// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `library` icon in the boldDuotone style.
class LibraryBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `library` icon in the boldDuotone style.
  const LibraryBoldDuotoneIcon({
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
    name: 'library',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.67239 7.54199H15.3276C18.7024 7.54199 20.3898 7.54199 21.3377 8.52882C22.2855 9.51565 22.0625 11.0403 21.6165 14.0895L21.1935 16.9811C20.8437 19.3723 20.6689 20.5679 19.7717 21.2839C18.8745 21.9999 17.5512 21.9999 14.9046 21.9999H9.09536C6.44881 21.9999 5.12553 21.9999 4.22834 21.2839C3.33115 20.5679 3.15626 19.3723 2.80648 16.9811L2.38351 14.0895C1.93748 11.0403 1.71447 9.51565 2.66232 8.52882C3.61017 7.54199 5.29758 7.54199 8.67239 7.54199ZM8 18.0001C8 17.5859 8.3731 17.2501 8.83333 17.2501H15.1667C15.6269 17.2501 16 17.5859 16 18.0001C16 18.4143 15.6269 18.7501 15.1667 18.7501H8.83333C8.3731 18.7501 8 18.4143 8 18.0001Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M17.8618 4.72266C19.2524 4.72267 20.3924 5.56273 20.7729 6.67676C20.7808 6.69984 20.7892 6.72279 20.7964 6.7461C20.3982 6.62553 19.9834 6.54694 19.564 6.49317C18.4837 6.35469 17.1185 6.35539 15.5327 6.35547H8.64014C7.05435 6.35539 5.68918 6.35472 4.60889 6.49317C4.18946 6.54694 3.77458 6.62555 3.37646 6.7461C3.38366 6.72289 3.39108 6.69975 3.39893 6.67676C3.77945 5.56272 4.92041 4.72266 6.31104 4.72266H17.8618Z" fill="currentColor"/>
<path d="M15.4897 2C15.7222 1.99995 15.9013 2.00039 16.0571 2.01563C17.1646 2.12414 18.071 2.78961 18.4556 3.68653H5.54443C5.929 2.78944 6.83612 2.12399 7.94385 2.01563C8.09959 2.00041 8.27791 1.99995 8.51025 2H15.4897Z" fill="currentColor"/>
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
