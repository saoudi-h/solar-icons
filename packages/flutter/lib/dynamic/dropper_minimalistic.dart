// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `dropper-minimalistic` icon in every style.
///
/// Prefer the static widgets (e.g. `DropperMinimalisticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class DropperMinimalisticIcon extends StatelessWidget {
  /// Creates the `dropper-minimalistic` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const DropperMinimalisticIcon({
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
    name: 'dropper-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M15 4C16.8856 4 17.8283 4.00015 18.4141 4.58594C18.9164 5.08829 18.9879 5.85306 18.998 7.25H17C16.5858 7.25 16.25 7.58579 16.25 8C16.25 8.41421 16.5858 8.75 17 8.75H19V10.25H17C16.5858 10.25 16.25 10.5858 16.25 11C16.25 11.4142 16.5858 11.75 17 11.75H19V13.25H17C16.5858 13.25 16.25 13.5858 16.25 14C16.25 14.4142 16.5858 14.75 17 14.75H19V15.8828C19 16.6436 18.6807 17.3694 18.1201 17.8838C16.5865 19.291 14.6891 20.0749 12.75 20.2354V21.25C12.75 21.6642 12.4142 22 12 22C11.5858 22 11.25 21.6642 11.25 21.25V20.2354C9.31089 20.0749 7.41349 19.291 5.87988 17.8838C5.31935 17.3694 5 16.6436 5 15.8828V8C5 6.11438 5.00015 5.17172 5.58594 4.58594C6.17172 4.00015 7.11438 4 9 4H15ZM12.6309 9.61719C12.2839 9.25126 11.7161 9.25126 11.3691 9.61719C10.783 10.2356 10 11.1971 10 11.917C10.0002 13.0674 10.8955 14 12 14C13.1045 14 13.9998 13.0674 14 11.917C14 11.1971 13.217 10.2356 12.6309 9.61719Z" fill="currentColor"/>
<path d="M12 2C12.7403 2 13.3866 2.40221 13.7324 3H10.2676C10.6134 2.4022 11.2597 2.00001 12 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'dropper-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 21.25C12.7499 21.6641 12.4141 22 12 22C11.5859 22 11.2501 21.6641 11.25 21.25V20.2354C11.7491 20.2766 12.2509 20.2766 12.75 20.2354V21.25Z" fill="currentColor"/>
<path d="M19 14.75H17C16.5858 14.75 16.25 14.4142 16.25 14C16.25 13.5858 16.5858 13.25 17 13.25H19V14.75Z" fill="currentColor"/>
<path d="M11.3691 9.61719C11.7161 9.25121 12.2839 9.25121 12.6309 9.61719C13.217 10.2356 14 11.1971 14 11.917C13.9998 13.0674 13.1044 14 12 14C10.8956 14 10.0002 13.0674 10 11.917C10 11.1971 10.783 10.2356 11.3691 9.61719Z" fill="currentColor"/>
<path d="M19 11.75H17C16.5858 11.75 16.25 11.4142 16.25 11C16.25 10.5858 16.5858 10.25 17 10.25H19V11.75Z" fill="currentColor"/>
<path d="M19 8V8.75H17C16.5858 8.75 16.25 8.41421 16.25 8C16.25 7.58579 16.5858 7.25 17 7.25H18.998C18.9997 7.482 19 7.73144 19 8Z" fill="currentColor"/>
<path d="M12 2C13.1046 2 14 2.89543 14 4H10C10 2.89543 10.8954 2 12 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M19 15.8831V8C19 6.11438 19 5.17157 18.4142 4.58579C17.8284 4 16.8856 4 15 4H9C7.11438 4 6.17157 4 5.58579 4.58579C5 5.17157 5 6.11438 5 8V15.8831C5 16.6438 5.31911 17.3697 5.87966 17.8841C9.3416 21.0607 14.6584 21.0607 18.1203 17.8841C18.6809 17.3697 19 16.6438 19 15.8831Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'dropper-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5 8C5 6.11438 5 5.17157 5.58579 4.58579C6.17157 4 7.11438 4 9 4H15C16.8856 4 17.8284 4 18.4142 4.58579C19 5.17157 19 6.11438 19 8V15.8831C19 16.6438 18.6809 17.3697 18.1203 17.8841C14.6584 21.0607 9.3416 21.0607 5.87966 17.8841C5.31911 17.3697 5 16.6438 5 15.8831V12" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 8L17 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 14H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 11.9166C14 13.0672 13.1046 13.9999 12 13.9999C10.8954 13.9999 10 13.0672 10 11.9166C10 11.1967 10.783 10.2358 11.3691 9.61737C11.7161 9.25124 12.2839 9.25124 12.6309 9.61737C13.217 10.2358 14 11.1967 14 11.9166Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 11H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 21V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 4C14 2.89543 13.1046 2 12 2C10.8954 2 10 2.89543 10 4" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'dropper-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19 15.8831V8C19 6.11438 19 5.17157 18.4142 4.58579C17.8284 4 16.8856 4 15 4H9C7.11438 4 6.17157 4 5.58579 4.58579C5 5.17157 5 6.11438 5 8V15.8831C5 16.6438 5.31911 17.3697 5.87966 17.8841C9.3416 21.0607 14.6584 21.0607 18.1203 17.8841C18.6809 17.3697 19 16.6438 19 15.8831Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 8L17 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 14H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 11.9166C14 13.0672 13.1046 13.9999 12 13.9999C10.8954 13.9999 10 13.0672 10 11.9166C10 11.1967 10.783 10.2358 11.3691 9.61737C11.7161 9.25124 12.2839 9.25124 12.6309 9.61737C13.217 10.2358 14 11.1967 14 11.9166Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 11H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 21V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 4C14 2.89543 13.1046 2 12 2C10.8954 2 10 2.89543 10 4" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'dropper-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M19 15.8831V8C19 6.11438 19 5.17157 18.4142 4.58579C17.8284 4 16.8856 4 15 4H9C7.11438 4 6.17157 4 5.58579 4.58579C5 5.17157 5 6.11438 5 8V15.8831C5 16.6438 5.31911 17.3697 5.87966 17.8841C9.3416 21.0607 14.6584 21.0607 18.1203 17.8841C18.6809 17.3697 19 16.6438 19 15.8831Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 8L17 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 14H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 11.9166C14 13.0672 13.1046 13.9999 12 13.9999C10.8954 13.9999 10 13.0672 10 11.9166C10 11.1967 10.783 10.2358 11.3691 9.61737C11.7161 9.25124 12.2839 9.25124 12.6309 9.61737C13.217 10.2358 14 11.1967 14 11.9166Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 11H17" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 21V22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14 4C14 2.89543 13.1046 2 12 2C10.8954 2 10 2.89543 10 4" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'dropper-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M19 7.25C19.4142 7.25 19.75 7.58579 19.75 8C19.75 8.41421 19.4142 8.75 19 8.75H17C16.5858 8.75 16.25 8.41421 16.25 8C16.25 7.58579 16.5858 7.25 17 7.25H19Z" fill="currentColor"/>
<path d="M19 13.25C19.4142 13.25 19.75 13.5858 19.75 14C19.75 14.4142 19.4142 14.75 19 14.75H17C16.5858 14.75 16.25 14.4142 16.25 14C16.25 13.5858 16.5858 13.25 17 13.25H19Z" fill="currentColor"/>
<path d="M19 10.25C19.4142 10.25 19.75 10.5858 19.75 11C19.75 11.4142 19.4142 11.75 19 11.75H17C16.5858 11.75 16.25 11.4142 16.25 11C16.25 10.5858 16.5858 10.25 17 10.25H19Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.1752 9.10145C12.5324 8.42322 11.4676 8.42322 10.8248 9.10145C10.5172 9.42597 10.1419 9.85664 9.83883 10.3157C9.5544 10.7466 9.25 11.3242 9.25 11.9166C9.25 13.4523 10.4527 14.7499 12 14.7499C13.5473 14.7499 14.75 13.4523 14.75 11.9166C14.75 11.3242 14.4456 10.7466 14.1612 10.3157C13.8581 9.85664 13.4828 9.42597 13.1752 9.10145ZM11.9135 10.1333C11.9428 10.1024 11.9734 10.0928 12 10.0928C12.0266 10.0928 12.0572 10.1024 12.0865 10.1333C12.3651 10.4272 12.6744 10.7862 12.9093 11.1421C13.1629 11.5263 13.25 11.7891 13.25 11.9166C13.25 12.6821 12.6618 13.2499 12 13.2499C11.3382 13.2499 10.75 12.6821 10.75 11.9166C10.75 11.7891 10.8371 11.5263 11.0907 11.1421C11.3256 10.7862 11.6349 10.4272 11.9135 10.1333Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M9.35352 3.25C9.67998 2.09575 10.7412 1.25 12 1.25C13.2588 1.25 14.32 2.09575 14.6465 3.25L15.052 3.25C15.9505 3.24997 16.6997 3.24994 17.2945 3.32991C17.9223 3.41432 18.4891 3.59999 18.9445 4.05546C19.4 4.51093 19.5857 5.07773 19.6701 5.70552C19.7501 6.3003 19.75 7.04951 19.75 7.94797L19.75 15.8831C19.75 16.8539 19.3428 17.7803 18.6274 18.4367C16.9503 19.9756 14.8713 20.826 12.7499 20.988L12.75 21V22C12.75 22.4142 12.4142 22.75 12 22.75C11.5858 22.75 11.25 22.4142 11.25 22V21L11.2501 20.988C9.12873 20.826 7.04967 19.9756 5.37259 18.4367C4.65724 17.7803 4.25 16.8539 4.25 15.8831L4.25 7.948C4.24997 7.04953 4.24995 6.30029 4.32991 5.70552C4.41432 5.07773 4.59999 4.51093 5.05546 4.05546C5.51093 3.59999 6.07773 3.41432 6.70552 3.32991C7.3003 3.24994 8.04952 3.24997 8.948 3.25L9.35352 3.25ZM10.9999 3.25C11.228 2.94639 11.591 2.75 12 2.75C12.409 2.75 12.772 2.94639 13.0001 3.25H10.9999ZM9 4.75C8.03599 4.75 7.38843 4.75159 6.9054 4.81654C6.44393 4.87858 6.24644 4.9858 6.11612 5.11612C5.9858 5.24643 5.87858 5.44393 5.81654 5.90539C5.7516 6.38843 5.75 7.03599 5.75 8V15.8831C5.75 16.4337 5.98098 16.9592 6.38673 17.3315C9.56185 20.2449 14.4382 20.2449 17.6133 17.3315C18.019 16.9592 18.25 16.4337 18.25 15.8831V8C18.25 7.03599 18.2484 6.38843 18.1835 5.90539C18.1214 5.44393 18.0142 5.24643 17.8839 5.11612C17.7536 4.9858 17.5561 4.87858 17.0946 4.81654C16.6116 4.75159 15.964 4.75 15 4.75H9Z" fill="currentColor"/>''',
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
