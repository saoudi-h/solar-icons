// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `posts-carousel-horizontal` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGcgb3BhY2l0eT0iMC41Ij4KPHBhdGggZD0iTTUuNSAxNkw1LjUgOEM1LjUgNi4zNDMxNSA0LjE1Njg1IDUgMi41IDVDMi4yMjM4NiA1IDIgNS4yMjM4NiAyIDUuNUwyIDE4LjVDMiAxOC43NzYxIDIuMjIzODYgMTkgMi41IDE5QzQuMTU2ODUgMTkgNS41IDE3LjY1NjkgNS41IDE2WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTguNSA4VjE2QzE4LjUgMTcuNjU2OSAxOS44NDMxIDE5IDIxLjUgMTlDMjEuNzc2MSAxOSAyMiAxOC43NzYxIDIyIDE4LjVMMjIgNS41QzIyIDUuMjIzODYgMjEuNzc2MSA1IDIxLjUgNUMxOS44NDMxIDUgMTguNSA2LjM0MzE1IDE4LjUgOFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9nPgo8cGF0aCBkPSJNMTEuNSAxOUM5LjYxNDM4IDE5IDguNjcxNTcgMTkgOC4wODU3OSAxOC40MTQyQzcuNSAxNy44Mjg0IDcuNSAxNi44ODU2IDcuNSAxNUw3LjUgOUM3LjUgNy4xMTQzOCA3LjUgNi4xNzE1NyA4LjA4NTc5IDUuNTg1NzlDOC42NzE1NyA1IDkuNjE0MzggNSAxMS41IDVMMTIuNSA1QzE0LjM4NTYgNSAxNS4zMjg0IDUgMTUuOTE0MiA1LjU4NTc5QzE2LjUgNi4xNzE1NyAxNi41IDcuMTE0MzggMTYuNSA5VjE1QzE2LjUgMTYuODg1NiAxNi41IDE3LjgyODQgMTUuOTE0MiAxOC40MTQyQzE1LjMyODQgMTkgMTQuMzg1NiAxOSAxMi41IDE5SDExLjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class PostsCarouselHorizontalBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `posts-carousel-horizontal` icon in the boldDuotone style.
  const PostsCarouselHorizontalBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.5 19C9.61438 19 8.67157 19 8.08579 18.4142C7.5 17.8284 7.5 16.8856 7.5 15L7.5 9C7.5 7.11438 7.5 6.17157 8.08579 5.58579C8.67157 5 9.61438 5 11.5 5L12.5 5C14.3856 5 15.3284 5 15.9142 5.58579C16.5 6.17157 16.5 7.11438 16.5 9V15C16.5 16.8856 16.5 17.8284 15.9142 18.4142C15.3284 19 14.3856 19 12.5 19H11.5Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M5.5 16L5.5 8C5.5 6.34315 4.15685 5 2.5 5C2.22386 5 2 5.22386 2 5.5L2 18.5C2 18.7761 2.22386 19 2.5 19C4.15685 19 5.5 17.6569 5.5 16Z" fill="currentColor"/>
<path d="M18.5 8V16C18.5 17.6569 19.8431 19 21.5 19C21.7761 19 22 18.7761 22 18.5L22 5.5C22 5.22386 21.7761 5 21.5 5C19.8431 5 18.5 6.34315 18.5 8Z" fill="currentColor"/>
</g>''',
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
