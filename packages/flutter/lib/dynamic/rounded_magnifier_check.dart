// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rounded-magnifier-check` icon in every style.
///
/// Prefer the static widgets (e.g. `RoundedMagnifierCheckLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class RoundedMagnifierCheckIcon extends StatelessWidget {
  /// Creates the `rounded-magnifier-check` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const RoundedMagnifierCheckIcon({
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
    name: 'rounded-magnifier-check',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M19.7207 17.7832C19.9087 17.7989 20.1341 17.8669 20.3633 17.9365C20.3853 17.9432 20.4076 17.9504 20.4297 17.957C20.4495 17.963 20.4694 17.9686 20.4893 17.9746C20.7 18.038 20.9099 18.1014 21.0693 18.1875C21.9844 18.6819 22.2801 19.8632 21.707 20.7363C21.6072 20.8884 21.4516 21.0446 21.2959 21.2012C21.2813 21.2159 21.2665 21.2304 21.252 21.2451C21.2373 21.2599 21.2227 21.2752 21.208 21.29C21.0528 21.4471 20.8978 21.6034 20.7471 21.7041C19.8816 22.2822 18.7109 21.9844 18.2207 21.0615C18.1354 20.9008 18.0725 20.689 18.0098 20.4766C18.0038 20.4565 17.9981 20.4361 17.9922 20.416C17.9856 20.3937 17.9783 20.3709 17.9717 20.3486C17.9026 20.1174 17.8348 19.8898 17.8193 19.7002C17.7303 18.6062 18.6361 17.6932 19.7207 17.7832Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.0635 2C16.0692 2 20.1278 6.09324 20.1279 11.1426C20.1279 16.1921 16.0693 20.2861 11.0635 20.2861C6.05782 20.2859 2 16.1919 2 11.1426C2.00017 6.09338 6.05793 2.00022 11.0635 2ZM14.4609 7.9082C14.1343 7.65382 13.6629 7.71259 13.4082 8.03906L10.0781 12.3096L8.57422 10.5176C8.30779 10.2005 7.83473 10.1594 7.51758 10.4258C7.20045 10.6922 7.15938 11.1653 7.42578 11.4824L9.52539 13.9824L9.58301 14.0439C9.72491 14.1788 9.91531 14.2535 10.1133 14.25C10.3396 14.2459 10.5522 14.1394 10.6914 13.9609L14.5918 8.96094C14.8462 8.63435 14.7874 8.16285 14.4609 7.9082Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'rounded-magnifier-check',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.2832 18.2568C20.5013 18.2748 20.7702 18.3599 21.0586 18.4463C21.3222 18.5252 21.5732 18.5955 21.7578 18.6943C22.7332 19.2169 23.0484 20.4659 22.4375 21.3886C22.3217 21.5634 22.1342 21.7446 21.9394 21.9394C21.7446 22.1342 21.5634 22.3217 21.3886 22.4375C20.4659 23.0484 19.217 22.7332 18.6943 21.7578C18.5955 21.5732 18.5253 21.3222 18.4463 21.0586C18.3599 20.7702 18.2748 20.5013 18.2568 20.2832C18.1617 19.1266 19.1266 18.1617 20.2832 18.2568Z" fill="currentColor"/>
<path d="M13.4082 8.03903C13.6628 7.71256 14.1343 7.65379 14.4609 7.90817C14.7874 8.16282 14.8461 8.63432 14.5918 8.9609L10.6914 13.9609C10.5522 14.1393 10.3395 14.2459 10.1133 14.25C9.9153 14.2535 9.72488 14.1788 9.58298 14.0439L9.52536 13.9824L7.42576 11.4824C7.15935 11.1652 7.20043 10.6922 7.51755 10.4257C7.8347 10.1593 8.30777 10.2004 8.57419 10.5175L10.0781 12.3095L13.4082 8.03903Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11" cy="11" r="9" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'rounded-magnifier-check',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21.812 20.9748C21.7493 21.0695 21.636 21.1828 21.4094 21.4094C21.1828 21.636 21.0695 21.7493 20.9748 21.812C20.4202 22.1793 19.6699 21.99 19.3559 21.4036C19.3023 21.3035 19.2563 21.15 19.1643 20.843C19.0638 20.5076 19.0136 20.3398 19.0038 20.2218C18.9466 19.5268 19.5268 18.9466 20.2218 19.0038C20.3398 19.0136 20.5075 19.0638 20.843 19.1643C21.15 19.2563 21.3035 19.3023 21.4036 19.3559C21.99 19.6699 22.1793 20.4202 21.812 20.9748Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 11L10.1 13.5L14 8.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6.5 3.20404C7.82378 2.43827 9.36071 2 11 2C15.9706 2 20 6.02944 20 11C20 15.9706 15.9706 20 11 20C6.02944 20 2 15.9706 2 11C2 9.36071 2.43827 7.82378 3.20404 6.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'rounded-magnifier-check',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="11" cy="11" r="9" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.812 20.9748C21.7493 21.0695 21.636 21.1828 21.4094 21.4094C21.1828 21.636 21.0695 21.7493 20.9748 21.812C20.4202 22.1793 19.6699 21.99 19.3559 21.4036C19.3023 21.3035 19.2563 21.15 19.1643 20.843C19.0638 20.5076 19.0136 20.3398 19.0038 20.2218C18.9466 19.5268 19.5268 18.9466 20.2218 19.0038C20.3398 19.0136 20.5075 19.0638 20.843 19.1643C21.15 19.2563 21.3035 19.3023 21.4036 19.3559C21.99 19.6699 22.1793 20.4202 21.812 20.9748Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 11L10.1 13.5L14 8.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'rounded-magnifier-check',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21.812 20.9748C21.7493 21.0695 21.636 21.1828 21.4094 21.4094C21.1828 21.636 21.0695 21.7493 20.9748 21.812C20.4202 22.1793 19.6699 21.99 19.3559 21.4036C19.3023 21.3035 19.2563 21.15 19.1643 20.843C19.0638 20.5076 19.0136 20.3398 19.0038 20.2218C18.9466 19.5268 19.5268 18.9466 20.2218 19.0038C20.3398 19.0136 20.5075 19.0638 20.843 19.1643C21.15 19.2563 21.3035 19.3023 21.4036 19.3559C21.99 19.6699 22.1793 20.4202 21.812 20.9748Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 11L10.1 13.5L14 8.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="11" cy="11" r="9" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'rounded-magnifier-check',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M20.2832 18.2568C20.4831 18.2733 20.7253 18.3452 20.9863 18.4238C21.0102 18.431 21.0344 18.439 21.0586 18.4463C21.0802 18.4528 21.1016 18.4594 21.123 18.4658C21.3628 18.5373 21.5883 18.6036 21.7578 18.6943C22.7336 19.2168 23.0485 20.4658 22.4375 21.3887C22.3314 21.5489 22.1653 21.715 21.9883 21.8916C21.9723 21.9075 21.9556 21.9234 21.9395 21.9395C21.9233 21.9556 21.9075 21.9723 21.8916 21.9883C21.715 22.1653 21.5489 22.3314 21.3887 22.4375C20.4658 23.0485 19.2168 22.7336 18.6943 21.7578C18.6036 21.5883 18.5374 21.3628 18.4658 21.123C18.4594 21.1016 18.4528 21.0802 18.4463 21.0586C18.439 21.0344 18.431 21.0102 18.4238 20.9863C18.3452 20.7253 18.2733 20.4831 18.2568 20.2832C18.1617 19.1267 19.1267 18.1617 20.2832 18.2568ZM20.1582 19.751C19.9267 19.7334 19.7334 19.9267 19.751 20.1582C19.7516 20.1615 19.756 20.1878 19.7744 20.2568C19.7971 20.3419 19.8312 20.4557 19.8828 20.6279C19.9301 20.7857 19.9611 20.8879 19.9863 20.9639C20.0053 21.021 20.0152 21.0444 20.0176 21.0498C20.1231 21.2464 20.3745 21.3097 20.5605 21.1865C20.5658 21.1824 20.5861 21.1663 20.6289 21.126C20.6872 21.0711 20.7625 20.9953 20.8789 20.8789C20.9953 20.7625 21.0711 20.6872 21.126 20.6289C21.1701 20.5821 21.1853 20.5624 21.1875 20.5596C21.3092 20.374 21.2459 20.1232 21.0508 20.0176C21.0473 20.016 21.0245 20.0065 20.9639 19.9863C20.8879 19.9611 20.7857 19.9301 20.6279 19.8828C20.4557 19.8312 20.3419 19.7972 20.2568 19.7744C20.1879 19.756 20.1615 19.7516 20.1582 19.751Z" fill="currentColor"/>
<path d="M13.4082 8.03906C13.6629 7.71259 14.1343 7.65382 14.4609 7.9082C14.7874 8.16285 14.8462 8.63435 14.5918 8.96094L10.6914 13.9609C10.5522 14.1394 10.3396 14.2459 10.1133 14.25C9.91531 14.2535 9.72491 14.1788 9.58301 14.0439L9.52539 13.9824L7.42578 11.4824C7.15938 11.1653 7.20045 10.6922 7.51758 10.4258C7.83473 10.1594 8.30779 10.2005 8.57422 10.5176L10.0781 12.3096L13.4082 8.03906Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11 1.25C16.3848 1.25 20.75 5.61522 20.75 11C20.75 16.3848 16.3848 20.75 11 20.75C5.61522 20.75 1.25 16.3848 1.25 11C1.25 5.61522 5.61522 1.25 11 1.25ZM11 2.75C6.44365 2.75 2.75 6.44365 2.75 11C2.75 15.5563 6.44365 19.25 11 19.25C15.5563 19.25 19.25 15.5563 19.25 11C19.25 6.44365 15.5563 2.75 11 2.75Z" fill="currentColor"/>''',
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
