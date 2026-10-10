// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `siren-rounded` icon in every style.
///
/// Prefer the static widgets (e.g. `SirenRoundedLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class SirenRoundedIcon extends StatelessWidget {
  /// Creates the `siren-rounded` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const SirenRoundedIcon({
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
    name: 'siren-rounded',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.75 2C12.75 1.58579 12.4142 1.25 12 1.25C11.5858 1.25 11.25 1.58579 11.25 2V5C11.25 5.41421 11.5858 5.75 12 5.75C12.4142 5.75 12.75 5.41421 12.75 5V2Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M2 21.25H4V16C4 11.5817 7.58172 8 12 8C16.4183 8 20 11.5817 20 16V21.25H22C22.4142 21.25 22.75 21.5858 22.75 22C22.75 22.4142 22.4142 22.75 22 22.75H2C1.58579 22.75 1.25 22.4142 1.25 22C1.25 21.5858 1.58579 21.25 2 21.25ZM12.75 18.7993C13.1984 18.54 13.5 18.0552 13.5 17.5C13.5 16.6716 12.8284 16 12 16C11.1716 16 10.5 16.6716 10.5 17.5C10.5 18.0552 10.8016 18.54 11.25 18.7993V21.25H12.75V18.7993ZM13.5953 11.2186C13.7507 10.8346 14.188 10.6494 14.5719 10.8048C15.7629 11.2869 16.7129 12.2369 17.195 13.4278C17.3504 13.8118 17.1651 14.249 16.7812 14.4044C16.3972 14.5599 15.96 14.3746 15.8046 13.9907C15.4749 13.1762 14.8235 12.5249 14.0091 12.1952C13.6252 12.0398 13.4399 11.6025 13.5953 11.2186Z" fill="currentColor"/>
<path d="M21.5303 5.46967C21.8232 5.76256 21.8232 6.23744 21.5303 6.53033L20.0303 8.03033C19.7374 8.32322 19.2626 8.32322 18.9697 8.03033C18.6768 7.73744 18.6768 7.26256 18.9697 6.96967L20.4697 5.46967C20.7626 5.17678 21.2374 5.17678 21.5303 5.46967Z" fill="currentColor"/>
<path d="M3.53033 5.46967C3.23744 5.17678 2.76256 5.17678 2.46967 5.46967C2.17678 5.76256 2.17678 6.23744 2.46967 6.53033L3.96967 8.03033C4.26256 8.32322 4.73744 8.32322 5.03033 8.03033C5.32322 7.73744 5.32322 7.26256 5.03033 6.96967L3.53033 5.46967Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'siren-rounded',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M2 21.25H11.25V18.7998C10.8016 18.5404 10.5 18.0552 10.5 17.5C10.5 16.6716 11.1716 16 12 16C12.8284 16 13.5 16.6716 13.5 17.5C13.5 18.0552 13.1984 18.5404 12.75 18.7998V21.25H22C22.4142 21.25 22.75 21.5858 22.75 22C22.75 22.4142 22.4142 22.75 22 22.75H2C1.58579 22.75 1.25 22.4142 1.25 22C1.25 21.5858 1.58579 21.25 2 21.25Z" fill="currentColor"/>
<path d="M13.5947 11.2188C13.7501 10.8349 14.1874 10.6496 14.5713 10.8047C15.7621 11.2867 16.7122 12.2369 17.1943 13.4277C17.3497 13.8115 17.1649 14.2487 16.7812 14.4043C16.3975 14.5597 15.9603 14.3749 15.8047 13.9912C15.475 13.1768 14.8232 12.525 14.0088 12.1953C13.6249 12.0399 13.4394 11.6027 13.5947 11.2188Z" fill="currentColor"/>
<path d="M2.46973 5.46973C2.76262 5.17683 3.23738 5.17683 3.53027 5.46973L5.03027 6.96973C5.32317 7.26262 5.32317 7.73738 5.03027 8.03027C4.73738 8.32317 4.26262 8.32317 3.96973 8.03027L2.46973 6.53027C2.17683 6.23738 2.17683 5.76262 2.46973 5.46973Z" fill="currentColor"/>
<path d="M20.4697 5.46973C20.7626 5.17683 21.2374 5.17683 21.5303 5.46973C21.8232 5.76262 21.8232 6.23738 21.5303 6.53027L20.0303 8.03027C19.7374 8.32317 19.2626 8.32317 18.9697 8.03027C18.6768 7.73738 18.6768 7.26262 18.9697 6.96973L20.4697 5.46973Z" fill="currentColor"/>
<path d="M12 1.25C12.4142 1.25 12.75 1.58579 12.75 2V5C12.75 5.41421 12.4142 5.75 12 5.75C11.5858 5.75 11.25 5.41421 11.25 5V2C11.25 1.58579 11.5858 1.25 12 1.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 16V21.25H20V16C20 11.5817 16.4183 8 12 8C7.58172 8 4 11.5817 4 16Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'siren-rounded',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 22V16C20 11.5817 16.4183 8 12 8C9.03887 8 6.4535 9.60879 5.07026 12M4 22V16" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.2905 11.5C15.2932 11.9059 16.0939 12.7065 16.4998 13.7092" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2V5" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 6L19.5 7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 6L4.5 7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 17.5C13.5 18.3284 12.8284 19 12 19C11.1716 19 10.5 18.3284 10.5 17.5C10.5 16.6716 11.1716 16 12 16C12.8284 16 13.5 16.6716 13.5 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 22H14M22 22H18" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'siren-rounded',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20 22V16C20 11.5817 16.4183 8 12 8C7.58172 8 4 11.5817 4 16V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.2905 11.5C15.2932 11.9059 16.0939 12.7065 16.4998 13.7092" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 22H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2V5" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 6L19.5 7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 6L4.5 7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 17.5C13.5 18.3284 12.8284 19 12 19C11.1716 19 10.5 18.3284 10.5 17.5C10.5 16.6716 11.1716 16 12 16C12.8284 16 13.5 16.6716 13.5 17.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19V22" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'siren-rounded',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14.2905 11.5C15.2932 11.9059 16.0939 12.7065 16.4998 13.7092" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 22H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2V5" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 6L19.5 7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 6L4.5 7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.5 17.5C13.5 18.3284 12.8284 19 12 19C11.1716 19 10.5 18.3284 10.5 17.5C10.5 16.6716 11.1716 16 12 16C12.8284 16 13.5 16.6716 13.5 17.5Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 22V16C20 11.5817 16.4183 8 12 8C7.58172 8 4 11.5817 4 16V22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 19V22" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'siren-rounded',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.75 2C12.75 1.58579 12.4142 1.25 12 1.25C11.5858 1.25 11.25 1.58579 11.25 2V5C11.25 5.41421 11.5858 5.75 12 5.75C12.4142 5.75 12.75 5.41421 12.75 5V2Z" fill="currentColor"/>
<path d="M14.5719 10.8048C14.188 10.6494 13.7507 10.8346 13.5953 11.2186C13.4399 11.6025 13.6252 12.0398 14.0091 12.1952C14.8235 12.5249 15.4749 13.1762 15.8046 13.9907C15.96 14.3746 16.3972 14.5599 16.7812 14.4044C17.1651 14.249 17.3504 13.8118 17.195 13.4278C16.7129 12.2369 15.7629 11.2869 14.5719 10.8048Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 7.25C7.16751 7.25 3.25 11.1675 3.25 16V21.25H2C1.58579 21.25 1.25 21.5858 1.25 22C1.25 22.4142 1.58579 22.75 2 22.75H22C22.4142 22.75 22.75 22.4142 22.75 22C22.75 21.5858 22.4142 21.25 22 21.25H20.75V16C20.75 11.1675 16.8325 7.25 12 7.25ZM12.75 21.25H19.25V16C19.25 11.9959 16.0041 8.75 12 8.75C7.99594 8.75 4.75 11.9959 4.75 16V21.25H11.25V19.622C10.3761 19.3131 9.75 18.4797 9.75 17.5C9.75 16.2574 10.7574 15.25 12 15.25C13.2426 15.25 14.25 16.2574 14.25 17.5C14.25 18.4797 13.6239 19.3131 12.75 19.622V21.25ZM12 18.25C12.4142 18.25 12.75 17.9142 12.75 17.5C12.75 17.0858 12.4142 16.75 12 16.75C11.5858 16.75 11.25 17.0858 11.25 17.5C11.25 17.9142 11.5858 18.25 12 18.25Z" fill="currentColor"/>
<path d="M21.5303 5.46967C21.8232 5.76256 21.8232 6.23744 21.5303 6.53033L20.0303 8.03033C19.7374 8.32322 19.2626 8.32322 18.9697 8.03033C18.6768 7.73744 18.6768 7.26256 18.9697 6.96967L20.4697 5.46967C20.7626 5.17678 21.2374 5.17678 21.5303 5.46967Z" fill="currentColor"/>
<path d="M3.53033 5.46967C3.23744 5.17678 2.76256 5.17678 2.46967 5.46967C2.17678 5.76256 2.17678 6.23744 2.46967 6.53033L3.96967 8.03033C4.26256 8.32322 4.73744 8.32322 5.03033 8.03033C5.32322 7.73744 5.32322 7.26256 5.03033 6.96967L3.53033 5.46967Z" fill="currentColor"/>''',
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
