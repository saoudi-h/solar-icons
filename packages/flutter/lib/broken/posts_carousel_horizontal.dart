// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `posts-carousel-horizontal` icon in the broken style.
class PostsCarouselHorizontalBrokenIcon extends StatelessWidget {
  /// Creates the `posts-carousel-horizontal` icon in the broken style.
  const PostsCarouselHorizontalBrokenIcon({
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
    name: 'posts-carousel-horizontal',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 19H21.5C20.1193 19 19 17.8807 19 16.5L19 7.5C19 6.11929 20.1193 5 21.5 5L22 5" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 19H2.5C3.88071 19 5 17.8807 5 16.5L5 7.5C5 6.11929 3.88071 5 2.5 5L2 5" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.9998 5.12601C15.387 5.2103 15.6792 5.35099 15.914 5.58579C16.4998 6.17157 16.4998 7.11438 16.4998 9L16.4998 15C16.4998 16.8856 16.4998 17.8284 15.914 18.4142C15.3282 19 14.3854 19 12.4998 19L11.4998 19C9.61414 19 8.67133 19 8.08554 18.4142C7.49976 17.8284 7.49976 16.8856 7.49976 15L7.49976 9C7.49976 7.11438 7.49976 6.17157 8.08554 5.58579C8.61709 5.05424 9.4426 5.00502 10.9998 5.00047" stroke="currentColor" stroke-linecap="round"/>''',
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
