// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01IDExLjVDNSA5LjYxNDM4IDUgOC42NzE1NyA1LjU4NTc5IDguMDg1NzlDNi4xNzE1NyA3LjUgNy4xMTQzOCA3LjUgOSA3LjVIMTVDMTYuODg1NiA3LjUgMTcuODI4NCA3LjUgMTguNDE0MiA4LjA4NTc5QzE5IDguNjcxNTcgMTkgOS42MTQzOCAxOSAxMS41VjEyLjVDMTkgMTQuMzg1NiAxOSAxNS4zMjg0IDE4LjQxNDIgMTUuOTE0MkMxNy44Mjg0IDE2LjUgMTYuODg1NiAxNi41IDE1IDE2LjVIOUM3LjExNDM4IDE2LjUgNi4xNzE1NyAxNi41IDUuNTg1NzkgMTUuOTE0MkM1IDE1LjMyODQgNSAxNC4zODU2IDUgMTIuNVYxMS41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOSAyVjIuNUMxOSAzLjg4MDcxIDE3Ljg4MDcgNSAxNi41IDVINy41QzYuMTE5MjkgNSA1IDMuODgwNzEgNSAyLjVWMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOSAyMlYyMS41QzE5IDIwLjExOTMgMTcuODgwNyAxOSAxNi41IDE5SDcuNUM2LjExOTI5IDE5IDUgMjAuMTE5MyA1IDIxLjVWMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PostsCarouselVerticalLinearIcon extends StatelessWidget {
  /// Creates the `posts-carousel-vertical` icon in the linear style.
  const PostsCarouselVerticalLinearIcon({
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
    name: 'posts-carousel-vertical',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M5 11.5C5 9.61438 5 8.67157 5.58579 8.08579C6.17157 7.5 7.11438 7.5 9 7.5H15C16.8856 7.5 17.8284 7.5 18.4142 8.08579C19 8.67157 19 9.61438 19 11.5V12.5C19 14.3856 19 15.3284 18.4142 15.9142C17.8284 16.5 16.8856 16.5 15 16.5H9C7.11438 16.5 6.17157 16.5 5.58579 15.9142C5 15.3284 5 14.3856 5 12.5V11.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 2V2.5C19 3.88071 17.8807 5 16.5 5H7.5C6.11929 5 5 3.88071 5 2.5V2" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 22V21.5C19 20.1193 17.8807 19 16.5 19H7.5C6.11929 19 5 20.1193 5 21.5V22" stroke="currentColor" stroke-linecap="round"/>''',
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
