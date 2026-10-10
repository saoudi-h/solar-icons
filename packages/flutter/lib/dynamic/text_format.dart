// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `text-format` icon in every style.
///
/// Prefer the static widgets (e.g. `TextFormatLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class TextFormatIcon extends StatelessWidget {
  /// Creates the `text-format` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const TextFormatIcon({
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
    name: 'text-format',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.93417 2C7.95604 2 7.97799 2 8 2L16.0658 2C16.9523 1.99995 17.7161 1.99991 18.3278 2.08215C18.9833 2.17028 19.6117 2.36902 20.1213 2.87868C20.631 3.38835 20.8297 4.0167 20.9179 4.67221C21.0001 5.28388 21.0001 6.0477 21 6.9342L21 7.95C21 8.50229 20.5523 8.95 20 8.95C19.4477 8.95 19 8.50229 19 7.95V7.00001C19 6.02893 18.9979 5.40122 18.9357 4.93871C18.8774 4.50497 18.7832 4.36902 18.7071 4.2929C18.631 4.21677 18.495 4.12263 18.0613 4.06431C17.5988 4.00213 16.9711 4 16 4H13V21C13 21.5523 12.5523 22 12 22C11.4477 22 11 21.5523 11 21V4H8C7.02893 4 6.40122 4.00213 5.93871 4.06431C5.50497 4.12263 5.36902 4.21677 5.2929 4.2929C5.21677 4.36902 5.12263 4.50497 5.06431 4.93871C5.00213 5.40122 5 6.02893 5 7.00001V7.95C5 8.50229 4.55229 8.95 4 8.95C3.44772 8.95 3 8.50229 3 7.95V7.00001C3 6.97799 3 6.95604 3 6.93418C2.99995 6.04769 2.99991 5.28387 3.08215 4.67221C3.17028 4.0167 3.36902 3.38835 3.87868 2.87868C4.38835 2.36902 5.0167 2.17028 5.67221 2.08215C6.28387 1.99991 7.04769 1.99995 7.93417 2Z" fill="currentColor"/>
<path d="M17 20C17.5523 20 18 20.4477 18 21C18 21.5523 17.5523 22 17 22H7C6.44772 22 6 21.5523 6 21C6 20.4477 6.44772 20 7 20H17Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'text-format',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17 20C17.5523 20 18 20.4477 18 21C18 21.5523 17.5523 22 17 22H7C6.44772 22 6 21.5523 6 21C6 20.4477 6.44772 20 7 20H17Z" fill="currentColor"/>
<path d="M16.0654 2C16.9519 1.99995 17.7165 1.9998 18.3281 2.08203C18.9835 2.17019 19.6115 2.36933 20.1211 2.87891C20.6307 3.38849 20.8298 4.01648 20.918 4.67188C21.0002 5.28354 21.0001 6.04808 21 6.93457V7.9502C20.9999 8.5024 20.5522 8.9502 20 8.9502C19.4478 8.9502 19.0001 8.50239 19 7.9502V7C19 6.02893 18.9977 5.40098 18.9355 4.93848C18.8772 4.50494 18.7831 4.36908 18.707 4.29297C18.6309 4.21686 18.4951 4.12277 18.0615 4.06446C17.599 4.00227 16.9711 4 16 4H8C7.02893 4 6.40098 4.00227 5.93848 4.06446C5.50494 4.12277 5.36908 4.21686 5.29297 4.29297C5.21686 4.36908 5.12277 4.50494 5.06446 4.93848C5.00227 5.40098 5 6.02893 5 7V7.9502C4.9999 8.5024 4.55222 8.9502 4 8.9502C3.44778 8.9502 3.00011 8.50239 3 7.9502V6.93457C2.99995 6.04809 2.9998 5.28354 3.08203 4.67188C3.17019 4.01648 3.36933 3.38849 3.87891 2.87891C4.38849 2.36933 5.01648 2.17019 5.67188 2.08203C6.28354 1.9998 7.04809 1.99995 7.93457 2H16.0654Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M13 4H11V20H13V4Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'text-format',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 3H8C6.11438 3 5.17157 3 4.58579 3.58579C4 4.17157 4 5.11438 4 7V7.95M12 3H16C17.8856 3 18.8284 3 19.4142 3.58579C20 4.17157 20 5.11438 20 7V7.95M12 3V8M12 21V12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 21H17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'text-format',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 3H8C6.11438 3 5.17157 3 4.58579 3.58579C4 4.17157 4 5.11438 4 7V7.95M12 3H16C17.8856 3 18.8284 3 19.4142 3.58579C20 4.17157 20 5.11438 20 7V7.95M12 3V21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 21H17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'text-format',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M20 7.95V7C20 5.11438 20 4.17157 19.4142 3.58579C18.8284 3 17.8856 3 16 3H12H8C6.11438 3 5.17157 3 4.58579 3.58579C4 4.17157 4 5.11438 4 7V7.95" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 21H17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 3V21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'text-format',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M7.948 2.25C7.04954 2.24997 6.3003 2.24995 5.70552 2.32991C5.07773 2.41432 4.51093 2.59999 4.05546 3.05546C3.59999 3.51093 3.41432 4.07773 3.32991 4.70552C3.24995 5.3003 3.24997 6.04951 3.25 6.94798L3.25 7.95C3.25 8.36422 3.58579 8.7 4 8.7C4.41422 8.7 4.75 8.36422 4.75 7.95V7C4.75 6.03599 4.7516 5.38843 4.81654 4.9054C4.87858 4.44393 4.9858 4.24644 5.11612 4.11612C5.24644 3.9858 5.44393 3.87858 5.9054 3.81654C6.38843 3.7516 7.03599 3.75 8 3.75H11.25V20.25H7C6.58579 20.25 6.25 20.5858 6.25 21C6.25 21.4142 6.58579 21.75 7 21.75H17C17.4142 21.75 17.75 21.4142 17.75 21C17.75 20.5858 17.4142 20.25 17 20.25H12.75V3.75H16C16.964 3.75 17.6116 3.7516 18.0946 3.81654C18.5561 3.87858 18.7536 3.9858 18.8839 4.11612C19.0142 4.24644 19.1214 4.44393 19.1835 4.9054C19.2484 5.38843 19.25 6.03599 19.25 7V7.95C19.25 8.36422 19.5858 8.7 20 8.7C20.4142 8.7 20.75 8.36422 20.75 7.95V6.94801C20.75 6.04953 20.7501 5.30031 20.6701 4.70552C20.5857 4.07773 20.4 3.51093 19.9445 3.05546C19.4891 2.59999 18.9223 2.41432 18.2945 2.32991C17.6997 2.24995 16.9505 2.24997 16.052 2.25H7.948Z" fill="currentColor"/>''',
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
