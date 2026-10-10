// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-block-rounded` icon in every style.
///
/// Prefer the static widgets (e.g. `UserBlockRoundedLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class UserBlockRoundedIcon extends StatelessWidget {
  /// Creates the `user-block-rounded` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const UserBlockRoundedIcon({
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
    name: 'user-block-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M18 14.25C20.0711 14.25 21.75 15.9289 21.75 18C21.75 20.0711 20.0711 21.75 18 21.75C15.9289 21.75 14.25 20.0711 14.25 18C14.25 15.9289 15.9289 14.25 18 14.25ZM17.0303 20.0303C17.324 20.1708 17.6527 20.25 18 20.25C19.2426 20.25 20.25 19.2426 20.25 18C20.25 17.6527 20.1708 17.324 20.0303 17.0303L17.0303 20.0303ZM18 15.75C16.7574 15.75 15.75 16.7574 15.75 18C15.75 18.3473 15.8292 18.676 15.9697 18.9697L18.9697 15.9697C18.676 15.8292 18.3473 15.75 18 15.75Z" fill="currentColor"/>
<path d="M12 13.001C13.2039 13.001 14.3368 13.1746 15.3262 13.4805C13.7838 14.3949 12.75 16.0769 12.75 18C12.75 19.0692 13.0693 20.064 13.6182 20.8936C13.0988 20.9638 12.557 21.001 12 21.001C8.13401 21.001 5 19.2101 5 17.001C5 14.7918 8.13401 13.001 12 13.001Z" fill="currentColor"/>
<path d="M12 2C14.2091 2 16 3.79086 16 6C16 8.20914 14.2091 10 12 10C9.79086 10 8 8.20914 8 6C8 3.79086 9.79086 2 12 2Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'user-block-rounded',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M18 14.25C20.0711 14.25 21.75 15.9289 21.75 18C21.75 20.0711 20.0711 21.75 18 21.75C15.9289 21.75 14.25 20.0711 14.25 18C14.25 15.9289 15.9289 14.25 18 14.25ZM17.0303 20.0303C17.324 20.1708 17.6527 20.25 18 20.25C19.2426 20.25 20.25 19.2426 20.25 18C20.25 17.6527 20.1708 17.324 20.0303 17.0303L17.0303 20.0303ZM18 15.75C16.7574 15.75 15.75 16.7574 15.75 18C15.75 18.3473 15.8292 18.676 15.9697 18.9697L18.9697 15.9697C18.676 15.8292 18.3473 15.75 18 15.75Z" fill="currentColor"/>
<path d="M12 2C14.2091 2 16 3.79086 16 6C16 8.20914 14.2091 10 12 10C9.79086 10 8 8.20914 8 6C8 3.79086 9.79086 2 12 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M17.2157 14.3321C15.5211 14.6927 14.25 16.1979 14.25 18C14.25 18.9823 14.6277 19.8764 15.2457 20.5449C14.2756 20.8356 13.1714 21 12 21C8.13401 21 5 19.2091 5 17C5 14.7909 8.13401 13 12 13C14.0722 13 15.934 13.5145 17.2157 14.3321Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'user-block-rounded',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.1211 15.8787L15.8786 20.1213" stroke="currentColor" stroke-linecap="round"/>
<circle cx="18" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 20.9595C12.6734 20.9862 12.3395 21 12 21C8.13401 21 5 19.2091 5 17C5 16.6547 5.07657 16.3196 5.22053 16M14.5 13.2626C13.7236 13.093 12.8808 13 12 13C10.9264 13 9.90926 13.1381 9 13.3849" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'user-block-rounded',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.8284 15.1716L14.1716 20.8284" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 18C21 20.2091 19.2091 22 17 22C15.8869 22 14.8799 21.5453 14.1548 20.8115C13.4408 20.089 13 19.096 13 18C13 15.8976 14.6221 14.174 16.683 14.0124C16.7876 14.0042 16.8933 14 17 14C19.2091 14 21 15.7909 21 18Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.683 14.0124C15.4431 13.3838 13.8093 13.0019 12.019 13.0019C8.14253 13.0019 5 14.7924 5 17.001C5 19.2096 8.14253 21 12.019 21C12.7637 21 13.4813 20.9339 14.1548 20.8115" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'user-block-rounded',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21 18C21 20.2091 19.2091 22 17 22C15.8869 22 14.8799 21.5453 14.1548 20.8115C13.4408 20.089 13 19.096 13 18C13 15.8976 14.6221 14.174 16.683 14.0124C16.7876 14.0042 16.8933 14 17 14C19.2091 14 21 15.7909 21 18Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.8284 15.1716L14.1716 20.8284" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.683 14.0124C15.4431 13.3838 13.8093 13.0019 12.019 13.0019C8.14253 13.0019 5 14.7924 5 17.001C5 19.2096 8.14253 21 12.019 21C12.7637 21 13.4813 20.9339 14.1548 20.8115" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'user-block-rounded',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C9.37665 1.25 7.25 3.37665 7.25 6C7.25 8.62335 9.37665 10.75 12 10.75C14.6234 10.75 16.75 8.62335 16.75 6C16.75 3.37665 14.6234 1.25 12 1.25ZM8.75 6C8.75 4.20507 10.2051 2.75 12 2.75C13.7949 2.75 15.25 4.20507 15.25 6C15.25 7.79493 13.7949 9.25 12 9.25C10.2051 9.25 8.75 7.79493 8.75 6Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.9107 21.6083C13.2991 21.7009 12.6587 21.75 12 21.75C9.96067 21.75 8.07752 21.2792 6.67815 20.4796C5.3 19.6921 4.25 18.4899 4.25 17C4.25 15.5101 5.3 14.3079 6.67815 13.5204C8.07752 12.7208 9.96067 12.25 12 12.25C13.8045 12.25 15.4825 12.6184 16.8117 13.2537C16.8742 13.2512 16.937 13.25 17 13.25C19.6234 13.25 21.75 15.3766 21.75 18C21.75 20.6234 19.6234 22.75 17 22.75C15.8204 22.75 14.7413 22.32 13.9107 21.6083ZM13.75 18C13.75 16.2051 15.2051 14.75 17 14.75C17.6257 14.75 18.2102 14.9268 18.7061 15.2333L14.2333 19.7061C13.9268 19.2102 13.75 18.6257 13.75 18ZM15.2939 20.7667L19.7667 16.2939C20.0732 16.7898 20.25 17.3743 20.25 18C20.25 19.7949 18.7949 21.25 17 21.25C16.3743 21.25 15.7898 21.0732 15.2939 20.7667ZM14.4176 14.0127C13.113 14.8593 12.25 16.3289 12.25 18C12.25 18.8029 12.4492 19.5593 12.8009 20.2224C12.5388 20.2406 12.2715 20.25 12 20.25C10.1733 20.25 8.55649 19.8253 7.42236 19.1772C6.26701 18.517 5.75 17.7193 5.75 17C5.75 16.2807 6.26701 15.483 7.42236 14.8228C8.55649 14.1747 10.1733 13.75 12 13.75C12.8611 13.75 13.6767 13.8444 14.4176 14.0127Z" fill="currentColor"/>''',
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
