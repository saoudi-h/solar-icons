// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chef-hat-heart` icon in every style.
///
/// Prefer the static widgets (e.g. `ChefHatHeartLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ChefHatHeartIcon extends StatelessWidget {
  /// Creates the `chef-hat-heart` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ChefHatHeartIcon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

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

  static const bold = SolarIconData(
    name: 'chef-hat-heart',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2 10C2 7.23858 4.23858 5 7 5C7.25052 5 7.49673 5.01842 7.73736 5.05399C8.33961 3.27806 10.0206 2 12 2C13.9794 2 15.6604 3.27806 16.2626 5.05399C16.5033 5.01842 16.7495 5 17 5C19.7614 5 22 7.23858 22 10C22 12.0503 20.7659 13.8124 19 14.584L19 17.25H5V14.584C3.2341 13.8124 2 12.0503 2 10ZM11.0429 13.6693C10.1649 13.0251 9 11.9849 9 11.0004C9 9.32721 10.65 8.7025 12 9.99506C13.35 8.7025 15 9.32721 15 11.0004C15 11.9849 13.8352 13.0251 12.9571 13.6693C12.5374 13.9773 12.3275 14.1313 12 14.1313C11.6725 14.1313 11.4626 13.9773 11.0429 13.6693Z" fill="currentColor"/>
<path d="M5.58579 21.4142C5.08343 20.9119 5.01188 20.1469 5.00169 18.75H18.9983C18.9881 20.1469 18.9166 20.9119 18.4142 21.4142C17.8284 22 16.8856 22 15 22H9C7.11438 22 6.17157 22 5.58579 21.4142Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'chef-hat-heart',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M18.999 18C18.9888 19.3969 18.9164 20.9117 18.4141 21.414C17.8283 21.9997 16.8855 22 15 22H9C7.11456 22 6.1717 21.9998 5.58594 21.414C5.0837 20.9115 5.01214 19.3968 5.00195 18H18.999Z" fill="currentColor"/>
<path d="M12 9.99508C13.3498 8.70263 14.9997 9.32706 15 11C15 11.9844 13.835 13.0247 12.957 13.6689C12.5373 13.9769 12.3275 14.1308 12 14.1308C11.6725 14.1308 11.4627 13.9769 11.043 13.6689C10.165 13.0247 9 11.9843 9 11C9.00029 9.32706 10.6502 8.70263 12 9.99508Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 10C2 7.23858 4.23858 5 7 5C7.25052 5 7.49673 5.01842 7.73736 5.05399C8.33961 3.27806 10.0206 2 12 2C13.9794 2 15.6604 3.27806 16.2626 5.05399C16.5033 5.01842 16.7495 5 17 5C19.7614 5 22 7.23858 22 10C22 12.0503 20.7659 13.8124 19 14.584L19 18H5V14.584C3.2341 13.8124 2 12.0503 2 10Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'chef-hat-heart',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 9.99481C10.65 8.70226 9 9.32696 9 11.0002C9 11.9846 10.1649 13.0248 11.0429 13.669C11.4626 13.977 11.6725 14.131 12 14.131" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 14.131C12.3275 14.131 12.5374 13.977 12.9571 13.669C13.8352 13.0248 15 11.9846 15 11.0002C15 9.32696 13.35 8.70226 12 9.99481" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 18H13M19 18H17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 14.584V18C5 19.8856 5 20.8285 5.58579 21.4142C6.17157 22 7.11438 22 9 22H10" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 14.584L19 18C19 19.8856 19 20.8285 18.4142 21.4142C17.8284 22 16.8856 22 15 22H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 14.584C3.2341 13.8124 2 12.0503 2 10C2 7.23858 4.23858 5 7 5C7.25052 5 7.49673 5.01842 7.73736 5.05399" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.2627 5.05399C16.5033 5.01842 16.7495 5 17.0001 5C19.7615 5 22.0001 7.23858 22.0001 10C22.0001 12.0503 20.766 13.8124 19.0001 14.584" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 7V6.5C16.5 5.99416 16.4165 5.50782 16.2626 5.05399C15.6604 3.27806 13.9794 2 12 2C10.0206 2 8.33962 3.27806 7.73736 5.05399C7.58346 5.50782 7.5 5.99416 7.5 6.5V7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'chef-hat-heart',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 9.99481C10.65 8.70226 9 9.32696 9 11.0002C9 11.9846 10.1649 13.0248 11.0429 13.669C11.4626 13.977 11.6725 14.131 12 14.131" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 14.131C12.3275 14.131 12.5374 13.977 12.9571 13.669C13.8352 13.0248 15 11.9846 15 11.0002C15 9.32696 13.35 8.70226 12 9.99481" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 14.584C3.2341 13.8124 2 12.0503 2 10C2 7.23858 4.23858 5 7 5C7.25052 5 7.49673 5.01842 7.73736 5.05399" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 14.584V18C19 19.8856 19 20.8285 18.4142 21.4142C17.8284 22 16.8856 22 15 22H9C7.11438 22 6.17157 22 5.58579 21.4142C5 20.8285 5 19.8856 5 18V14.584" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.2627 5.05399C16.5033 5.01842 16.7495 5 17.0001 5C19.7615 5 22.0001 7.23858 22.0001 10C22.0001 12.0503 20.766 13.8124 19.0001 14.584" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 7V6.5C16.5 5.99416 16.4165 5.50782 16.2626 5.05399C15.6604 3.27806 13.9794 2 12 2C10.0206 2 8.33962 3.27806 7.73736 5.05399C7.58346 5.50782 7.5 5.99416 7.5 6.5V7" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 18H19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'chef-hat-heart',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5 14.584C3.2341 13.8124 2 12.0503 2 10C2 7.23858 4.23858 5 7 5C7.25052 5 7.49673 5.01842 7.73736 5.05399" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 14.584V18C19 19.8856 19 20.8285 18.4142 21.4142C17.8284 22 16.8856 22 15 22H9C7.11438 22 6.17157 22 5.58579 21.4142C5 20.8285 5 19.8856 5 18V14.584" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.2627 5.05399C16.5033 5.01842 16.7495 5 17.0001 5C19.7615 5 22.0001 7.23858 22.0001 10C22.0001 12.0503 20.766 13.8124 19.0001 14.584" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.5 7V6.5C16.5 5.99416 16.4165 5.50782 16.2626 5.05399C15.6604 3.27806 13.9794 2 12 2C10.0206 2 8.33962 3.27806 7.73736 5.05399C7.58346 5.50782 7.5 5.99416 7.5 6.5V7" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 11.0002C9 11.9846 10.1649 13.0248 11.0429 13.669C11.4626 13.977 11.6725 14.131 12 14.131C12.3275 14.131 12.5374 13.977 12.9571 13.669C13.8352 13.0248 15 11.9846 15 11.0002C15 9.32696 13.35 8.70226 12 9.99481C10.65 8.70226 9 9.32696 9 11.0002Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M5 18H19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'chef-hat-heart',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.25285 4.25547C8.09403 2.47951 9.90263 1.25 12 1.25C14.0974 1.25 15.906 2.47951 16.7471 4.25547C16.831 4.25184 16.9153 4.25 17 4.25C20.1756 4.25 22.75 6.82436 22.75 10C22.75 12.1806 21.5363 14.0762 19.75 15.0508L19.75 18.052C19.75 18.9505 19.7501 19.6997 19.6701 20.2945C19.5857 20.9223 19.4 21.4891 18.9445 21.9445C18.4891 22.4 17.9223 22.5857 17.2945 22.6701C16.6997 22.7501 15.9505 22.75 15.052 22.75H8.94801C8.04952 22.75 7.3003 22.7501 6.70552 22.6701C6.07773 22.5857 5.51093 22.4 5.05546 21.9445C4.59999 21.4891 4.41432 20.9223 4.32991 20.2945C4.24994 19.6997 4.24997 18.9505 4.25 18.052L4.25 15.0508C2.46371 14.0762 1.25 12.1806 1.25 10C1.25 6.82436 3.82436 4.25 7 4.25C7.08469 4.25 7.16899 4.25184 7.25285 4.25547ZM6.80262 5.7545C4.54704 5.85762 2.75 7.71895 2.75 10C2.75 11.7416 3.79769 13.2402 5.30028 13.8967C5.57345 14.016 5.75 14.2859 5.75 14.584V17.25H18.25L18.25 14.584C18.25 14.2859 18.4265 14.016 18.6997 13.8967C20.2023 13.2402 21.25 11.7416 21.25 10C21.25 7.71895 19.453 5.85761 17.1974 5.7545C17.2321 5.99825 17.25 6.24718 17.25 6.5V7C17.25 7.41421 16.9142 7.75 16.5 7.75C16.0858 7.75 15.75 7.41421 15.75 7V6.5C15.75 6.07715 15.6803 5.67212 15.5524 5.29486C15.0502 3.81402 13.6484 2.75 12 2.75C10.3516 2.75 8.94981 3.81402 8.44763 5.29486C8.3197 5.67212 8.25 6.07715 8.25 6.5V7C8.25 7.41421 7.91421 7.75 7.5 7.75C7.08579 7.75 6.75 7.41421 6.75 7V6.5C6.75 6.24717 6.76792 5.99825 6.80262 5.7545ZM18.2482 18.75H5.75181C5.75604 19.3194 5.77008 19.7491 5.81654 20.0946C5.87858 20.5561 5.9858 20.7536 6.11612 20.8839C6.24643 21.0142 6.44393 21.1214 6.90539 21.1835C7.38843 21.2484 8.03599 21.25 9 21.25H15C15.964 21.25 16.6116 21.2484 17.0946 21.1835C17.5561 21.1214 17.7536 21.0142 17.8839 20.8839C18.0142 20.7536 18.1214 20.5561 18.1835 20.0946C18.2299 19.7491 18.244 19.3194 18.2482 18.75ZM14.2543 8.67761C15.1875 9.00474 15.75 9.90305 15.75 11.0002C15.75 11.7701 15.3088 12.4514 14.8751 12.9529C14.4218 13.477 13.8609 13.9362 13.4008 14.2738C13.3775 14.2909 13.354 14.3082 13.3303 14.3258C12.9791 14.5855 12.5793 14.8811 12 14.8811C11.4207 14.8811 11.0209 14.5855 10.6697 14.3258C10.646 14.3082 10.6225 14.2909 10.5992 14.2738C10.1391 13.9362 9.57819 13.477 9.1249 12.9528C8.6912 12.4514 8.25 11.7701 8.25 11.0002C8.25 9.90306 8.81245 9.00475 9.74566 8.67761C10.475 8.42194 11.2837 8.56627 12 9.03782C12.7163 8.56627 13.525 8.42194 14.2543 8.67761ZM13.7581 10.0932C13.5078 10.0054 13.0442 10.0334 12.5187 10.5366C12.2287 10.8143 11.7713 10.8143 11.4813 10.5366C10.9558 10.0334 10.4922 10.0054 10.2419 10.0932C10.0126 10.1735 9.75 10.4242 9.75 11.0002C9.75 11.2148 9.89122 11.5458 10.2595 11.9716C10.6081 12.3748 11.0686 12.7577 11.4865 13.0644C11.7128 13.2304 11.8202 13.3069 11.9061 13.3523C11.9605 13.381 11.9756 13.3811 12 13.3811C12.0244 13.3811 12.0395 13.381 12.0939 13.3523C12.1798 13.3069 12.2872 13.2304 12.5135 13.0644C12.9314 12.7577 13.3919 12.3748 13.7405 11.9716C14.1088 11.5459 14.25 11.2148 14.25 11.0002C14.25 10.4242 13.9874 10.1735 13.7581 10.0932Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

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
