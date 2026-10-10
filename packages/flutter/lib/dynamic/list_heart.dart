// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-heart` icon in every style.
///
/// Prefer the static widgets (e.g. `ListHeartLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ListHeartIcon extends StatelessWidget {
  /// Creates the `list-heart` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ListHeartIcon({
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
    name: 'list-heart',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M14 15.0361C14 16.2709 15.4849 17.5789 16.5203 18.3408C16.9546 18.6603 17.1717 18.8201 17.5 18.8201C17.8283 18.8201 18.0454 18.6603 18.4797 18.3408C19.5151 17.5789 21 16.2709 21 15.0361C21 13.0282 19.0749 12.2786 17.5 13.8296C15.9251 12.2786 14 13.0282 14 15.0361Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H21C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H21C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10ZM2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H10C10.4142 13.25 10.75 13.5858 10.75 14C10.75 14.4142 10.4142 14.75 10 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14ZM2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H10C10.4142 17.25 10.75 17.5858 10.75 18C10.75 18.4142 10.4142 18.75 10 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'list-heart',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14 15.0361C14 16.2709 15.4849 17.5789 16.5203 18.3408C16.9546 18.6603 17.1717 18.8201 17.5 18.8201C17.8283 18.8201 18.0454 18.6603 18.4797 18.3408C19.5151 17.5789 21 16.2709 21 15.0361C21 13.0282 19.0749 12.2786 17.5 13.8296C15.9251 12.2786 14 13.0282 14 15.0361Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H21C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H21C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10ZM2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H10C10.4142 13.25 10.75 13.5858 10.75 14C10.75 14.4142 10.4142 14.75 10 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14ZM2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H10C10.4142 17.25 10.75 17.5858 10.75 18C10.75 18.4142 10.4142 18.75 10 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'list-heart',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14 15.0361C14 16.2709 15.4849 17.5789 16.5203 18.3408C16.9546 18.6603 17.1717 18.8201 17.5 18.8201C17.8283 18.8201 18.0454 18.6603 18.4797 18.3408C19.5151 17.5789 21 16.2709 21 15.0361C21 13.0282 19.0749 12.2786 17.5 13.8296C15.9251 12.2786 14 13.0282 14 15.0361Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10 14H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 18H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 6L13.5 6M20 6L17.75 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 10L9.5 10M3 10H5.25" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'list-heart',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14 15.0361C14 16.2709 15.4849 17.5789 16.5203 18.3408C16.9546 18.6603 17.1717 18.8201 17.5 18.8201C17.8283 18.8201 18.0454 18.6603 18.4797 18.3408C19.5151 17.5789 21 16.2709 21 15.0361C21 13.0282 19.0749 12.2786 17.5 13.8296C15.9251 12.2786 14 13.0282 14 15.0361Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M21 6L3 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 10L3 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 14H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 18H3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'list-heart',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14 15.0361C14 16.2709 15.4849 17.5789 16.5203 18.3408C16.9546 18.6603 17.1717 18.8201 17.5 18.8201C17.8283 18.8201 18.0454 18.6603 18.4797 18.3408C19.5151 17.5789 21 16.2709 21 15.0361C21 13.0282 19.0749 12.2786 17.5 13.8296C15.9251 12.2786 14 13.0282 14 15.0361Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 6L3 6" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M21 10L3 10" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 14H3" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 18H3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'list-heart',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H21C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H21C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10ZM20.095 12.3927C21.1303 12.766 21.75 13.7847 21.75 15.0361C21.75 15.9337 21.2258 16.7455 20.6944 17.3575C20.142 17.9937 19.4624 18.5488 18.9242 18.9449C18.8995 18.963 18.8746 18.9815 18.8495 19.0001C18.4897 19.267 18.0811 19.5701 17.5 19.5701C16.9189 19.5701 16.5103 19.267 16.1505 19.0001C16.1254 18.9815 16.1005 18.963 16.0758 18.9449C15.5376 18.5488 14.858 17.9937 14.3056 17.3575C13.7742 16.7455 13.25 15.9337 13.25 15.0361C13.25 13.7847 13.8697 12.766 14.905 12.3927C15.7404 12.0915 16.6754 12.2721 17.5 12.8537C18.3246 12.2721 19.2596 12.0915 20.095 12.3927ZM19.5862 13.8038C19.2492 13.6823 18.6667 13.7332 18.0263 14.364C17.7343 14.6515 17.2657 14.6515 16.9737 14.364C16.3333 13.7332 15.7508 13.6823 15.4138 13.8038C15.0929 13.9195 14.75 14.2796 14.75 15.0361C14.75 15.3733 14.9683 15.8329 15.4382 16.374C15.8871 16.891 16.4677 17.3709 16.9649 17.7367C17.1982 17.9084 17.3121 17.99 17.4032 18.0387C17.4621 18.0702 17.4787 18.0701 17.4984 18.0701L17.5 18.0701L17.5016 18.0701C17.5213 18.0701 17.5379 18.0702 17.5968 18.0387C17.688 17.99 17.8019 17.9084 18.0351 17.7367C18.5323 17.3709 19.1129 16.891 19.5618 16.374C20.0317 15.8329 20.25 15.3733 20.25 15.0361C20.25 14.2796 19.9071 13.9195 19.5862 13.8038ZM2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H10C10.4142 13.25 10.75 13.5858 10.75 14C10.75 14.4142 10.4142 14.75 10 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14ZM2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H10C10.4142 17.25 10.75 17.5858 10.75 18C10.75 18.4142 10.4142 18.75 10 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18Z" fill="currentColor"/>''',
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
