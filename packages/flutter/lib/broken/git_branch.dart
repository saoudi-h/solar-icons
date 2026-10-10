// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `git-branch` icon in the broken style.
class GitBranchBrokenIcon extends StatelessWidget {
  /// Creates the `git-branch` icon in the broken style.
  const GitBranchBrokenIcon({
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
    name: 'git-branch',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 4.5C9 5.88071 7.88071 7 6.5 7C5.11929 7 4 5.88071 4 4.5C4 3.11929 5.11929 2 6.5 2C7.88071 2 9 3.11929 9 4.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.1821 7.5C20.1821 8.88071 19.0628 10 17.6821 10C16.3014 10 15.1821 8.88071 15.1821 7.5C15.1821 6.11929 16.3014 5 17.6821 5C19.0628 5 20.1821 6.11929 20.1821 7.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 19.5C9 20.8807 7.88071 22 6.5 22C5.11929 22 4 20.8807 4 19.5C4 18.1193 5.11929 17 6.5 17C7.88071 17 9 18.1193 9 19.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.5 17L6.5 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.6821 10C17.6821 11.8644 16.2639 13.0389 13.9841 13.4384" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.99359 13.7593C7.83214 14.1447 6.5 15.2004 6.5 16.9999" stroke="currentColor" stroke-linecap="round"/>''',
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
