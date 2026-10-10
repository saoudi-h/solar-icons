// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-up` icon in every style.
///
/// Prefer the static widgets (e.g. `ListUpLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ListUpIcon extends StatelessWidget {
  /// Creates the `list-up` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ListUpIcon({
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
    name: 'list-up',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H21C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H21C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10ZM2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H11C11.4142 13.25 11.75 13.5858 11.75 14C11.75 14.4142 11.4142 14.75 11 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14ZM17.0119 14.4306C17.2928 14.1898 17.7072 14.1898 17.9881 14.4306L21.4881 17.4306C21.8026 17.7001 21.839 18.1736 21.5694 18.4881C21.2999 18.8026 20.8264 18.839 20.5119 18.5694L17.5 15.9878L14.4881 18.5694C14.1736 18.839 13.7001 18.8026 13.4306 18.4881C13.161 18.1736 13.1974 17.7001 13.5119 17.4306L17.0119 14.4306ZM2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H11C11.4142 17.25 11.75 17.5858 11.75 18C11.75 18.4142 11.4142 18.75 11 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'list-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17.0119 14.4306C17.2928 14.1898 17.7072 14.1898 17.9881 14.4306L21.4881 17.4306C21.8026 17.7001 21.839 18.1736 21.5695 18.4881C21.2999 18.8026 20.8264 18.839 20.5119 18.5694L17.5 15.9878L14.4881 18.5694C14.1736 18.839 13.7001 18.8026 13.4306 18.4881C13.161 18.1736 13.1974 17.7001 13.5119 17.4306L17.0119 14.4306Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H21C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H21C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10ZM2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H11C11.4142 13.25 11.75 13.5858 11.75 14C11.75 14.4142 11.4142 14.75 11 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14ZM2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H11C11.4142 17.25 11.75 17.5858 11.75 18C11.75 18.4142 11.4142 18.75 11 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'list-up',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14 18L17.5 15L21 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11 14L3 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 18H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 6L13.5 6M20 6L17.75 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 10L9.5 10M3 10H5.25" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'list-up',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14 18L17.5 15L21 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M21 6L3 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 10L3 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 14L3 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 18H3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'list-up',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14 18L17.5 15L21 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 6L3 6" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M21 10L3 10" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11 14L3 14" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11 18H3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'list-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H21C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H21C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10ZM2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H11C11.4142 13.25 11.75 13.5858 11.75 14C11.75 14.4142 11.4142 14.75 11 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14ZM17.0119 14.4306C17.2928 14.1898 17.7072 14.1898 17.9881 14.4306L21.4881 17.4306C21.8026 17.7001 21.839 18.1736 21.5694 18.4881C21.2999 18.8026 20.8264 18.839 20.5119 18.5694L17.5 15.9878L14.4881 18.5694C14.1736 18.839 13.7001 18.8026 13.4306 18.4881C13.161 18.1736 13.1974 17.7001 13.5119 17.4306L17.0119 14.4306ZM2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H11C11.4142 17.25 11.75 17.5858 11.75 18C11.75 18.4142 11.4142 18.75 11 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18Z" fill="currentColor"/>''',
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
