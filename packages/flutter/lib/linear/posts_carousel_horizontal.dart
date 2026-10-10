// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMi41IDVDMTQuMzg1NiA1IDE1LjMyODQgNSAxNS45MTQyIDUuNTg1NzlDMTYuNSA2LjE3MTU3IDE2LjUgNy4xMTQzOCAxNi41IDlWMTVDMTYuNSAxNi44ODU2IDE2LjUgMTcuODI4NCAxNS45MTQyIDE4LjQxNDJDMTUuMzI4NCAxOSAxNC4zODU2IDE5IDEyLjUgMTlIMTEuNUM5LjYxNDM4IDE5IDguNjcxNTcgMTkgOC4wODU3OSAxOC40MTQyQzcuNSAxNy44Mjg0IDcuNSAxNi44ODU2IDcuNSAxNUw3LjUgOUM3LjUgNy4xMTQzOCA3LjUgNi4xNzE1NyA4LjA4NTc5IDUuNTg1NzlDOC42NzE1NyA1IDkuNjE0MzggNSAxMS41IDVMMTIuNSA1WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxOUgyMS41QzIwLjExOTMgMTkgMTkgMTcuODgwNyAxOSAxNi41TDE5IDcuNUMxOSA2LjExOTI5IDIwLjExOTMgNSAyMS41IDVMMjIgNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDE5SDIuNUMzLjg4MDcxIDE5IDUgMTcuODgwNyA1IDE2LjVMNSA3LjVDNSA2LjExOTI5IDMuODgwNzEgNSAyLjUgNUwyIDUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PostsCarouselHorizontalLinearIcon extends StatelessWidget {
  /// Creates the `posts-carousel-horizontal` icon in the linear style.
  const PostsCarouselHorizontalLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12.5 5C14.3856 5 15.3284 5 15.9142 5.58579C16.5 6.17157 16.5 7.11438 16.5 9V15C16.5 16.8856 16.5 17.8284 15.9142 18.4142C15.3284 19 14.3856 19 12.5 19H11.5C9.61438 19 8.67157 19 8.08579 18.4142C7.5 17.8284 7.5 16.8856 7.5 15L7.5 9C7.5 7.11438 7.5 6.17157 8.08579 5.58579C8.67157 5 9.61438 5 11.5 5L12.5 5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 19H21.5C20.1193 19 19 17.8807 19 16.5L19 7.5C19 6.11929 20.1193 5 21.5 5L22 5" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 19H2.5C3.88071 19 5 17.8807 5 16.5L5 7.5C5 6.11929 3.88071 5 2.5 5L2 5" stroke="currentColor" stroke-linecap="round"/>''',
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
