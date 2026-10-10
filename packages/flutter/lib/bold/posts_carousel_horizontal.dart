// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `posts-carousel-horizontal` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUuNSAxNkw1LjUgOEM1LjUgNi4zNDMxNSA0LjE1Njg1IDUgMi41IDVDMi4yMjM4NiA1IDIgNS4yMjM4NiAyIDUuNVYxOC41QzIgMTguNzc2MSAyLjIyMzg2IDE5IDIuNSAxOUM0LjE1Njg1IDE5IDUuNSAxNy42NTY5IDUuNSAxNloiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTEyLjUgNUMxNC4zODU2IDUgMTUuMzI4NCA1IDE1LjkxNDIgNS41ODU3OUMxNi41IDYuMTcxNTcgMTYuNSA3LjExNDM4IDE2LjUgOVYxNUMxNi41IDE2Ljg4NTYgMTYuNSAxNy44Mjg0IDE1LjkxNDIgMTguNDE0MkMxNS4zMjg0IDE5IDE0LjM4NTYgMTkgMTIuNSAxOUgxMS41QzkuNjE0MzggMTkgOC42NzE1NyAxOSA4LjA4NTc5IDE4LjQxNDJDNy41IDE3LjgyODQgNy41IDE2Ljg4NTYgNy41IDE1TDcuNSA5QzcuNSA3LjExNDM4IDcuNSA2LjE3MTU3IDguMDg1NzkgNS41ODU3OUM4LjY3MTU3IDUgOS42MTQzOCA1IDExLjUgNUgxMi41WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTguNSA4VjE2QzE4LjUgMTcuNjU2OSAxOS44NDMxIDE5IDIxLjUgMTlDMjEuNzc2MSAxOSAyMiAxOC43NzYxIDIyIDE4LjVWNS41QzIyIDUuMjIzODYgMjEuNzc2MSA1IDIxLjUgNUMxOS44NDMxIDUgMTguNSA2LjM0MzE1IDE4LjUgOFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class PostsCarouselHorizontalBoldIcon extends StatelessWidget {
  /// Creates the `posts-carousel-horizontal` icon in the bold style.
  const PostsCarouselHorizontalBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M5.5 16L5.5 8C5.5 6.34315 4.15685 5 2.5 5C2.22386 5 2 5.22386 2 5.5V18.5C2 18.7761 2.22386 19 2.5 19C4.15685 19 5.5 17.6569 5.5 16Z" fill="currentColor"/>
<path d="M12.5 5C14.3856 5 15.3284 5 15.9142 5.58579C16.5 6.17157 16.5 7.11438 16.5 9V15C16.5 16.8856 16.5 17.8284 15.9142 18.4142C15.3284 19 14.3856 19 12.5 19H11.5C9.61438 19 8.67157 19 8.08579 18.4142C7.5 17.8284 7.5 16.8856 7.5 15L7.5 9C7.5 7.11438 7.5 6.17157 8.08579 5.58579C8.67157 5 9.61438 5 11.5 5H12.5Z" fill="currentColor"/>
<path d="M18.5 8V16C18.5 17.6569 19.8431 19 21.5 19C21.7761 19 22 18.7761 22 18.5V5.5C22 5.22386 21.7761 5 21.5 5C19.8431 5 18.5 6.34315 18.5 8Z" fill="currentColor"/>''',
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
