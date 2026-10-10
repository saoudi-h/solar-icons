// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `magnifier-close` icon.
class MagnifierCloseIcon extends StatelessWidget {
  /// Creates the `magnifier-close` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const MagnifierCloseIcon({
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
    name: 'magnifier-close',
    style: SolarIconStyle.bold,
    body: r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 2C16.7467 2 21 6.25329 21 11.5C21 13.8541 20.1417 16.0064 18.7236 17.666C18.7315 17.6732 18.7404 17.6799 18.748 17.6875L22.5303 21.4697C22.8228 21.7626 22.8228 22.2384 22.5303 22.5312C22.2375 22.8236 21.7625 22.8237 21.4697 22.5312L17.6875 18.748C17.6797 18.7403 17.6724 18.7317 17.665 18.7236C16.0055 20.1414 13.8538 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 6.25329 6.25329 2 11.5 2ZM13.7979 9.20117C13.5049 8.90847 13.0301 8.90834 12.7373 9.20117L11.5 10.4385L10.2627 9.20117C9.96987 8.90834 9.49506 8.90847 9.20215 9.20117C8.90926 9.49407 8.90926 9.96883 9.20215 10.2617L10.4395 11.499L9.20215 12.7373C8.90937 13.0302 8.90929 13.505 9.20215 13.7979C9.49503 14.0904 9.96989 14.0905 10.2627 13.7979L11.5 12.5605L12.7373 13.7979C13.0301 14.0905 13.505 14.0904 13.7979 13.7979C14.0907 13.505 14.0906 13.0302 13.7979 12.7373L12.5605 11.499L13.7979 10.2617C14.0907 9.96883 14.0907 9.49407 13.7979 9.20117Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'magnifier-close',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M21.789 20.7655C22.0711 21.0478 22.071 21.5057 21.789 21.788C21.5068 22.0702 21.0488 22.0701 20.7665 21.788L17.6855 18.7069C18.0515 18.3925 18.3926 18.0505 18.707 17.6845L21.789 20.7655Z" fill="currentColor"/>
<path d="M12.7372 9.20107C13.0301 8.90821 13.5049 8.90827 13.7978 9.20107C14.0907 9.49396 14.0907 9.96872 13.7978 10.2616L12.5605 11.4989L13.7978 12.7362C14.0907 13.0291 14.0907 13.5049 13.7978 13.7977C13.5049 14.0903 13.0301 14.0903 12.7372 13.7977L11.4999 12.5595L10.2626 13.7977C9.96987 14.0904 9.49498 14.0902 9.20209 13.7977C8.9092 13.5049 8.9092 13.0291 9.20209 12.7362L10.4394 11.4989L9.20209 10.2616C8.9092 9.96872 8.9092 9.49396 9.20209 9.20107C9.495 8.90836 9.96981 8.90823 10.2626 9.20107L11.4999 10.4384L12.7372 9.20107Z" fill="currentColor"/>''',
    accent: r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'magnifier-close',
    style: SolarIconStyle.broken,
    body: r'''<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.75 3.27093C8.14732 2.46262 9.76964 2 11.5 2C16.7467 2 21 6.25329 21 11.5C21 16.7467 16.7467 21 11.5 21C6.25329 21 2 16.7467 2 11.5C2 9.76964 2.46262 8.14732 3.27093 6.75" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.73223 9.73261L11.5 11.5004M11.5 11.5004L13.2678 13.2681M11.5 11.5004L9.73223 13.2681M11.5 11.5004L13.2678 9.73261" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'magnifier-close',
    style: SolarIconStyle.linear,
    body: r'''<circle cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.73223 9.73163L11.5 11.4994M11.5 11.4994L13.2678 13.2672M11.5 11.4994L9.73223 13.2672M11.5 11.4994L13.2678 9.73163" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'magnifier-close',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M18.2173 18.2178L21.9999 22.0004" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.73223 9.73261L11.5 11.5004M11.5 11.5004L13.2678 13.2681M11.5 11.5004L9.73223 13.2681M11.5 11.5004L13.2678 9.73261" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<circle opacity="0.5" cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'magnifier-close',
    style: SolarIconStyle.outline,
    body: r'''<path d="M12.7373 9.20117C13.0301 8.90834 13.5049 8.90847 13.7979 9.20117C14.0907 9.49407 14.0907 9.96883 13.7979 10.2617L12.5605 11.499L13.7979 12.7373C14.0906 13.0302 14.0907 13.505 13.7979 13.7979C13.505 14.0904 13.0301 14.0905 12.7373 13.7979L11.5 12.5605L10.2627 13.7979C9.96989 14.0905 9.49503 14.0904 9.20215 13.7979C8.90929 13.505 8.90937 13.0302 9.20215 12.7373L10.4395 11.499L9.20215 10.2617C8.90926 9.96883 8.90926 9.49407 9.20215 9.20117C9.49506 8.90847 9.96986 8.90834 10.2627 9.20117L11.5 10.4385L12.7373 9.20117Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5 1.25C17.1609 1.25 21.75 5.83908 21.75 11.5C21.75 14.0605 20.8111 16.4018 19.2588 18.1982L22.5303 21.4697C22.8232 21.7626 22.8232 22.2374 22.5303 22.5303C22.2374 22.8232 21.7626 22.8232 21.4697 22.5303L18.1982 19.2588C16.4018 20.8111 14.0605 21.75 11.5 21.75C5.83908 21.75 1.25 17.1609 1.25 11.5C1.25 5.83908 5.83908 1.25 11.5 1.25ZM11.5 2.75C6.66751 2.75 2.75 6.66751 2.75 11.5C2.75 16.3325 6.66751 20.25 11.5 20.25C16.3325 20.25 20.25 16.3325 20.25 11.5C20.25 6.66751 16.3325 2.75 11.5 2.75Z" fill="currentColor"/>''',
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
