// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bomb` icon in every style.
///
/// Prefer the static widgets (e.g. `BombLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class BombIcon extends StatelessWidget {
  /// Creates the `bomb` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const BombIcon({
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
    name: 'bomb',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17 14.5C17 18.6421 13.6421 22 9.5 22C5.35786 22 2 18.6421 2 14.5C2 10.3579 5.35786 7 9.5 7C13.6421 7 17 10.3579 17 14.5Z" fill="currentColor"/>
<path d="M17.9811 2.35316C18.1668 1.88228 18.8332 1.88228 19.0189 2.35316L19.6733 4.01242C19.73 4.15618 19.8438 4.26998 19.9876 4.32668L21.6468 4.98108C22.1177 5.16679 22.1177 5.83321 21.6468 6.01892L19.9876 6.67332C19.8438 6.73002 19.73 6.84382 19.6733 6.98758L19.0189 8.64684C18.8332 9.11772 18.1668 9.11772 17.9811 8.64684L17.3267 6.98758C17.27 6.84382 17.1562 6.73002 17.0124 6.67332L15.3532 6.01892C14.8823 5.83321 14.8823 5.16679 15.3532 4.98108L17.0124 4.32668C17.1562 4.26998 17.27 4.15618 17.3267 4.01242L17.9811 2.35316Z" fill="currentColor"/>
<path d="M16.0175 9.04328L16.7669 8.29386L16.4669 7.53312L15.7063 7.23315L14.9568 7.98261C15.3407 8.30436 15.6957 8.6594 16.0175 9.04328Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'bomb',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.4772 6.46191L14.2466 8.69257C14.6344 9.00995 14.9899 9.36541 15.3072 9.75325L17.5378 7.5226L17.3267 6.98727C17.27 6.84351 17.1562 6.72971 17.0124 6.67301L16.4772 6.46191Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M9.5 7.00014C13.6421 7.00014 17 10.358 17 14.5001C17 18.6423 13.6421 22.0001 9.5 22.0001C5.35786 22.0001 2 18.6423 2 14.5001C2 10.358 5.35786 7.00014 9.5 7.00014Z" fill="currentColor"/>
<path d="M17.9814 2.35365C18.1672 1.88277 18.8328 1.88277 19.0186 2.35365L19.6729 4.01283C19.7296 4.15653 19.8436 4.27058 19.9873 4.32728L21.6465 4.98158C22.1174 5.16729 22.1174 5.83298 21.6465 6.01869L19.9873 6.67299C19.8436 6.72969 19.7296 6.84374 19.6729 6.98744L19.0186 8.64662C18.8328 9.1175 18.1672 9.1175 17.9814 8.64662L17.3271 6.98744C17.2704 6.84374 17.1564 6.72969 17.0127 6.67299L15.3535 6.01869C14.8826 5.83298 14.8826 5.16729 15.3535 4.98158L17.0127 4.32728C17.1564 4.27058 17.2704 4.15653 17.3271 4.01283L17.9814 2.35365Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'bomb',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5.75 8.00337C6.85315 7.36523 8.13392 7 9.5 7C13.6421 7 17 10.3579 17 14.5C17 18.6421 13.6421 22 9.5 22C5.35786 22 2 18.6421 2 14.5C2 13.1339 2.36523 11.8532 3.00337 10.75" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 7L15 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.9811 2.35316C18.1668 1.88228 18.8332 1.88228 19.0189 2.35316L19.6733 4.01242C19.73 4.15618 19.8438 4.26998 19.9876 4.32668L21.6468 4.98108C22.1177 5.16679 22.1177 5.83321 21.6468 6.01892L19.9876 6.67332C19.8438 6.73002 19.73 6.84382 19.6733 6.98758L19.0189 8.64684C18.8332 9.11772 18.1668 9.11772 17.9811 8.64684L17.3267 6.98758C17.27 6.84382 17.1562 6.73002 17.0124 6.67332L15.3532 6.01892C14.8823 5.83321 14.8823 5.16679 15.3532 4.98108L17.0124 4.32668C17.1562 4.26998 17.27 4.15618 17.3267 4.01242L17.9811 2.35316Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'bomb',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="9.5" cy="14.5" r="7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 7L15 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.9811 2.35316C18.1668 1.88228 18.8332 1.88228 19.0189 2.35316L19.6733 4.01242C19.73 4.15618 19.8438 4.26998 19.9876 4.32668L21.6468 4.98108C22.1177 5.16679 22.1177 5.83321 21.6468 6.01892L19.9876 6.67332C19.8438 6.73002 19.73 6.84382 19.6733 6.98758L19.0189 8.64684C18.8332 9.11772 18.1668 9.11772 17.9811 8.64684L17.3267 6.98758C17.27 6.84382 17.1562 6.73002 17.0124 6.67332L15.3532 6.01892C14.8823 5.83321 14.8823 5.16679 15.3532 4.98108L17.0124 4.32668C17.1562 4.26998 17.27 4.15618 17.3267 4.01242L17.9811 2.35316Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'bomb',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="9.5" cy="14.5" r="7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.9811 2.35316C18.1668 1.88228 18.8332 1.88228 19.0189 2.35316L19.6733 4.01242C19.73 4.15618 19.8438 4.26998 19.9876 4.32668L21.6468 4.98108C22.1177 5.16679 22.1177 5.83321 21.6468 6.01892L19.9876 6.67332C19.8438 6.73002 19.73 6.84382 19.6733 6.98758L19.0189 8.64684C18.8332 9.11772 18.1668 9.11772 17.9811 8.64684L17.3267 6.98758C17.27 6.84382 17.1562 6.73002 17.0124 6.67332L15.3532 6.01892C14.8823 5.83321 14.8823 5.16679 15.3532 4.98108L17.0124 4.32668C17.1562 4.26998 17.27 4.15618 17.3267 4.01242L17.9811 2.35316Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17 7L15 9" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'bomb',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M19.7166 2.07799C19.2812 0.974002 17.7188 0.974002 17.2834 2.07799L16.6596 3.6596L15.078 4.28338C13.974 4.71879 13.974 6.28121 15.078 6.71662L15.8989 7.0404L14.7793 8.16005C13.3487 6.96747 11.5081 6.25 9.5 6.25C4.94365 6.25 1.25 9.94365 1.25 14.5C1.25 19.0563 4.94365 22.75 9.5 22.75C14.0563 22.75 17.75 19.0563 17.75 14.5C17.75 12.4919 17.0325 10.6513 15.84 9.22071L16.9596 8.10106L17.2834 8.92201C17.7188 10.026 19.2812 10.026 19.7166 8.92201L20.3404 7.3404L21.922 6.71662C23.026 6.28121 23.026 4.71879 21.922 4.28338L20.3404 3.6596L19.7166 2.07799ZM18.0244 4.28758L18.5 3.08162L18.9756 4.28758C19.1086 4.62464 19.3754 4.89144 19.7124 5.02438L20.9184 5.5L19.7124 5.97562C19.3754 6.10856 19.1086 6.37536 18.9756 6.71242L18.5 7.91838L18.0244 6.71242C17.8914 6.37536 17.6246 6.10856 17.2876 5.97562L16.0816 5.5L17.2876 5.02438C17.6246 4.89144 17.8914 4.62464 18.0244 4.28758ZM9.5 7.75C5.77208 7.75 2.75 10.7721 2.75 14.5C2.75 18.2279 5.77208 21.25 9.5 21.25C13.2279 21.25 16.25 18.2279 16.25 14.5C16.25 10.7721 13.2279 7.75 9.5 7.75Z" fill="currentColor"/>''',
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
