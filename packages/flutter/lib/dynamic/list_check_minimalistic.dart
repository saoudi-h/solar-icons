// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-check-minimalistic` icon in every style.
///
/// Prefer the static widgets (e.g. `ListCheckMinimalisticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ListCheckMinimalisticIcon extends StatelessWidget {
  /// Creates the `list-check-minimalistic` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ListCheckMinimalisticIcon({
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
    name: 'list-check-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3 6.75C3 6.33579 3.33579 6 3.75 6H20.75C21.1642 6 21.5 6.33579 21.5 6.75C21.5 7.16421 21.1642 7.5 20.75 7.5H3.75C3.33579 7.5 3 7.16421 3 6.75ZM21.2113 11.1586C21.5379 11.4134 21.5961 11.8847 21.3414 12.2113L17.4414 17.2113C17.3022 17.3897 17.0899 17.4958 16.8636 17.4999C16.6373 17.504 16.4213 17.4057 16.2757 17.2324L14.1757 14.7324C13.9093 14.4152 13.9504 13.9421 14.2676 13.6757C14.5848 13.4093 15.0579 13.4504 15.3243 13.7676L16.8284 15.5582L20.1586 11.2887C20.4134 10.9621 20.8847 10.9039 21.2113 11.1586ZM3 11.75C3 11.3358 3.33579 11 3.75 11H10.75C11.1642 11 11.5 11.3358 11.5 11.75C11.5 12.1642 11.1642 12.5 10.75 12.5H3.75C3.33579 12.5 3 12.1642 3 11.75ZM3 16.75C3 16.3358 3.33579 16 3.75 16H10.75C11.1642 16 11.5 16.3358 11.5 16.75C11.5 17.1642 11.1642 17.5 10.75 17.5H3.75C3.33579 17.5 3 17.1642 3 16.75Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'list-check-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.2113 11.1587C21.5379 11.4134 21.5961 11.8847 21.3414 12.2113L17.4414 17.2113C17.3022 17.3898 17.0899 17.4958 16.8636 17.4999C16.6373 17.504 16.4213 17.4057 16.2757 17.2324L14.1757 14.7324C13.9093 14.4153 13.9505 13.9422 14.2676 13.6758C14.5848 13.4093 15.0579 13.4505 15.3243 13.7676L16.8284 15.5583L20.1586 11.2888C20.4134 10.9622 20.8847 10.9039 21.2113 11.1587Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M3 6.75C3 6.33579 3.33579 6 3.75 6H20.75C21.1642 6 21.5 6.33579 21.5 6.75C21.5 7.16421 21.1642 7.5 20.75 7.5H3.75C3.33579 7.5 3 7.16421 3 6.75ZM3 11.75C3 11.3358 3.33579 11 3.75 11H10.75C11.1642 11 11.5 11.3358 11.5 11.75C11.5 12.1642 11.1642 12.5 10.75 12.5H3.75C3.33579 12.5 3 12.1642 3 11.75ZM3 16.75C3 16.3358 3.33579 16 3.75 16H10.75C11.1642 16 11.5 16.3358 11.5 16.75C11.5 17.1642 11.1642 17.5 10.75 17.5H3.75C3.33579 17.5 3 17.1642 3 16.75Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'list-check-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10 11L3 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 16H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 13.5L16.1 16L20 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3 6L13.5 6M20 6L17.75 6" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'list-check-minimalistic',
    style: SolarIconStyle.linear,
    body: r'''<path d="M20 6L3 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 11L3 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 16H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 13.5L16.1 16L20 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'list-check-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14 13.5L16.1 16L20 11" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 6L3 6" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 11L3 11" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M10 16H3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'list-check-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H20C20.4142 5.25 20.75 5.58579 20.75 6C20.75 6.41421 20.4142 6.75 20 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM20.4613 10.4086C20.7879 10.6634 20.8461 11.1347 20.5914 11.4613L16.6914 16.4613C16.5522 16.6397 16.3399 16.7458 16.1136 16.7499C15.8873 16.754 15.6713 16.6557 15.5257 16.4824L13.4257 13.9824C13.1593 13.6652 13.2004 13.1921 13.5176 12.9257C13.8348 12.6593 14.3079 12.7004 14.5743 13.0176L16.0784 14.8082L19.4086 10.5387C19.6634 10.2121 20.1347 10.1539 20.4613 10.4086ZM2.25 11C2.25 10.5858 2.58579 10.25 3 10.25H10C10.4142 10.25 10.75 10.5858 10.75 11C10.75 11.4142 10.4142 11.75 10 11.75H3C2.58579 11.75 2.25 11.4142 2.25 11ZM2.25 16C2.25 15.5858 2.58579 15.25 3 15.25H10C10.4142 15.25 10.75 15.5858 10.75 16C10.75 16.4142 10.4142 16.75 10 16.75H3C2.58579 16.75 2.25 16.4142 2.25 16Z" fill="currentColor"/>''',
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
