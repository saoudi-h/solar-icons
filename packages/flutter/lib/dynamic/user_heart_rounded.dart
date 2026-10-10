// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-heart-rounded` icon in every style.
///
/// Prefer the static widgets (e.g. `UserHeartRoundedLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class UserHeartRoundedIcon extends StatelessWidget {
  /// Creates the `user-heart-rounded` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const UserHeartRoundedIcon({
    super.key,
    this.style,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].
  final SolarIconStyle? style;

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
    name: 'user-heart-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 15C18.1499 15 18.9747 15.0001 19.4873 15.5127C19.9999 16.0253 20 16.8501 20 18.5C20 20.1499 19.9999 20.9747 19.4873 21.4873C18.9747 21.9999 18.1499 22 16.5 22C14.8501 22 14.0253 21.9999 13.5127 21.4873C13.0001 20.9747 13 20.1499 13 18.5C13 16.8501 13.0001 16.0253 13.5127 15.5127C14.0253 15.0001 14.8501 15 16.5 15ZM19 17.8594C18.9997 16.7297 17.6248 15.9286 16.5 17.0146C15.3752 15.9286 14.0003 16.7297 14 17.8594C14 18.8829 14.8244 19.4739 15.5264 19.9766C15.5993 20.0288 15.671 20.0801 15.7402 20.1309C15.9998 20.321 16.25 20.5 16.5 20.5C16.75 20.5 17.0002 20.321 17.2598 20.1309C17.329 20.0801 17.4007 20.0288 17.4736 19.9766C18.1756 19.4739 19 18.8829 19 17.8594Z" fill="currentColor"/>
<path d="M12 13C13.24 13 14.4049 13.1846 15.415 13.5078C15.0415 13.5166 14.6918 13.5352 14.3799 13.5771C13.737 13.6636 13.0336 13.8707 12.4521 14.4521C11.8707 15.0336 11.6636 15.737 11.5771 16.3799C11.4995 16.9576 11.4999 17.6635 11.5 18.4141V18.5859C11.4999 19.3365 11.4995 20.0424 11.5771 20.6201C11.5937 20.7432 11.6154 20.8688 11.6426 20.9951C7.94288 20.8887 5 19.1406 5 17C5 14.7909 8.13401 13 12 13Z" fill="currentColor"/>
<path d="M12 2C14.2091 2 16 3.79086 16 6C16 8.20914 14.2091 10 12 10C9.79086 10 8 8.20914 8 6C8 3.79086 9.79086 2 12 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'user-heart-rounded',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 15C18.1499 15 18.9747 15.0001 19.4873 15.5127C19.9999 16.0253 20 16.8501 20 18.5C20 20.1499 19.9999 20.9747 19.4873 21.4873C18.9747 21.9999 18.1499 22 16.5 22C14.8501 22 14.0253 21.9999 13.5127 21.4873C13.0001 20.9747 13 20.1499 13 18.5C13 16.8501 13.0001 16.0253 13.5127 15.5127C14.0253 15.0001 14.8501 15 16.5 15ZM19 17.8594C18.9997 16.7297 17.6248 15.9286 16.5 17.0146C15.3752 15.9286 14.0003 16.7297 14 17.8594C14 18.8829 14.8244 19.4739 15.5264 19.9766C15.5993 20.0288 15.671 20.0801 15.7402 20.1309C15.9998 20.321 16.25 20.5 16.5 20.5C16.75 20.5 17.0002 20.321 17.2598 20.1309C17.329 20.0801 17.4007 20.0288 17.4736 19.9766C18.1756 19.4739 19 18.8829 19 17.8594Z" fill="currentColor"/>
<path d="M12 2C14.2091 2 16 3.79086 16 6C16 8.20914 14.2091 10 12 10C9.79086 10 8 8.20914 8 6C8 3.79086 9.79086 2 12 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.0947 15.0312C17.6699 15 17.1487 15 16.5 15C14.8501 15 14.0251 15 13.5126 15.5126C13 16.0251 13 16.8501 13 18.5C13 19.6663 13 20.4204 13.1811 20.9433C12.7971 20.9806 12.4025 21 12 21C8.13401 21 5 19.2091 5 17C5 14.7909 8.13401 13 12 13C14.6134 13 16.8924 13.8184 18.0947 15.0312Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'user-heart-rounded',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="10" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 9.69673C16 10.6812 17.1649 11.7213 18.0429 12.3656C18.4626 12.6736 18.6725 12.8276 19 12.8276C19.3275 12.8276 19.5374 12.6736 19.9571 12.3656C20.8352 11.7214 22 10.6812 22 9.69672C22 8.0235 20.35 7.39879 19 8.69135C17.65 7.39879 16 8.0235 16 9.69673Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13 20.6151C12.0907 20.8619 11.0736 21 10 21C6.13401 21 3 19.2091 3 17C3 14.7909 6.13401 13 10 13C13.866 13 17 14.7909 17 17C17 17.3453 16.9234 17.6804 16.7795 18" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'user-heart-rounded',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="9" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="17" rx="7" ry="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 9.69973C15 11.1121 16.2058 11.8648 17.0885 12.5385C17.4 12.7762 17.7 13 18 13C18.3 13 18.6 12.7762 18.9115 12.5385C19.7942 11.8648 21 11.1121 21 9.69973C21 8.28732 19.35 7.28567 18 8.64354C16.65 7.28567 15 8.28732 15 9.69973Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'user-heart-rounded',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="9" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 9.69973C15 11.1121 16.2058 11.8648 17.0885 12.5385C17.4 12.7762 17.7 13 18 13C18.3 13 18.6 12.7762 18.9115 12.5385C19.7942 11.8648 21 11.1121 21 9.69973C21 8.28732 19.35 7.28567 18 8.64354C16.65 7.28567 15 8.28732 15 9.69973Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<ellipse opacity="0.5" cx="9" cy="17" rx="7" ry="4" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'user-heart-rounded',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 6C4.25 3.37665 6.37665 1.25 9 1.25C11.6234 1.25 13.75 3.37665 13.75 6C13.75 8.62335 11.6234 10.75 9 10.75C6.37665 10.75 4.25 8.62335 4.25 6ZM9 2.75C7.20507 2.75 5.75 4.20507 5.75 6C5.75 7.79493 7.20507 9.25 9 9.25C10.7949 9.25 12.25 7.79493 12.25 6C12.25 4.20507 10.7949 2.75 9 2.75Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M3.67815 13.5204C5.07752 12.7208 6.96067 12.25 9 12.25C11.0393 12.25 12.9225 12.7208 14.3219 13.5204C15.7 14.3079 16.75 15.5101 16.75 17C16.75 18.4899 15.7 19.6921 14.3219 20.4796C12.9225 21.2792 11.0393 21.75 9 21.75C6.96067 21.75 5.07752 21.2792 3.67815 20.4796C2.3 19.6921 1.25 18.4899 1.25 17C1.25 15.5101 2.3 14.3079 3.67815 13.5204ZM4.42236 14.8228C3.26701 15.483 2.75 16.2807 2.75 17C2.75 17.7193 3.26701 18.517 4.42236 19.1772C5.55649 19.8253 7.17334 20.25 9 20.25C10.8267 20.25 12.4435 19.8253 13.5776 19.1772C14.733 18.517 15.25 17.7193 15.25 17C15.25 16.2807 14.733 15.483 13.5776 14.8228C12.4435 14.1747 10.8267 13.75 9 13.75C7.17334 13.75 5.55649 14.1747 4.42236 14.8228Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M15.6903 7.44694C16.4109 7.12802 17.2479 7.18847 18 7.67889C18.7521 7.18847 19.5891 7.12802 20.3097 7.44694C21.1648 7.82533 21.75 8.69929 21.75 9.69973C21.75 10.6481 21.3358 11.362 20.8394 11.9031C20.4521 12.3254 19.9729 12.682 19.5945 12.9636C19.5133 13.0241 19.4365 13.0812 19.3665 13.1347L19.3645 13.1362C19.2158 13.2497 19.0235 13.3964 18.8207 13.5111C18.6168 13.6265 18.3344 13.75 18 13.75C17.6656 13.75 17.3832 13.6265 17.1793 13.5111C16.9765 13.3965 16.7842 13.2497 16.6355 13.1362L16.6335 13.1347C16.5635 13.0812 16.4869 13.0242 16.4057 12.9638C16.0273 12.6821 15.5479 12.3254 15.1606 11.9031C14.6642 11.362 14.25 10.6481 14.25 9.69973C14.25 8.69929 14.8352 7.82533 15.6903 7.44694ZM15.75 9.69973C15.75 9.28775 15.9898 8.95469 16.2973 8.81862C16.5635 8.7008 16.9874 8.68874 17.4681 9.17232C17.6089 9.31392 17.8003 9.39354 18 9.39354C18.1997 9.39354 18.3911 9.31392 18.5319 9.17232C19.0126 8.68874 19.4365 8.7008 19.7027 8.81862C20.0102 8.95469 20.25 9.28775 20.25 9.69973C20.25 10.1638 20.0613 10.5324 19.7341 10.8891C19.452 11.1966 19.1157 11.448 18.7438 11.7259C18.6502 11.7959 18.5543 11.8676 18.4565 11.9423C18.2939 12.0663 18.1813 12.1495 18.0821 12.2056C18.0421 12.2283 18.0153 12.2399 18 12.2456C17.9847 12.2399 17.9579 12.2283 17.9179 12.2056C17.8187 12.1495 17.7061 12.0663 17.5435 11.9423C17.4457 11.8676 17.3499 11.796 17.2563 11.726C16.8844 11.448 16.548 11.1966 16.2659 10.8891C15.9387 10.5324 15.75 10.1638 15.75 9.69973Z" fill="currentColor"/>''',
  );

  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback = isolated
        ? SolarIconStyle.linear
        : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
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
