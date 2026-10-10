// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bomb-emoji` icon in every style.
///
/// Prefer the static widgets (e.g. `BombEmojiLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class BombEmojiIcon extends StatelessWidget {
  /// Creates the `bomb-emoji` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const BombEmojiIcon({
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
    name: 'bomb-emoji',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.9811 2.35316C18.1668 1.88228 18.8332 1.88228 19.0189 2.35316L19.6733 4.01242C19.73 4.15618 19.8438 4.26998 19.9876 4.32668L21.6468 4.98108C22.1177 5.16679 22.1177 5.83321 21.6468 6.01892L19.9876 6.67332C19.8438 6.73002 19.73 6.84382 19.6733 6.98758L19.0189 8.64684C18.8332 9.11772 18.1668 9.11772 17.9811 8.64684L17.3267 6.98758C17.27 6.84382 17.1562 6.73002 17.0124 6.67332L15.3532 6.01892C14.8823 5.83321 14.8823 5.16679 15.3532 4.98108L17.0124 4.32668C17.1562 4.26998 17.27 4.15618 17.3267 4.01242L17.9811 2.35316Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M17 14.5C17 18.6421 13.6421 22 9.5 22C5.35786 22 2 18.6421 2 14.5C2 10.3579 5.35786 7 9.5 7C13.6421 7 17 10.3579 17 14.5ZM12 16.75C12.4142 16.75 12.75 16.4142 12.75 16C12.75 15.5858 12.4142 15.25 12 15.25H10C9.58579 15.25 9.25 15.5858 9.25 16C9.25 16.4142 9.58579 16.75 10 16.75H12ZM14 12.5C14 13.3284 13.5523 14 13 14C12.4477 14 12 13.3284 12 12.5C12 11.6716 12.4477 11 13 11C13.5523 11 14 11.6716 14 12.5ZM9 14C9.55228 14 10 13.3284 10 12.5C10 11.6716 9.55228 11 9 11C8.44772 11 8 11.6716 8 12.5C8 13.3284 8.44772 14 9 14Z" fill="currentColor"/>
<path d="M16.7669 8.29386L16.0175 9.04328C15.6957 8.6594 15.3407 8.30436 14.9568 7.98261L15.7063 7.23315L16.4669 7.53312L16.7669 8.29386Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'bomb-emoji',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 15.2505C12.4142 15.2505 12.75 15.5863 12.75 16.0005C12.7497 16.4145 12.4141 16.7505 12 16.7505H10C9.58595 16.7505 9.25026 16.4145 9.25 16.0005C9.25 15.5863 9.58579 15.2505 10 15.2505H12Z" fill="currentColor"/>
<path d="M9 11.0005C9.55228 11.0005 10 11.6721 10 12.5005C9.99982 13.3287 9.55218 14.0005 9 14.0005C8.44782 14.0005 8.00018 13.3287 8 12.5005C8 11.6721 8.44772 11.0005 9 11.0005Z" fill="currentColor"/>
<path d="M13 11.0005C13.5523 11.0005 14 11.6721 14 12.5005C13.9998 13.3287 13.5522 14.0005 13 14.0005C12.4478 14.0005 12.0002 13.3287 12 12.5005C12 11.6721 12.4477 11.0005 13 11.0005Z" fill="currentColor"/>
<path d="M17.0117 6.67334C17.1555 6.73004 17.2695 6.84403 17.3262 6.98779L17.5371 7.52295L15.3066 9.75342C14.9893 9.36567 14.6338 9.01019 14.2461 8.69287L16.4766 6.4624L17.0117 6.67334Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M9.5 7.00014C13.6421 7.00014 17 10.358 17 14.5001C17 18.6423 13.6421 22.0001 9.5 22.0001C5.35786 22.0001 2 18.6423 2 14.5001C2 10.358 5.35786 7.00014 9.5 7.00014Z" fill="currentColor"/>
<path d="M17.9814 2.35365C18.1672 1.88277 18.8328 1.88277 19.0186 2.35365L19.6729 4.01283C19.7296 4.15653 19.8436 4.27058 19.9873 4.32728L21.6465 4.98158C22.1174 5.16729 22.1174 5.83298 21.6465 6.01869L19.9873 6.67299C19.8436 6.72969 19.7296 6.84374 19.6729 6.98744L19.0186 8.64662C18.8328 9.1175 18.1672 9.1175 17.9814 8.64662L17.3271 6.98744C17.2704 6.84374 17.1564 6.72969 17.0127 6.67299L15.3535 6.01869C14.8826 5.83298 14.8826 5.16729 15.3535 4.98158L17.0127 4.32728C17.1564 4.27058 17.2704 4.15653 17.3271 4.01283L17.9814 2.35365Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'bomb-emoji',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 16L12 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 12.5C13.5 13.0523 13.2761 13.5 13 13.5C12.7239 13.5 12.5 13.0523 12.5 12.5C12.5 11.9477 12.7239 11.5 13 11.5C13.2761 11.5 13.5 11.9477 13.5 12.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="12.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 7L15 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.9811 2.35316C18.1668 1.88228 18.8332 1.88228 19.0189 2.35316L19.6733 4.01242C19.73 4.15618 19.8438 4.26998 19.9876 4.32668L21.6468 4.98108C22.1177 5.16679 22.1177 5.83321 21.6468 6.01892L19.9876 6.67332C19.8438 6.73002 19.73 6.84382 19.6733 6.98759L19.0189 8.64684C18.8332 9.11772 18.1668 9.11772 17.9811 8.64684L17.3267 6.98759C17.27 6.84382 17.1562 6.73002 17.0124 6.67332L15.3532 6.01892C14.8823 5.83321 14.8823 5.16679 15.3532 4.98108L17.0124 4.32668C17.1562 4.26998 17.27 4.15618 17.3267 4.01242L17.9811 2.35316Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.75 8.00337C6.85315 7.36523 8.13392 7 9.5 7C13.6421 7 17 10.3579 17 14.5C17 18.6421 13.6421 22 9.5 22C5.35786 22 2 18.6421 2 14.5C2 13.1339 2.36523 11.8532 3.00337 10.75" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'bomb-emoji',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="9.5" cy="14.5" r="7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 16L12 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 7L15 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.9811 2.35316C18.1668 1.88228 18.8332 1.88228 19.0189 2.35316L19.6733 4.01242C19.73 4.15618 19.8438 4.26998 19.9876 4.32668L21.6468 4.98108C22.1177 5.16679 22.1177 5.83321 21.6468 6.01892L19.9876 6.67332C19.8438 6.73002 19.73 6.84382 19.6733 6.98758L19.0189 8.64684C18.8332 9.11772 18.1668 9.11772 17.9811 8.64684L17.3267 6.98758C17.27 6.84382 17.1562 6.73002 17.0124 6.67332L15.3532 6.01892C14.8823 5.83321 14.8823 5.16679 15.3532 4.98108L17.0124 4.32668C17.1562 4.26998 17.27 4.15618 17.3267 4.01242L17.9811 2.35316Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 12.5C13.5 13.0523 13.2761 13.5 13 13.5C12.7239 13.5 12.5 13.0523 12.5 12.5C12.5 11.9477 12.7239 11.5 13 11.5C13.2761 11.5 13.5 11.9477 13.5 12.5Z" stroke="currentColor" stroke-linecap="round"/>
<ellipse cx="9" cy="12.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'bomb-emoji',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="9.5" cy="14.5" r="7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.9811 2.35316C18.1668 1.88228 18.8332 1.88228 19.0189 2.35316L19.6733 4.01242C19.73 4.15618 19.8438 4.26998 19.9876 4.32668L21.6468 4.98108C22.1177 5.16679 22.1177 5.83321 21.6468 6.01892L19.9876 6.67332C19.8438 6.73002 19.73 6.84382 19.6733 6.98758L19.0189 8.64684C18.8332 9.11772 18.1668 9.11772 17.9811 8.64684L17.3267 6.98758C17.27 6.84382 17.1562 6.73002 17.0124 6.67332L15.3532 6.01892C14.8823 5.83321 14.8823 5.16679 15.3532 4.98108L17.0124 4.32668C17.1562 4.26998 17.27 4.15618 17.3267 4.01242L17.9811 2.35316Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M10 16L12 16" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M17 7L15 9" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M13.5 12.5C13.5 13.0523 13.2761 13.5 13 13.5C12.7239 13.5 12.5 13.0523 12.5 12.5C12.5 11.9477 12.7239 11.5 13 11.5C13.2761 11.5 13.5 11.9477 13.5 12.5Z" stroke="currentColor" stroke-linecap="round"/>

<ellipse opacity="0.5" cx="9" cy="12.5" rx="0.5" ry="1" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'bomb-emoji',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12 16.75C12.4142 16.75 12.75 16.4142 12.75 16C12.75 15.5858 12.4142 15.25 12 15.25H10C9.58579 15.25 9.25 15.5858 9.25 16C9.25 16.4142 9.58579 16.75 10 16.75H12Z" fill="currentColor"/>
<path d="M14 12.5C14 13.3284 13.5523 14 13 14C12.4477 14 12 13.3284 12 12.5C12 11.6716 12.4477 11 13 11C13.5523 11 14 11.6716 14 12.5Z" fill="currentColor"/>
<path d="M9 14C9.55229 14 10 13.3284 10 12.5C10 11.6716 9.55229 11 9 11C8.44772 11 8 11.6716 8 12.5C8 13.3284 8.44772 14 9 14Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M19.7166 2.07799C19.2812 0.974002 17.7188 0.974002 17.2834 2.07799L16.6596 3.6596L15.078 4.28338C13.974 4.71879 13.974 6.28121 15.078 6.71662L15.8989 7.0404L14.7793 8.16005C13.3487 6.96747 11.5081 6.25 9.5 6.25C4.94365 6.25 1.25 9.94365 1.25 14.5C1.25 19.0563 4.94365 22.75 9.5 22.75C14.0563 22.75 17.75 19.0563 17.75 14.5C17.75 12.4919 17.0325 10.6513 15.84 9.22071L16.9596 8.10106L17.2834 8.92201C17.7188 10.026 19.2812 10.026 19.7166 8.92201L20.3404 7.3404L21.922 6.71662C23.026 6.28121 23.026 4.71879 21.922 4.28338L20.3404 3.6596L19.7166 2.07799ZM18.0244 4.28758L18.5 3.08162L18.9756 4.28758C19.1086 4.62464 19.3754 4.89144 19.7124 5.02438L20.9184 5.5L19.7124 5.97562C19.3754 6.10856 19.1086 6.37536 18.9756 6.71242L18.5 7.91838L18.0244 6.71242C17.8914 6.37536 17.6246 6.10856 17.2876 5.97562L16.0816 5.5L17.2876 5.02438C17.6246 4.89144 17.8914 4.62464 18.0244 4.28758ZM2.75 14.5C2.75 10.7721 5.77208 7.75 9.5 7.75C13.2279 7.75 16.25 10.7721 16.25 14.5C16.25 18.2279 13.2279 21.25 9.5 21.25C5.77208 21.25 2.75 18.2279 2.75 14.5Z" fill="currentColor"/>''',
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
