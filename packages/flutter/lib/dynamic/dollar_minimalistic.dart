// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `dollar-minimalistic` icon in every style.
///
/// Prefer the static widgets (e.g. `DollarMinimalisticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class DollarMinimalisticIcon extends StatelessWidget {
  /// Creates the `dollar-minimalistic` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const DollarMinimalisticIcon({
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
    name: 'dollar-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22ZM12.75 6C12.75 5.58579 12.4142 5.25 12 5.25C11.5858 5.25 11.25 5.58579 11.25 6V6.31673C9.61957 6.60867 8.25 7.83361 8.25 9.5C8.25 11.4172 10.0628 12.75 12 12.75C13.3765 12.75 14.25 13.6557 14.25 14.5C14.25 15.3443 13.3765 16.25 12 16.25C10.6235 16.25 9.75 15.3443 9.75 14.5C9.75 14.0858 9.41421 13.75 9 13.75C8.58579 13.75 8.25 14.0858 8.25 14.5C8.25 16.1664 9.61957 17.3913 11.25 17.6833V18C11.25 18.4142 11.5858 18.75 12 18.75C12.4142 18.75 12.75 18.4142 12.75 18V17.6833C14.3804 17.3913 15.75 16.1664 15.75 14.5C15.75 12.5828 13.9372 11.25 12 11.25C10.6235 11.25 9.75 10.3443 9.75 9.5C9.75 8.65573 10.6235 7.75 12 7.75C13.3765 7.75 14.25 8.65573 14.25 9.5C14.25 9.91421 14.5858 10.25 15 10.25C15.4142 10.25 15.75 9.91421 15.75 9.5C15.75 7.83361 14.3804 6.60867 12.75 6.31673V6Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'dollar-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 6C12.75 5.58579 12.4142 5.25 12 5.25C11.5858 5.25 11.25 5.58579 11.25 6V6.31673C9.61957 6.60867 8.25 7.83361 8.25 9.5C8.25 11.4172 10.0628 12.75 12 12.75C13.3765 12.75 14.25 13.6557 14.25 14.5C14.25 15.3443 13.3765 16.25 12 16.25C10.6235 16.25 9.75 15.3443 9.75 14.5C9.75 14.0858 9.41421 13.75 9 13.75C8.58579 13.75 8.25 14.0858 8.25 14.5C8.25 16.1664 9.61957 17.3913 11.25 17.6833V18C11.25 18.4142 11.5858 18.75 12 18.75C12.4142 18.75 12.75 18.4142 12.75 18V17.6833C14.3804 17.3913 15.75 16.1664 15.75 14.5C15.75 12.5828 13.9372 11.25 12 11.25C10.6235 11.25 9.75 10.3443 9.75 9.5C9.75 8.65573 10.6235 7.75 12 7.75C13.3765 7.75 14.25 8.65573 14.25 9.5C14.25 9.91421 14.5858 10.25 15 10.25C15.4142 10.25 15.75 9.91421 15.75 9.5C15.75 7.83361 14.3804 6.60867 12.75 6.31673V6Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'dollar-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 17V17.5V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6V6.5V7" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 9.5C15 8.11929 13.6569 7 12 7C10.3431 7 9 8.11929 9 9.5C9 10.8807 10.3431 12 12 12C13.6569 12 15 13.1193 15 14.5C15 15.8807 13.6569 17 12 17C10.3431 17 9 15.8807 9 14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'dollar-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 17V17.5V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6V6.5V7" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 9.5C15 8.11929 13.6569 7 12 7C10.3431 7 9 8.11929 9 9.5C9 10.8807 10.3431 12 12 12C13.6569 12 15 13.1193 15 14.5C15 15.8807 13.6569 17 12 17C10.3431 17 9 15.8807 9 14.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'dollar-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 17V17.5V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6V6.5V7" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 9.5C15 8.11929 13.6569 7 12 7C10.3431 7 9 8.11929 9 9.5C9 10.8807 10.3431 12 12 12C13.6569 12 15 13.1193 15 14.5C15 15.8807 13.6569 17 12 17C10.3431 17 9 15.8807 9 14.5" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'dollar-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM12 5.25C12.4142 5.25 12.75 5.58579 12.75 6V6.31673C14.3804 6.60867 15.75 7.83361 15.75 9.5C15.75 9.91421 15.4142 10.25 15 10.25C14.5858 10.25 14.25 9.91421 14.25 9.5C14.25 8.65573 13.3765 7.75 12 7.75C10.6235 7.75 9.75 8.65573 9.75 9.5C9.75 10.3443 10.6235 11.25 12 11.25C13.9372 11.25 15.75 12.5828 15.75 14.5C15.75 16.1664 14.3804 17.3913 12.75 17.6833V18C12.75 18.4142 12.4142 18.75 12 18.75C11.5858 18.75 11.25 18.4142 11.25 18V17.6833C9.61957 17.3913 8.25 16.1664 8.25 14.5C8.25 14.0858 8.58579 13.75 9 13.75C9.41421 13.75 9.75 14.0858 9.75 14.5C9.75 15.3443 10.6235 16.25 12 16.25C13.3765 16.25 14.25 15.3443 14.25 14.5C14.25 13.6557 13.3765 12.75 12 12.75C10.0628 12.75 8.25 11.4172 8.25 9.5C8.25 7.83361 9.61957 6.60867 11.25 6.31673V6C11.25 5.58579 11.5858 5.25 12 5.25Z" fill="currentColor"/>''',
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
