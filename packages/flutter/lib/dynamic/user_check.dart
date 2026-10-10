// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-check` icon in every style.
///
/// Prefer the static widgets (e.g. `UserCheckLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class UserCheckIcon extends StatelessWidget {
  /// Creates the `user-check` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const UserCheckIcon({
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
    name: 'user-check',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 13C13.326 13 14.5766 13.1817 15.6777 13.5029C15.2048 13.5087 14.764 13.5255 14.3799 13.5771C13.737 13.6636 13.0336 13.8707 12.4521 14.4521C11.8707 15.0336 11.6636 15.737 11.5771 16.3799C11.4995 16.9576 11.4999 17.6635 11.5 18.4141V18.5859C11.4999 19.3365 11.4995 20.0424 11.5771 20.6201C11.6378 21.0712 11.7584 21.5523 12.0254 22C12.0171 22 12.0083 22 12 22C4 22 4 19.9853 4 17.5C4 15.0147 7.58172 13 12 13Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 15C18.1499 15 18.9747 15.0001 19.4873 15.5127C19.9999 16.0253 20 16.8501 20 18.5C20 20.1499 19.9999 20.9747 19.4873 21.4873C18.9747 21.9999 18.1499 22 16.5 22C14.8501 22 14.0253 21.9999 13.5127 21.4873C13.0001 20.9747 13 20.1499 13 18.5C13 16.8501 13.0001 16.0253 13.5127 15.5127C14.0253 15.0001 14.8501 15 16.5 15ZM18.4678 16.9209C18.24 16.6933 17.8713 16.6933 17.6436 16.9209L15.7227 18.8418L15.3564 18.4766C15.1286 18.2489 14.76 18.2489 14.5322 18.4766C14.3044 18.7044 14.3044 19.074 14.5322 19.3018L15.3096 20.0791C15.5374 20.3069 15.907 20.3069 16.1348 20.0791L18.4678 17.7461C18.6956 17.5183 18.6956 17.1487 18.4678 16.9209Z" fill="currentColor"/>
<path d="M12 2C14.2091 2 16 3.79086 16 6C16 8.20914 14.2091 10 12 10C9.79086 10 8 8.20914 8 6C8 3.79086 9.79086 2 12 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'user-check',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 15C18.1499 15 18.9747 15.0001 19.4873 15.5127C19.9999 16.0253 20 16.8501 20 18.5C20 20.1499 19.9999 20.9747 19.4873 21.4873C18.9747 21.9999 18.1499 22 16.5 22C14.8501 22 14.0253 21.9999 13.5127 21.4873C13.0001 20.9747 13 20.1499 13 18.5C13 16.8501 13.0001 16.0253 13.5127 15.5127C14.0253 15.0001 14.8501 15 16.5 15ZM18.4678 16.9209C18.24 16.6933 17.8713 16.6933 17.6436 16.9209L15.7227 18.8418L15.3564 18.4766C15.1286 18.2489 14.76 18.2489 14.5322 18.4766C14.3044 18.7044 14.3044 19.074 14.5322 19.3018L15.3096 20.0791C15.5374 20.3069 15.907 20.3069 16.1348 20.0791L18.4678 17.7461C18.6956 17.5183 18.6956 17.1487 18.4678 16.9209Z" fill="currentColor"/>
<path d="M12 2C14.2091 2 16 3.79086 16 6C16 8.20914 14.2091 10 12 10C9.79086 10 8 8.20914 8 6C8 3.79086 9.79086 2 12 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.4774 21.9208C13.7513 21.9728 12.9296 22 12 22C4 22 4 19.9853 4 17.5C4 15.0147 7.58172 13 12 13C14.8806 13 17.4056 13.8564 18.8142 15.1412C18.298 15 17.5737 15 16.5 15C14.8501 15 14.0251 15 13.5126 15.5126C13 16.0251 13 16.8501 13 18.5C13 20.1499 13 20.9749 13.5126 21.4874C13.7501 21.725 14.0547 21.8524 14.4774 21.9208Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'user-check',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="11" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 10.3C17.5207 10.7686 17.8126 11.0314 18.3333 11.5L21 8.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.9975 18C19 17.8358 19 17.669 19 17.5C19 15.0147 15.4183 13 11 13C6.58172 13 3 15.0147 3 17.5C3 19.9853 3 22 11 22C13.231 22 14.8398 21.8433 16 21.5634" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'user-check',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.6665 16L17.5 17L19.3332 15.1111" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 16C22 18.2091 20.2091 20 18 20C15.7909 20 14 18.2091 14 16C14 13.7909 15.7909 12 18 12C20.2091 12 22 13.7909 22 16Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.02 13.3317C14.0882 13.1178 13.0685 13 12 13C7.58172 13 4 15.0147 4 17.5C4 19.9853 4 22 12 22C17.5794 22 19.2676 21.02 19.7784 19.5839" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'user-check',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.6665 16L17.5 17L19.3332 15.1111" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 16C22 18.2091 20.2091 20 18 20C15.7909 20 14 18.2091 14 16C14 13.7909 15.7909 12 18 12C20.2091 12 22 13.7909 22 16Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.02 13.3317C14.0882 13.1178 13.0685 13 12 13C7.58172 13 4 15.0147 4 17.5C4 19.9853 4 22 12 22C17.5794 22 19.2676 21.02 19.7784 19.5839" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'user-check',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.0001 1.25C9.37678 1.25 7.25013 3.37665 7.25013 6C7.25013 8.62335 9.37678 10.75 12.0001 10.75C14.6235 10.75 16.7501 8.62335 16.7501 6C16.7501 3.37665 14.6235 1.25 12.0001 1.25ZM8.75013 6C8.75013 4.20507 10.2052 2.75 12.0001 2.75C13.7951 2.75 15.2501 4.20507 15.2501 6C15.2501 7.79493 13.7951 9.25 12.0001 9.25C10.2052 9.25 8.75013 7.79493 8.75013 6Z" fill="currentColor"/>
<path d="M19.8556 14.5729C20.1529 14.8614 20.16 15.3362 19.8715 15.6334L18.0383 17.5223C17.8902 17.6749 17.6843 17.7575 17.4718 17.7495C17.2593 17.7414 17.0602 17.6436 16.924 17.4802L16.0905 16.4802C15.8253 16.162 15.8683 15.6891 16.1864 15.4239C16.5046 15.1587 16.9776 15.2016 17.2428 15.5198L17.5425 15.8794L18.7951 14.5888C19.0836 14.2915 19.5584 14.2844 19.8556 14.5729Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M14.7748 12.5129C13.9021 12.3421 12.9686 12.25 12.0001 12.25C9.68658 12.25 7.55506 12.7759 5.97558 13.6643C4.41962 14.5396 3.25013 15.8661 3.25013 17.5L3.25007 17.602C3.24894 18.7638 3.24752 20.222 4.52655 21.2635C5.15602 21.7761 6.03661 22.1406 7.22634 22.3815C8.41939 22.6229 9.97436 22.75 12.0001 22.75C14.8682 22.75 16.81 22.4961 18.1197 22.0085C19.2986 21.5697 19.9974 20.9266 20.3705 20.1172C21.7928 19.2966 22.7501 17.7601 22.7501 16C22.7501 13.3766 20.6235 11.25 18.0001 11.25C16.755 11.25 15.6218 11.7291 14.7748 12.5129ZM14.7501 16C14.7501 14.2051 16.2052 12.75 18.0001 12.75C19.7951 12.75 21.2501 14.2051 21.2501 16C21.2501 17.7949 19.7951 19.25 18.0001 19.25C16.2052 19.25 14.7501 17.7949 14.7501 16ZM13.7558 13.865C13.4323 14.5069 13.2501 15.2322 13.2501 16C13.2501 18.3893 15.0142 20.3666 17.311 20.7004C16.2402 21.0366 14.5781 21.25 12.0001 21.25C10.0259 21.25 8.58087 21.1252 7.52392 20.9113C6.46366 20.6967 5.84425 20.4022 5.47372 20.1004C4.79045 19.544 4.75013 18.8078 4.75013 17.5C4.75013 16.6487 5.37151 15.7251 6.71098 14.9717C8.02693 14.2315 9.89541 13.75 12.0001 13.75C12.6062 13.75 13.1941 13.79 13.7558 13.865Z" fill="currentColor"/>''',
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
