// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-minus-rounded` icon in every style.
///
/// Prefer the static widgets (e.g. `UserMinusRoundedLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class UserMinusRoundedIcon extends StatelessWidget {
  /// Creates the `user-minus-rounded` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const UserMinusRoundedIcon({
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
    name: 'user-minus-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 15C18.1499 15 18.9747 15.0001 19.4873 15.5127C19.9999 16.0253 20 16.8501 20 18.5C20 20.1499 19.9999 20.9747 19.4873 21.4873C18.9747 21.9999 18.1499 22 16.5 22C14.8501 22 14.0253 21.9999 13.5127 21.4873C13.0001 20.9747 13 20.1499 13 18.5C13 16.8501 13.0001 16.0253 13.5127 15.5127C14.0253 15.0001 14.8501 15 16.5 15ZM14.9443 17.917C14.6222 17.9171 14.3613 18.1779 14.3613 18.5C14.3613 18.8221 14.6222 19.0829 14.9443 19.083H18.0557C18.3778 19.0829 18.6387 18.8221 18.6387 18.5C18.6387 18.1779 18.3778 17.9171 18.0557 17.917H14.9443Z" fill="currentColor"/>
<path d="M12 13C13.24 13 14.4049 13.1846 15.415 13.5078C15.0415 13.5166 14.6918 13.5352 14.3799 13.5771C13.737 13.6636 13.0336 13.8707 12.4521 14.4521C11.8707 15.0336 11.6636 15.737 11.5771 16.3799C11.4995 16.9576 11.4999 17.6635 11.5 18.4141V18.5859C11.4999 19.3365 11.4995 20.0424 11.5771 20.6201C11.5937 20.7432 11.6154 20.8688 11.6426 20.9951C7.94288 20.8887 5 19.1406 5 17C5 14.7909 8.13401 13 12 13Z" fill="currentColor"/>
<path d="M12 2C14.2091 2 16 3.79086 16 6C16 8.20914 14.2091 10 12 10C9.79086 10 8 8.20914 8 6C8 3.79086 9.79086 2 12 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'user-minus-rounded',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 15C18.1499 15 18.9747 15.0001 19.4873 15.5127C19.9999 16.0253 20 16.8501 20 18.5C20 20.1499 19.9999 20.9747 19.4873 21.4873C18.9747 21.9999 18.1499 22 16.5 22C14.8501 22 14.0253 21.9999 13.5127 21.4873C13.0001 20.9747 13 20.1499 13 18.5C13 16.8501 13.0001 16.0253 13.5127 15.5127C14.0253 15.0001 14.8501 15 16.5 15ZM14.9443 17.917C14.6222 17.9171 14.3613 18.1779 14.3613 18.5C14.3613 18.8221 14.6222 19.0829 14.9443 19.083H18.0557C18.3778 19.0829 18.6387 18.8221 18.6387 18.5C18.6387 18.1779 18.3778 17.9171 18.0557 17.917H14.9443Z" fill="currentColor"/>
<path d="M12 2C14.2091 2 16 3.79086 16 6C16 8.20914 14.2091 10 12 10C9.79086 10 8 8.20914 8 6C8 3.79086 9.79086 2 12 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.0947 15.0312C17.6699 15 17.1487 15 16.5 15C14.8501 15 14.0251 15 13.5126 15.5126C13 16.0251 13 16.8501 13 18.5C13 19.6663 13 20.4204 13.1811 20.9433C12.7971 20.9806 12.4025 21 12 21C8.13401 21 5 19.2091 5 17C5 14.7909 8.13401 13 12 13C14.6134 13 16.8924 13.8184 18.0947 15.0312Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'user-minus-rounded',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.4141 18.5H18.9999H17.5857" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 13C14.6083 13 16.8834 13.8152 18.0877 15.024M15.5841 20.4366C14.5358 20.7944 13.3099 21 12 21C8.13401 21 5 19.2091 5 17C5 15.6407 6.18652 14.4398 8 13.717" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'user-minus-rounded',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 18L18 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M21 18C21 20.2091 19.2091 22 17 22C15.8869 22 14.8799 21.5453 14.1548 20.8115C13.4408 20.089 13 19.096 13 18C13 15.8976 14.6221 14.174 16.683 14.0124C16.7876 14.0042 16.8933 14 17 14C19.2091 14 21 15.7909 21 18Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.683 14.0124C15.4431 13.3838 13.8093 13.0019 12.019 13.0019C8.14253 13.0019 5 14.7924 5 17.001C5 19.2096 8.14253 21 12.019 21C12.7637 21 13.4813 20.9339 14.1548 20.8115" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'user-minus-rounded',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21 18C21 20.2091 19.2091 22 17 22C15.8869 22 14.8799 21.5453 14.1548 20.8115C13.4408 20.089 13 19.096 13 18C13 15.8976 14.6221 14.174 16.683 14.0124C16.7876 14.0042 16.8933 14 17 14C19.2091 14 21 15.7909 21 18Z" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 18L18 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.683 14.0124C15.4431 13.3838 13.8093 13.0019 12.019 13.0019C8.14253 13.0019 5 14.7924 5 17.001C5 19.2096 8.14253 21 12.019 21C12.7637 21 13.4813 20.9339 14.1548 20.8115" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'user-minus-rounded',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C9.37665 1.25 7.25 3.37665 7.25 6C7.25 8.62335 9.37665 10.75 12 10.75C14.6234 10.75 16.75 8.62335 16.75 6C16.75 3.37665 14.6234 1.25 12 1.25ZM8.75 6C8.75 4.20507 10.2051 2.75 12 2.75C13.7949 2.75 15.25 4.20507 15.25 6C15.25 7.79493 13.7949 9.25 12 9.25C10.2051 9.25 8.75 7.79493 8.75 6Z" fill="currentColor"/>
<path d="M15.25 18C15.25 17.5858 15.5858 17.25 16 17.25H18C18.4142 17.25 18.75 17.5858 18.75 18C18.75 18.4142 18.4142 18.75 18 18.75H16C15.5858 18.75 15.25 18.4142 15.25 18Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.9107 21.6083C13.2991 21.7009 12.6587 21.75 12 21.75C9.96067 21.75 8.07752 21.2792 6.67815 20.4796C5.3 19.6921 4.25 18.4899 4.25 17C4.25 15.5101 5.3 14.3079 6.67815 13.5204C8.07752 12.7208 9.96067 12.25 12 12.25C13.8045 12.25 15.4825 12.6184 16.8117 13.2537C16.8742 13.2512 16.937 13.25 17 13.25C19.6234 13.25 21.75 15.3766 21.75 18C21.75 20.6234 19.6234 22.75 17 22.75C15.8204 22.75 14.7413 22.32 13.9107 21.6083ZM13.75 18C13.75 16.2051 15.2051 14.75 17 14.75C18.7949 14.75 20.25 16.2051 20.25 18C20.25 19.7949 18.7949 21.25 17 21.25C15.2051 21.25 13.75 19.7949 13.75 18ZM14.4176 14.0127C13.113 14.8593 12.25 16.3289 12.25 18C12.25 18.8029 12.4492 19.5593 12.8009 20.2224C12.5388 20.2406 12.2715 20.25 12 20.25C10.1733 20.25 8.55649 19.8253 7.42236 19.1772C6.26701 18.517 5.75 17.7193 5.75 17C5.75 16.2807 6.26701 15.483 7.42236 14.8228C8.55649 14.1747 10.1733 13.75 12 13.75C12.8611 13.75 13.6767 13.8444 14.4176 14.0127Z" fill="currentColor"/>''',
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
