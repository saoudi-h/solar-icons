// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `gallery-circle` icon in every style.
///
/// Prefer the static widgets (e.g. `GalleryCircleLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class GalleryCircleIcon extends StatelessWidget {
  /// Creates the `gallery-circle` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const GalleryCircleIcon({
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
    name: 'gallery-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17 9C17 10.1046 16.1046 11 15 11C13.8954 11 13 10.1046 13 9C13 7.89543 13.8954 7 15 7C16.1046 7 17 7.89543 17 9Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25ZM11.1822 15.3618L6.89249 11.0721C6.03628 10.2159 4.66286 10.1702 3.75159 10.9675L2.751 11.8623C2.82464 6.81714 6.93735 2.75 12 2.75C17.1086 2.75 21.25 6.89137 21.25 12C21.25 13.9546 20.6438 15.7676 19.609 17.2612L17.7765 15.599C16.7369 14.6634 15.1888 14.5702 14.0446 15.3744L13.7464 15.5839C12.9512 16.1428 11.8694 16.0491 11.1822 15.3618Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'gallery-circle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15 7C16.1046 7 17 7.89543 17 9C17 10.1046 16.1046 11 15 11C13.8954 11 13 10.1046 13 9C13 7.89543 13.8954 7 15 7Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 6.06294 6.06294 1.25 12 1.25ZM12 2.75C7.6541 2.75 4.00841 5.7471 3.0166 9.78711C2.81042 10.5566 2.70021 11.3656 2.7002 12.2002C2.7002 17.3364 6.86384 21.4999 12 21.5C17.1362 21.5 21.2998 17.3364 21.2998 12.2002C21.2998 11.3593 21.1887 10.5442 20.9795 9.76953C19.9815 5.73836 16.3396 2.75 12 2.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.1822 15.3618L6.89249 11.0721C6.03628 10.2159 4.66286 10.1702 3.75159 10.9675L2.751 11.8623C2.73407 11.8751 2.7002 11.9607 2.7002 12.2004C2.7002 17.3366 6.86395 21.5004 12.0002 21.5004C15.2197 21.5004 18.057 19.8645 19.7264 17.3786L19.609 17.2612L17.7765 15.599C16.7369 14.6634 15.1888 14.5702 14.0446 15.3744L13.7464 15.5839C12.9512 16.1428 11.8694 16.0491 11.1822 15.3618Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'gallery-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="15" cy="9" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.9999 17.6001L17.7764 15.599C16.7368 14.6634 15.1887 14.5702 14.0445 15.3744L13.7463 15.5839C12.9511 16.1428 11.8693 16.0491 11.1821 15.3618L6.89237 11.0721C6.03616 10.2159 4.66274 10.1702 3.75147 10.9675L2.28101 12.2542" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'gallery-circle',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="15" cy="9" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.0001 17.6001L17.7766 15.599C16.7371 14.6634 15.189 14.5702 14.0447 15.3744L13.7465 15.5839C12.9514 16.1428 11.8696 16.0491 11.1823 15.3618L6.89262 11.0721C6.03641 10.2159 4.66299 10.1702 3.75172 10.9675L2.28125 12.2542" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'gallery-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="15" cy="9" r="2" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M19.9999 17.6001L17.7764 15.599C16.7368 14.6634 15.1887 14.5702 14.0445 15.3744L13.7463 15.5839C12.9511 16.1428 11.8693 16.0491 11.1821 15.3618L6.89237 11.0721C6.03616 10.2159 4.66274 10.1702 3.75147 10.9675L2.28101 12.2542" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'gallery-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.8301 10.7772L3.25771 10.4031C4.46613 9.34572 6.28741 9.40636 7.42282 10.5418L11.7125 14.8315C12.1421 15.261 12.8182 15.3196 13.3152 14.9703L13.6134 14.7607C15.0437 13.7555 16.9788 13.872 18.2782 15.0415L20.0211 16.6101C20.8028 15.2529 21.25 13.6787 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75C7.30589 2.75 3.42845 6.24656 2.8301 10.7772ZM19.1617 17.8547L17.2747 16.1564C16.4951 15.4547 15.334 15.3849 14.4758 15.988L14.1776 16.1975C13.0843 16.9659 11.5968 16.8371 10.6519 15.8922L6.36215 11.6024C5.78514 11.0254 4.85958 10.9946 4.24546 11.5319L2.78496 12.8099C3.19518 17.5392 7.16424 21.25 12 21.25C14.8872 21.25 17.4654 19.9272 19.1617 17.8547ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM15 7.75C14.3096 7.75 13.75 8.30964 13.75 9C13.75 9.69036 14.3096 10.25 15 10.25C15.6904 10.25 16.25 9.69036 16.25 9C16.25 8.30964 15.6904 7.75 15 7.75ZM12.25 9C12.25 7.48122 13.4812 6.25 15 6.25C16.5188 6.25 17.75 7.48122 17.75 9C17.75 10.5188 16.5188 11.75 15 11.75C13.4812 11.75 12.25 10.5188 12.25 9Z" fill="currentColor"/>''',
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
