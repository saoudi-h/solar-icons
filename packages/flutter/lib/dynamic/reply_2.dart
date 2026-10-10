// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `reply-2` icon in every style.
///
/// Prefer the static widgets (e.g. `Reply2LinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class Reply2Icon extends StatelessWidget {
  /// Creates the `reply-2` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const Reply2Icon({
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
    name: 'reply-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M19.5 6.25C19.9142 6.25 20.25 6.58579 20.25 7C20.25 9.24444 19.298 10.7196 18.0632 11.6087C16.8667 12.4702 15.4534 12.75 14.5 12.75L6.31066 12.75L10.0303 16.4697C10.3232 16.7626 10.3232 17.2374 10.0303 17.5303C9.73744 17.8232 9.26256 17.8232 8.96967 17.5303L3.96967 12.5303C3.67678 12.2374 3.67678 11.7626 3.96967 11.4697L8.96967 6.46967C9.26256 6.17678 9.73744 6.17678 10.0303 6.46967C10.3232 6.76256 10.3232 7.23744 10.0303 7.53033L6.31066 11.25L14.5 11.25C15.2133 11.25 16.3 11.0298 17.1868 10.3913C18.0353 9.7804 18.75 8.75556 18.75 7C18.75 6.58579 19.0858 6.25 19.5 6.25Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'reply-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M10.0303 17.5303C9.73744 17.8232 9.26256 17.8232 8.96967 17.5303L3.96967 12.5303C3.67678 12.2374 3.67678 11.7626 3.96967 11.4697L8.96967 6.46967C9.26256 6.17678 9.73744 6.17678 10.0303 6.46967C10.3232 6.76256 10.3232 7.23744 10.0303 7.53033L5.56066 12L10.0303 16.4697C10.3232 16.7626 10.3232 17.2374 10.0303 17.5303Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M6.31066 12.75H14.5C15.4534 12.75 16.8667 12.4702 18.0632 11.6086C19.298 10.7196 20.25 9.24444 20.25 7C20.25 6.58578 19.9142 6.25 19.5 6.25C19.0858 6.25 18.75 6.58578 18.75 7C18.75 8.75556 18.0353 9.7804 17.1868 10.3913C16.3 11.0298 15.2133 11.25 14.5 11.25L6.31066 11.25L5.56066 12L6.31066 12.75Z" fill="currentColor"/>
<path d="M3.80691 12.2871C3.77024 12.1987 3.75 12.1017 3.75 12C3.75 12.0977 3.76897 12.1954 3.80691 12.2871Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'reply-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.5 7L4.5 12L9.5 17M4.5 12L11 12M14.5 12C16.1667 12 19.5 11 19.5 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'reply-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9.5 7L4.5 12L9.5 17M4.5 12L14.5 12C16.1667 12 19.5 11 19.5 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'reply-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9.5 17L4.5 12L9.5 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.5 12L14.5 12C16.1667 12 19.5 11 19.5 7" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'reply-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M19.5 6.25C19.9142 6.25 20.25 6.58579 20.25 7C20.25 9.24444 19.298 10.7196 18.0632 11.6087C16.8667 12.4702 15.4534 12.75 14.5 12.75L6.31066 12.75L10.0303 16.4697C10.3232 16.7626 10.3232 17.2374 10.0303 17.5303C9.73744 17.8232 9.26256 17.8232 8.96967 17.5303L3.96967 12.5303C3.67678 12.2374 3.67678 11.7626 3.96967 11.4697L8.96967 6.46967C9.26256 6.17678 9.73744 6.17678 10.0303 6.46967C10.3232 6.76256 10.3232 7.23744 10.0303 7.53033L6.31066 11.25L14.5 11.25C15.2133 11.25 16.3 11.0298 17.1868 10.3913C18.0353 9.7804 18.75 8.75556 18.75 7C18.75 6.58579 19.0858 6.25 19.5 6.25Z" fill="currentColor"/>''',
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
