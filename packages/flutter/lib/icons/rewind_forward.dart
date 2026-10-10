// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `rewind-forward` icon.
class RewindForwardIcon extends StatelessWidget {
  /// Creates the `rewind-forward` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const RewindForwardIcon({
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
    name: 'rewind-forward',
    style: SolarIconStyle.bold,
    body: r'''<path d="M2 17.5737L2 6.42632C2 4.57895 3.60064 3.41122 4.90312 4.30838L10.9998 8.76844L10.9998 7.12303C10.9998 5.50658 12.467 4.48482 13.661 5.26983L21.0784 10.1468C22.3069 10.9545 22.3069 13.0455 21.0784 13.8532L13.661 18.7302C12.467 19.5152 10.9998 18.4934 10.9998 16.877V15.2316L4.90313 19.6916C3.60065 20.5888 2 19.4211 2 17.5737Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'rewind-forward',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M11 7.12303L11 8.76844V15.2316V16.877C11 18.4934 12.4673 19.5152 13.6612 18.7302L21.0786 13.8532C22.3071 13.0455 22.3071 10.9545 21.0786 10.1468L13.6612 5.26983C12.4673 4.48482 11 5.50658 11 7.12303Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2 6.42632L2 17.5737C2 19.4211 3.60065 20.5888 4.90313 19.6916L10.9998 15.2316V8.76844L4.90312 4.30838C3.60064 3.41122 2 4.57895 2 6.42632Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'rewind-forward',
    style: SolarIconStyle.broken,
    body: r'''<path d="M10.9998 15.2316L4.90312 19.6916C3.60064 20.5888 2 19.4211 2 17.5737L2 15M10.9998 8.76844L4.90313 4.30838C3.60065 3.41122 2 4.57894 2 6.42631L2 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.3699 7.70832L13.6612 5.26983C12.4673 4.48482 11 5.50658 11 7.12303L11 16.877C11 18.4934 12.4673 19.5152 13.6612 18.7302L21.0786 13.8532C22.3071 13.0455 22.3071 10.9545 21.0786 10.1468L20.1515 9.53719" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'rewind-forward',
    style: SolarIconStyle.linear,
    body: r'''<path d="M10.9998 8.76844L4.90312 4.30838C3.60064 3.41122 2 4.57895 2 6.42632L2 17.5737C2 19.4211 3.60065 20.5888 4.90313 19.6916L10.9998 15.2316" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.0786 10.1468C22.3071 10.9545 22.3071 13.0455 21.0786 13.8532L13.6612 18.7302C12.4673 19.5152 11 18.4934 11 16.877L11 7.12303C11 5.50658 12.4673 4.48482 13.6612 5.26983L21.0786 10.1468Z" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'rewind-forward',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M21.0786 10.1468C22.3071 10.9545 22.3071 13.0455 21.0786 13.8532L13.6612 18.7302C12.4673 19.5152 11 18.4934 11 16.877L11 7.12303C11 5.50658 12.4673 4.48482 13.6612 5.26983L21.0786 10.1468Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<path opacity="0.5" d="M10.9998 8.76844L4.90312 4.30838C3.60064 3.41122 2 4.57895 2 6.42632L2 17.5737C2 19.4211 3.60065 20.5888 4.90313 19.6916L10.9998 15.2316" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'rewind-forward',
    style: SolarIconStyle.outline,
    body: r'''<path d="M11.4541 4.68063C12.2001 4.16116 13.1987 4.06852 14.0732 4.64352L21.4902 9.52047C22.3605 10.0927 22.75 11.0821 22.75 12C22.75 12.9178 22.3605 13.9072 21.4902 14.4795L14.0732 19.3564C13.1987 19.9314 12.2001 19.8388 11.4541 19.3193C10.7225 18.8098 10.25 17.9127 10.25 16.8769V16.7089L5.3457 20.2968L5.33691 20.3037L5.32812 20.3095L4.91016 19.7021L4.89648 19.6826L5.32812 20.3095C4.39192 20.9541 3.31852 20.8489 2.52148 20.2675C1.74463 19.7008 1.25 18.7101 1.25 17.5732V6.42672C1.25 5.28984 1.74463 4.29913 2.52148 3.73239C3.31852 3.15101 4.39192 3.04579 5.32812 3.69039L4.89648 4.31637L4.90332 4.30856L5.32812 3.69039L5.33691 3.69625L5.3457 3.70309L10.25 7.29V7.12301C10.25 6.08727 10.7225 5.19012 11.4541 4.68063ZM11.75 16.8769C11.75 17.4576 12.011 17.8796 12.3115 18.0888C12.5976 18.2879 12.9297 18.3134 13.249 18.1035L20.666 13.2265C21.0242 12.991 21.25 12.5314 21.25 12C21.25 11.4685 21.0242 11.0089 20.666 10.7734L13.249 5.89645C12.9297 5.6865 12.5976 5.71202 12.3115 5.9111C12.011 6.12035 11.75 6.54234 11.75 7.12301V16.8769ZM2.75 17.5732C2.75 18.2836 3.05621 18.8009 3.40527 19.0556C3.73164 19.2937 4.10515 19.3243 4.46875 19.0781L10.25 14.8496V9.14938L4.46875 4.92086C4.10529 4.67496 3.7315 4.70631 3.40527 4.9443C3.05622 5.19899 2.75 5.71628 2.75 6.42672V17.5732Z" fill="currentColor"/>''',
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
