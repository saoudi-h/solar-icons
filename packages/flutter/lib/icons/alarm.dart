// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `alarm` icon.
class AlarmIcon extends StatelessWidget {
  /// Creates the `alarm` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const AlarmIcon({
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

  /// When true, ignores [SolarTheme] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'alarm',
    style: SolarIconStyle.bold,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C16.8362 22 20.7567 18.1162 20.7567 13.3253C20.7567 8.53446 16.8362 4.65069 12 4.65069C7.16383 4.65069 3.24334 8.53446 3.24334 13.3253C3.24334 18.1162 7.16383 22 12 22ZM12 8.74705C12.403 8.74705 12.7297 9.0707 12.7297 9.46994V13.0259L14.9484 15.2238C15.2334 15.5061 15.2334 15.9638 14.9484 16.2461C14.6634 16.5284 14.2014 16.5284 13.9164 16.2461L11.484 13.8365C11.3472 13.7009 11.2703 13.5171 11.2703 13.3253V9.46994C11.2703 9.0707 11.597 8.74705 12 8.74705Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M8.2405 2.33986C8.45409 2.67841 8.3502 3.1244 8.00844 3.33599L4.11657 5.74562C3.77481 5.95722 3.32461 5.8543 3.11102 5.51574C2.89742 5.17718 3.00131 4.7312 3.34307 4.5196L7.23494 2.10998C7.5767 1.89838 8.0269 2.0013 8.2405 2.33986Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M15.7595 2.33985C15.9731 2.0013 16.4233 1.89838 16.7651 2.10998L20.6569 4.5196C20.9987 4.7312 21.1026 5.17719 20.889 5.51574C20.6754 5.8543 20.2252 5.95722 19.8834 5.74562L15.9916 3.33599C15.6498 3.1244 15.5459 2.67841 15.7595 2.33985Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'alarm',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M11.9988 8.74671C12.4018 8.74671 12.7282 9.07023 12.7283 9.46937V13.026L14.9471 15.2233C15.232 15.5056 15.232 15.9634 14.9471 16.2457C14.6621 16.5278 14.2008 16.5278 13.9158 16.2457L11.4832 13.8366C11.3464 13.701 11.2693 13.5166 11.2693 13.3248V9.46937C11.2695 9.07031 11.596 8.74684 11.9988 8.74671Z" fill="currentColor"/>
<path d="M7.23516 2.10999C7.57686 1.89853 8.02644 2.00107 8.24004 2.33949C8.45358 2.67795 8.35013 3.12391 8.0086 3.33558L4.11602 5.74574C3.77434 5.95693 3.32465 5.85362 3.11114 5.51527C2.89758 5.17677 3.00097 4.73081 3.34258 4.51917L7.23516 2.10999Z" fill="currentColor"/>
<path d="M15.7596 2.33949C15.9732 2.00107 16.4228 1.89854 16.7645 2.10999L20.657 4.51917C20.9986 4.73081 21.102 5.17677 20.8885 5.51527C20.675 5.85362 20.2253 5.95693 19.8836 5.74574L15.991 3.33558C15.6495 3.12391 15.546 2.67794 15.7596 2.33949Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" d="M11.9998 21.9997C16.836 21.9997 20.7565 18.1159 20.7565 13.325C20.7565 8.53417 16.836 4.65039 11.9998 4.65039C7.16366 4.65039 3.24316 8.53417 3.24316 13.325C3.24316 18.1159 7.16366 21.9997 11.9998 21.9997Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'alarm',
    style: SolarIconStyle.broken,
    body: r'''<path d="M12 9V13L14.5 15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3.5 4.5L7.50002 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 4.5L16.5 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7.5 5.20404C8.82378 4.43827 10.3607 4 12 4C16.9706 4 21 8.02944 21 13C21 17.9706 16.9706 22 12 22C7.02944 22 3 17.9706 3 13C3 11.3607 3.43827 9.82378 4.20404 8.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'alarm',
    style: SolarIconStyle.linear,
    body: r'''<circle cx="12" cy="13" r="9" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 9V13L14.5 15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3.5 4.5L7.50002 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 4.5L16.5 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'alarm',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M12 9V13L14.5 15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3.5 4.5L7.50002 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 4.5L16.5 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent: r'''<circle opacity="0.5" cx="12" cy="13" r="9" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'alarm',
    style: SolarIconStyle.outline,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M8.13602 1.6026C8.35556 1.95386 8.24877 2.41657 7.89752 2.6361L3.8975 5.1361C3.54624 5.35563 3.08353 5.24885 2.864 4.8976C2.64447 4.54634 2.75125 4.08363 3.1025 3.8641L7.10253 1.3641C7.45378 1.14457 7.91649 1.25135 8.13602 1.6026ZM15.864 1.6026C16.0835 1.25135 16.5462 1.14457 16.8975 1.3641L20.8975 3.8641C21.2488 4.08363 21.3555 4.54635 21.136 4.8976C20.9165 5.24885 20.4538 5.35563 20.1025 5.1361L16.1025 2.6361C15.7512 2.41657 15.6445 1.95385 15.864 1.6026ZM12 4.7501C7.44365 4.7501 3.75 8.44375 3.75 13.0001C3.75 17.5564 7.44365 21.2501 12 21.2501C16.5563 21.2501 20.25 17.5564 20.25 13.0001C20.25 8.44375 16.5563 4.7501 12 4.7501ZM2.25 13.0001C2.25 7.61532 6.61522 3.2501 12 3.2501C17.3848 3.2501 21.75 7.61532 21.75 13.0001C21.75 18.3849 17.3848 22.7501 12 22.7501C6.61522 22.7501 2.25 18.3849 2.25 13.0001ZM12 8.2501C12.4142 8.2501 12.75 8.58589 12.75 9.0001V12.6894L15.0303 14.9698C15.3232 15.2627 15.3232 15.7375 15.0303 16.0304C14.7374 16.3233 14.2626 16.3233 13.9697 16.0304L11.4697 13.5304C11.329 13.3898 11.25 13.199 11.25 13.0001V9.0001C11.25 8.58589 11.5858 8.2501 12 8.2501Z" fill="currentColor"/>''',
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
