// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `git-pull-request` icon in the linear style.
class GitPullRequestLinearIcon extends StatelessWidget {
  /// Creates the `git-pull-request` icon in the linear style.
  const GitPullRequestLinearIcon({
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
    name: 'git-pull-request',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8 5C8 6.65685 6.65685 8 5 8C3.34315 8 2 6.65685 2 5C2 3.34315 3.34315 2 5 2C6.65685 2 8 3.34315 8 5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 19.7354C8 21.3922 6.65685 22.7354 5 22.7354C3.34315 22.7354 2 21.3922 2 19.7354C2 18.0785 3.34315 16.7354 5 16.7354C6.65685 16.7354 8 18.0785 8 19.7354Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 16.7354L5 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 19.0039C22 20.6608 20.6569 22.0039 19 22.0039C17.3431 22.0039 16 20.6608 16 19.0039C16 17.3471 17.3431 16.0039 19 16.0039C20.6569 16.0039 22 17.3471 22 19.0039Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 5L16.3138 5.00405C17.1858 5.00405 17.7485 5.37787 18.0143 5.61058C18.1264 5.7087 18.1824 5.75776 18.2043 5.77944C18.2262 5.80112 18.2764 5.85744 18.3769 5.97008C18.6146 6.23656 18.9997 6.80422 18.9997 7.68575L19 16M15 8L12 5L15 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
