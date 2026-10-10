// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `paper-bin` icon in the linear style.
class PaperBinLinearIcon extends StatelessWidget {
  /// Creates the `paper-bin` icon in the linear style.
  const PaperBinLinearIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

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

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'paper-bin',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.03365 8.89004C2.55311 5.68645 2.31285 4.08466 3.21049 3.04233C4.10813 2 5.72784 2 8.96727 2H15.033C18.2724 2 19.8922 2 20.7898 3.04233C21.6874 4.08466 21.4472 5.68646 20.9666 8.89004L19.7666 16.89C19.401 19.3276 19.2182 20.5464 18.3743 21.2732C17.5303 22 16.2979 22 13.833 22H10.1673C7.7024 22 6.46997 22 5.62604 21.2732C4.78211 20.5464 4.59929 19.3276 4.23365 16.89L3.03365 8.89004Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 6H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 19H5" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 6L12 8M12 8L9 11M12 8L10 6M12 8L15 11M9 11L6.16129 13.8387M9 11L6.10526 8.10526M9 11L12 14M6.16129 13.8387L4.08687 15.9131M6.16129 13.8387L3.5 11L6.10526 8.10526M6.16129 13.8387L9.06452 16.9355M20 6L15 11M15 11L12 14M15 11L19.913 15.913M12 14L9.06452 16.9355M12 14L17 19M9.06452 16.9355L7 19M9.06452 16.9355L11 19M4 6L6.10526 8.10526M6.10526 8.10526L8 6M13 19L20.5 11L16 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  SolarIconData get _data => data;

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
