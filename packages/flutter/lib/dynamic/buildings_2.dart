// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `buildings-2` icon in every style.
///
/// Prefer the static widgets (e.g. `Buildings2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Buildings2Icon extends StatelessWidget {
  /// Creates the `buildings-2` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Buildings2Icon({
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
    name: 'buildings-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21.25 8.5C21.25 7.09554 21.25 6.39331 20.9129 5.88886C20.767 5.67048 20.5795 5.48298 20.3611 5.33706C19.9199 5.04224 19.3274 5.00529 18.246 5.00066C18.2501 5.29206 18.25 5.59655 18.25 5.91051L18.25 6V7.25H19.25C19.6642 7.25 20 7.58579 20 8C20 8.41421 19.6642 8.75 19.25 8.75H18.25V10.25H19.25C19.6642 10.25 20 10.5858 20 11C20 11.4142 19.6642 11.75 19.25 11.75H18.25V13.25H19.25C19.6642 13.25 20 13.5858 20 14C20 14.4142 19.6642 14.75 19.25 14.75H18.25V21.25H16.75V6C16.75 4.11438 16.75 3.17157 16.1642 2.58579C15.5784 2 14.6356 2 12.75 2H10.75C8.86438 2 7.92157 2 7.33579 2.58579C6.75 3.17157 6.75 4.11438 6.75 6V21.25H5.25V14.75H4.25C3.83579 14.75 3.5 14.4142 3.5 14C3.5 13.5858 3.83579 13.25 4.25 13.25H5.25V11.75H4.25C3.83579 11.75 3.5 11.4142 3.5 11C3.5 10.5858 3.83579 10.25 4.25 10.25H5.25V8.75H4.25C3.83579 8.75 3.5 8.41421 3.5 8C3.5 7.58579 3.83579 7.25 4.25 7.25H5.25V6L5.24999 5.9105C5.24996 5.59655 5.24992 5.29206 5.25403 5.00066C4.17262 5.00529 3.58008 5.04224 3.13886 5.33706C2.92048 5.48298 2.73298 5.67048 2.58706 5.88886C2.25 6.39331 2.25 7.09554 2.25 8.5V21.25H1.75C1.33579 21.25 1 21.5858 1 22C1 22.4142 1.33579 22.75 1.75 22.75H21.75C22.1642 22.75 22.5 22.4142 22.5 22C22.5 21.5858 22.1642 21.25 21.75 21.25H21.25V8.5ZM9 11.75C9 11.3358 9.33579 11 9.75 11H13.75C14.1642 11 14.5 11.3358 14.5 11.75C14.5 12.1642 14.1642 12.5 13.75 12.5H9.75C9.33579 12.5 9 12.1642 9 11.75ZM9 14.75C9 14.3358 9.33579 14 9.75 14H13.75C14.1642 14 14.5 14.3358 14.5 14.75C14.5 15.1642 14.1642 15.5 13.75 15.5H9.75C9.33579 15.5 9 15.1642 9 14.75ZM11.75 18.25C12.1642 18.25 12.5 18.5858 12.5 19V21.25H11V19C11 18.5858 11.3358 18.25 11.75 18.25ZM9 6.25C9 5.83579 9.33579 5.5 9.75 5.5H13.75C14.1642 5.5 14.5 5.83579 14.5 6.25C14.5 6.66421 14.1642 7 13.75 7H9.75C9.33579 7 9 6.66421 9 6.25ZM9 9.25C9 8.83579 9.33579 8.5 9.75 8.5H13.75C14.1642 8.5 14.5 8.83579 14.5 9.25C14.5 9.66421 14.1642 10 13.75 10H9.75C9.33579 10 9 9.66421 9 9.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'buildings-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.75 2H12.75C14.6356 2 15.5784 2 16.1642 2.58579C16.75 3.17157 16.75 4.11438 16.75 6V21.25H18.25H21.25H21.75C22.1642 21.25 22.5 21.5858 22.5 22C22.5 22.4142 22.1642 22.75 21.75 22.75H1.75C1.33579 22.75 1 22.4142 1 22C1 21.5858 1.33579 21.25 1.75 21.25H2.25H5.25H6.75V6C6.75 4.11438 6.75 3.17157 7.33579 2.58579C7.92157 2 8.86438 2 10.75 2ZM11.75 18.25C12.1642 18.25 12.5 18.5858 12.5 19V21.25H11V19C11 18.5858 11.3358 18.25 11.75 18.25ZM9.75 14C9.33579 14 9 14.3358 9 14.75C9 15.1642 9.33579 15.5 9.75 15.5H13.75C14.1642 15.5 14.5 15.1642 14.5 14.75C14.5 14.3358 14.1642 14 13.75 14H9.75ZM9 11.75C9 11.3358 9.33579 11 9.75 11H13.75C14.1642 11 14.5 11.3358 14.5 11.75C14.5 12.1642 14.1642 12.5 13.75 12.5H9.75C9.33579 12.5 9 12.1642 9 11.75ZM9.75 8.5C9.33579 8.5 9 8.83579 9 9.25C9 9.66421 9.33579 10 9.75 10H13.75C14.1642 10 14.5 9.66421 14.5 9.25C14.5 8.83579 14.1642 8.5 13.75 8.5H9.75ZM9 6.25C9 5.83579 9.33579 5.5 9.75 5.5H13.75C14.1642 5.5 14.5 5.83579 14.5 6.25C14.5 6.66421 14.1642 7 13.75 7H9.75C9.33579 7 9 6.66421 9 6.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.9129 5.88881C21.25 6.39325 21.25 7.09549 21.25 8.49995V21.2499H21.75C22.1642 21.2499 22.5 21.5857 22.5 21.9999C22.5 22.4142 22.1642 22.7499 21.75 22.7499H1.75C1.33579 22.7499 1 22.4142 1 21.9999C1 21.5857 1.33579 21.2499 1.75 21.2499H2.25V8.49995C2.25 7.09549 2.25 6.39325 2.58706 5.88881C2.73298 5.67043 2.92048 5.48293 3.13886 5.33701C3.58008 5.04219 5.67561 5.00524 6.75702 5.00061C6.75291 5.292 6.75294 5.59649 6.75298 5.91045L6.75299 5.99995V7.24995H4.25C3.83579 7.24995 3.5 7.58573 3.5 7.99995C3.5 8.41416 3.83579 8.74995 4.25 8.74995H6.75299V10.2499H4.25C3.83579 10.2499 3.5 10.5857 3.5 10.9999C3.5 11.4142 3.83579 11.7499 4.25 11.7499H6.75299V13.2499H4.25C3.83579 13.2499 3.5 13.5857 3.5 13.9999C3.5 14.4142 3.83579 14.7499 4.25 14.7499H6.75299V21.2499H16.7529V14.7499H19.25C19.6642 14.7499 20 14.4142 20 13.9999C20 13.5857 19.6642 13.2499 19.25 13.2499H16.7529V11.7499H19.25C19.6642 11.7499 20 11.4142 20 10.9999C20 10.5857 19.6642 10.2499 19.25 10.2499H16.7529V8.74995H19.25C19.6642 8.74995 20 8.41416 20 7.99995C20 7.58573 19.6642 7.24995 19.25 7.24995H16.7529V5.99995L16.7529 5.91046V5.91043C16.753 5.59648 16.753 5.292 16.7489 5.00061C17.8303 5.00524 19.9199 5.04219 20.3611 5.33701C20.5795 5.48293 20.767 5.67043 20.9129 5.88881Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'buildings-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 22L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 22V6C17 4.11438 17 3.17157 16.4142 2.58579C15.8284 2 14.8856 2 13 2H11C9.11438 2 8.17157 2 7.58579 2.58579C7 3.17157 7 4.11438 7 6V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 11.5C21 10.0955 21 9.39331 20.6629 8.88886C20.517 8.67048 20.3295 8.48298 20.1111 8.33706C19.6067 8 18.9045 8 17.5 8M21 22V15.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 22V20M6.5 8C5.09554 8 4.39331 8 3.88886 8.33706C3.67048 8.48298 3.48298 8.67048 3.33706 8.88886C3 9.39331 3 10.0955 3 11.5V16" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22V19" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 5H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 14H10.5M14 14H12.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 8H13.5M10 8H11.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 11H14" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'buildings-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 22L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 22V6C17 4.11438 17 3.17157 16.4142 2.58579C15.8284 2 14.8856 2 13 2H11C9.11438 2 8.17157 2 7.58579 2.58579C7 3.17157 7 4.11438 7 6V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 22V11.5C21 10.0955 21 9.39331 20.6629 8.88886C20.517 8.67048 20.3295 8.48298 20.1111 8.33706C19.6067 8 18.9045 8 17.5 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 22V11.5C3 10.0955 3 9.39331 3.33706 8.88886C3.48298 8.67048 3.67048 8.48298 3.88886 8.33706C4.39331 8 5.09554 8 6.5 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22V19" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 5H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 8H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 11H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 14H14" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'buildings-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 22L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 22V6C17 4.11438 17 3.17157 16.4142 2.58579C15.8284 2 14.8856 2 13 2H11C9.11438 2 8.17157 2 7.58579 2.58579C7 3.17157 7 4.11438 7 6V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22V19" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 22V11.5C21 10.0955 21 9.39331 20.6629 8.88886C20.517 8.67048 20.3295 8.48298 20.1111 8.33706C19.6067 8 18.9045 8 17.5 8" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M3 22V11.5C3 10.0955 3 9.39331 3.33706 8.88886C3.48298 8.67048 3.67048 8.48298 3.88886 8.33706C4.39331 8 5.09554 8 6.5 8" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 5H14" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 8H14" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 11H14" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 14H14" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'buildings-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.948 1.25H13.052C13.9505 1.24997 14.6997 1.24995 15.2945 1.32991C15.9223 1.41432 16.4891 1.59999 16.9445 2.05546C17.4 2.51093 17.5857 3.07773 17.6701 3.70552C17.7501 4.30031 17.75 5.04953 17.75 5.94801L17.75 7.25005C18.3266 7.25051 18.8152 7.25491 19.219 7.29599C19.6925 7.34415 20.1318 7.44886 20.5278 7.71346C20.8281 7.9141 21.0859 8.17191 21.2865 8.47218C21.5511 8.86818 21.6559 9.30755 21.704 9.78102C21.75 10.2334 21.75 10.7921 21.75 11.4617V21.25H22C22.4142 21.25 22.75 21.5858 22.75 22C22.75 22.4142 22.4142 22.75 22 22.75H2C1.58579 22.75 1.25 22.4142 1.25 22C1.25 21.5858 1.58579 21.25 2 21.25H2.25L2.25 11.4617C2.24998 10.7921 2.24997 10.2334 2.29598 9.78102C2.34415 9.30755 2.44886 8.86818 2.71346 8.47218C2.91409 8.17191 3.17191 7.9141 3.47218 7.71346C3.86818 7.44886 4.30755 7.34415 4.78102 7.29599C5.18483 7.25491 5.67343 7.25051 6.25 7.25005L6.25 5.94801C6.24997 5.04953 6.24995 4.30031 6.32991 3.70552C6.41432 3.07773 6.59999 2.51093 7.05546 2.05546C7.51093 1.59999 8.07773 1.41432 8.70552 1.32991C9.3003 1.24995 10.0495 1.24997 10.948 1.25ZM6.25 8.7501C5.66741 8.75075 5.25586 8.75542 4.93283 8.78828C4.57796 8.82438 4.41399 8.8882 4.30554 8.96067C4.16905 9.05186 4.05186 9.16905 3.96066 9.30554C3.8882 9.41399 3.82438 9.57796 3.78828 9.93283C3.75091 10.3002 3.75 10.7822 3.75 11.5V21.25H6.25V8.7501ZM7.75 21.25H11.25V19C11.25 18.5858 11.5858 18.25 12 18.25C12.4142 18.25 12.75 18.5858 12.75 19V21.25H16.25V6C16.25 5.03599 16.2484 4.38843 16.1835 3.90539C16.1214 3.44393 16.0142 3.24644 15.8839 3.11612C15.7536 2.9858 15.5561 2.87858 15.0946 2.81654C14.6116 2.7516 13.964 2.75 13 2.75H11C10.036 2.75 9.38843 2.7516 8.90539 2.81654C8.44393 2.87858 8.24643 2.9858 8.11612 3.11612C7.9858 3.24644 7.87858 3.44393 7.81654 3.90539C7.75159 4.38843 7.75 5.03599 7.75 6V21.25ZM17.75 21.25H20.25V11.5C20.25 10.7822 20.2491 10.3002 20.2117 9.93283C20.1756 9.57796 20.1118 9.41399 20.0393 9.30554C19.9481 9.16905 19.8309 9.05186 19.6945 8.96067C19.586 8.8882 19.422 8.82438 19.0672 8.78828C18.7441 8.75542 18.3326 8.75075 17.75 8.7501V21.25ZM9.25 5C9.25 4.58579 9.58579 4.25 10 4.25H14C14.4142 4.25 14.75 4.58579 14.75 5C14.75 5.41422 14.4142 5.75 14 5.75H10C9.58579 5.75 9.25 5.41422 9.25 5ZM9.25 8C9.25 7.58579 9.58579 7.25 10 7.25H14C14.4142 7.25 14.75 7.58579 14.75 8C14.75 8.41422 14.4142 8.75 14 8.75H10C9.58579 8.75 9.25 8.41422 9.25 8ZM9.25 11C9.25 10.5858 9.58579 10.25 10 10.25H14C14.4142 10.25 14.75 10.5858 14.75 11C14.75 11.4142 14.4142 11.75 14 11.75H10C9.58579 11.75 9.25 11.4142 9.25 11ZM9.25 14C9.25 13.5858 9.58579 13.25 10 13.25H14C14.4142 13.25 14.75 13.5858 14.75 14C14.75 14.4142 14.4142 14.75 14 14.75H10C9.58579 14.75 9.25 14.4142 9.25 14Z" fill="currentColor"/>''',
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
