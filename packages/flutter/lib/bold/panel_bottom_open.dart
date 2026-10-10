// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `panel-bottom-open` icon in the bold style.
class PanelBottomOpenBoldIcon extends StatelessWidget {
  /// Creates the `panel-bottom-open` icon in the bold style.
  const PanelBottomOpenBoldIcon({
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
    name: 'panel-bottom-open',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3 14.25L3 10C3 6.22876 3.0003 4.34345 4.17187 3.17187C5.34345 2.0003 7.22876 2 11 2L13 2C16.7712 2 18.6566 2.0003 19.8281 3.17187C20.9997 4.34345 21 6.22876 21 10L21 14.25L3 14.25ZM15.5693 10.2773C15.8388 9.96298 15.8024 9.48935 15.4883 9.21973L12.4883 6.64746C12.2075 6.40699 11.7925 6.40699 11.5117 6.64746L8.51172 9.21875C8.19747 9.48826 8.16141 9.96192 8.43066 10.2764C8.70025 10.5907 9.17384 10.6269 9.48828 10.3574L12 8.20508L14.5117 10.3574C14.8261 10.6269 15.2997 10.5914 15.5693 10.2773Z" fill="currentColor"/>
<path d="M20.9941 15.75C20.9665 18.3859 20.8025 19.8538 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22L11 22C7.22876 22 5.34345 21.9997 4.17187 20.8281C3.19754 19.8538 3.03348 18.3859 3.00586 15.75L20.9941 15.75Z" fill="currentColor"/>''',
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
