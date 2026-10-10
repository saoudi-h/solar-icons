// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `git-branch` icon in every style.
///
/// Prefer the static widgets (e.g. `GitBranchLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class GitBranchIcon extends StatelessWidget {
  /// Creates the `git-branch` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const GitBranchIcon({
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
    name: 'git-branch',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.5 1.25C8.29493 1.25 9.75 2.70507 9.75 4.5C9.75 6.03664 8.68314 7.3224 7.25 7.66113V14.0371C7.37894 13.9432 7.51536 13.8556 7.6582 13.7734C8.79709 13.1186 10.3456 12.8418 12.0879 12.8418C13.693 12.8418 14.9364 12.5401 15.752 12.0352C16.3301 11.6772 16.699 11.2166 16.8516 10.6416C15.4592 10.2745 14.4326 9.00774 14.4326 7.5C14.4326 5.70507 15.8877 4.25 17.6826 4.25C19.4773 4.25026 20.9326 5.70524 20.9326 7.5C20.9326 9.05665 19.8373 10.3558 18.376 10.6738C18.1889 11.805 17.5292 12.6988 16.541 13.3105C15.4003 14.0167 13.8462 14.3418 12.0879 14.3418C10.4666 14.3418 9.22036 14.6061 8.40625 15.0742C7.84369 15.3978 7.48458 15.8158 7.33301 16.3584C8.72425 16.7263 9.75 17.9931 9.75 19.5C9.75 21.2949 8.29493 22.75 6.5 22.75C4.70507 22.75 3.25 21.2949 3.25 19.5C3.25 17.9633 4.31675 16.6765 5.75 16.3379V7.66113C4.31686 7.3224 3.25 6.03664 3.25 4.5C3.25 2.70507 4.70507 1.25 6.5 1.25ZM6.5 17.75C5.5335 17.75 4.75 18.5335 4.75 19.5C4.75 20.4665 5.5335 21.25 6.5 21.25C7.4665 21.25 8.25 20.4665 8.25 19.5C8.25 18.5335 7.4665 17.75 6.5 17.75ZM17.6826 5.75C16.7161 5.75 15.9326 6.5335 15.9326 7.5C15.9326 8.4665 16.7161 9.25 17.6826 9.25C18.6489 9.24974 19.4326 8.46634 19.4326 7.5C19.4326 6.53366 18.6489 5.75026 17.6826 5.75ZM6.5 2.75C5.5335 2.75 4.75 3.5335 4.75 4.5C4.75 5.4665 5.5335 6.25 6.5 6.25C7.4665 6.25 8.25 5.4665 8.25 4.5C8.25 3.5335 7.4665 2.75 6.5 2.75Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'git-branch',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.5 1.25C8.29493 1.25 9.75 2.70507 9.75 4.5C9.75 6.03664 8.68314 7.3224 7.25 7.66113V16.3379C8.68325 16.6765 9.75 17.9633 9.75 19.5C9.75 21.2949 8.29493 22.75 6.5 22.75C4.70507 22.75 3.25 21.2949 3.25 19.5C3.25 17.9633 4.31675 16.6765 5.75 16.3379V7.66113C4.31686 7.3224 3.25 6.03664 3.25 4.5C3.25 2.70507 4.70507 1.25 6.5 1.25ZM6.5 17.75C5.5335 17.75 4.75 18.5335 4.75 19.5C4.75 20.4665 5.5335 21.25 6.5 21.25C7.4665 21.25 8.25 20.4665 8.25 19.5C8.25 18.5335 7.4665 17.75 6.5 17.75ZM6.5 2.75C5.5335 2.75 4.75 3.5335 4.75 4.5C4.75 5.4665 5.5335 6.25 6.5 6.25C7.4665 6.25 8.25 5.4665 8.25 4.5C8.25 3.5335 7.4665 2.75 6.5 2.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M19.4326 7.5C19.4326 6.53366 18.6489 5.75026 17.6826 5.75C16.7161 5.75 15.9326 6.5335 15.9326 7.5C15.9326 8.4665 16.7161 9.25 17.6826 9.25C18.6489 9.24974 19.4326 8.46634 19.4326 7.5ZM20.9326 7.5C20.9326 9.05698 19.8368 10.3562 18.375 10.6738C18.1881 11.8049 17.5292 12.6988 16.541 13.3105C15.4003 14.0167 13.8462 14.3418 12.0879 14.3418C10.4666 14.3418 9.22036 14.6061 8.40625 15.0742C7.63947 15.5152 7.25 16.1315 7.25 17C7.25 17.4142 6.91421 17.75 6.5 17.75C6.08579 17.75 5.75 17.4142 5.75 17C5.75 15.5434 6.47236 14.4554 7.6582 13.7734C8.79709 13.1186 10.3456 12.8418 12.0879 12.8418C13.693 12.8418 14.9364 12.5401 15.752 12.0352C16.3301 11.6772 16.6991 11.2165 16.8516 10.6416C15.4592 10.2745 14.4326 9.00774 14.4326 7.5C14.4326 5.70507 15.8877 4.25 17.6826 4.25C19.4773 4.25026 20.9326 5.70524 20.9326 7.5Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'git-branch',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 4.5C9 5.88071 7.88071 7 6.5 7C5.11929 7 4 5.88071 4 4.5C4 3.11929 5.11929 2 6.5 2C7.88071 2 9 3.11929 9 4.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.1821 7.5C20.1821 8.88071 19.0628 10 17.6821 10C16.3014 10 15.1821 8.88071 15.1821 7.5C15.1821 6.11929 16.3014 5 17.6821 5C19.0628 5 20.1821 6.11929 20.1821 7.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 19.5C9 20.8807 7.88071 22 6.5 22C5.11929 22 4 20.8807 4 19.5C4 18.1193 5.11929 17 6.5 17C7.88071 17 9 18.1193 9 19.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.5 17L6.5 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.6821 10C17.6821 11.8644 16.2639 13.0389 13.9841 13.4384" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.99359 13.7593C7.83214 14.1447 6.5 15.2004 6.5 16.9999" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'git-branch',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9 4.5C9 5.88071 7.88071 7 6.5 7C5.11929 7 4 5.88071 4 4.5C4 3.11929 5.11929 2 6.5 2C7.88071 2 9 3.11929 9 4.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.1821 7.5C20.1821 8.88071 19.0628 10 17.6821 10C16.3014 10 15.1821 8.88071 15.1821 7.5C15.1821 6.11929 16.3014 5 17.6821 5C19.0628 5 20.1821 6.11929 20.1821 7.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 19.5C9 20.8807 7.88071 22 6.5 22C5.11929 22 4 20.8807 4 19.5C4 18.1193 5.11929 17 6.5 17C7.88071 17 9 18.1193 9 19.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.5 17L6.5 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.6821 10C17.6821 12.3383 15.4514 13.5914 12.0878 13.5914C8.72419 13.5914 6.5 14.6747 6.5 17" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'git-branch',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 4.5C9 5.88071 7.88071 7 6.5 7C5.11929 7 4 5.88071 4 4.5C4 3.11929 5.11929 2 6.5 2C7.88071 2 9 3.11929 9 4.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 19.5C9 20.8807 7.88071 22 6.5 22C5.11929 22 4 20.8807 4 19.5C4 18.1193 5.11929 17 6.5 17C7.88071 17 9 18.1193 9 19.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.5 17L6.5 7" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17.6821 10C19.0628 10 20.1821 8.88071 20.1821 7.5C20.1821 6.11929 19.0628 5 17.6821 5C16.3014 5 15.1821 6.11929 15.1821 7.5C15.1821 8.88071 16.3014 10 17.6821 10ZM17.6821 10C17.6821 12.3383 15.4514 13.5914 12.0878 13.5914C8.72419 13.5914 6.5 14.6747 6.5 17" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'git-branch',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.5 1.25C8.29493 1.25 9.75 2.70507 9.75 4.5C9.75 6.03664 8.68314 7.3224 7.25 7.66113V14.0371C7.37894 13.9432 7.51536 13.8556 7.6582 13.7734C8.79709 13.1186 10.3456 12.8418 12.0879 12.8418C13.693 12.8418 14.9364 12.5401 15.752 12.0352C16.3301 11.6772 16.699 11.2166 16.8516 10.6416C15.4592 10.2745 14.4326 9.00774 14.4326 7.5C14.4326 5.70507 15.8877 4.25 17.6826 4.25C19.4773 4.25026 20.9326 5.70524 20.9326 7.5C20.9326 9.05665 19.8373 10.3558 18.376 10.6738C18.1889 11.805 17.5292 12.6988 16.541 13.3105C15.4003 14.0167 13.8462 14.3418 12.0879 14.3418C10.4666 14.3418 9.22036 14.6061 8.40625 15.0742C7.84369 15.3978 7.48458 15.8158 7.33301 16.3584C8.72425 16.7263 9.75 17.9931 9.75 19.5C9.75 21.2949 8.29493 22.75 6.5 22.75C4.70507 22.75 3.25 21.2949 3.25 19.5C3.25 17.9633 4.31675 16.6765 5.75 16.3379V7.66113C4.31686 7.3224 3.25 6.03664 3.25 4.5C3.25 2.70507 4.70507 1.25 6.5 1.25ZM6.5 17.75C5.5335 17.75 4.75 18.5335 4.75 19.5C4.75 20.4665 5.5335 21.25 6.5 21.25C7.4665 21.25 8.25 20.4665 8.25 19.5C8.25 18.5335 7.4665 17.75 6.5 17.75ZM17.6826 5.75C16.7161 5.75 15.9326 6.5335 15.9326 7.5C15.9326 8.4665 16.7161 9.25 17.6826 9.25C18.6489 9.24974 19.4326 8.46634 19.4326 7.5C19.4326 6.53366 18.6489 5.75026 17.6826 5.75ZM6.5 2.75C5.5335 2.75 4.75 3.5335 4.75 4.5C4.75 5.4665 5.5335 6.25 6.5 6.25C7.4665 6.25 8.25 5.4665 8.25 4.5C8.25 3.5335 7.4665 2.75 6.5 2.75Z" fill="currentColor"/>''',
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
