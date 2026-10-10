// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMS45OTk4IDE3LjU3MzdMMjEuOTk5OCA2LjQyNjMyQzIxLjk5OTggNC41Nzg5NSAyMC4zOTkxIDMuNDExMjIgMTkuMDk2NiA0LjMwODM4TDEzIDguNzY4NDRMMTMgNy4xMjMwM0MxMyA1LjUwNjU4IDExLjUzMjcgNC40ODQ4MiAxMC4zMzg4IDUuMjY5ODNMMi45MjEzNiAxMC4xNDY4QzEuNjkyODggMTAuOTU0NSAxLjY5Mjg4IDEzLjA0NTUgMi45MjEzNSAxMy44NTMyTDEwLjMzODggMTguNzMwMkMxMS41MzI3IDE5LjUxNTIgMTMgMTguNDkzNCAxMyAxNi44NzdWMTUuMjMxNkwxOS4wOTY2IDE5LjY5MTZDMjAuMzk5MSAyMC41ODg4IDIxLjk5OTggMTkuNDIxMSAyMS45OTk4IDE3LjU3MzdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RewindBackBoldIcon extends StatelessWidget {
  /// Creates the `rewind-back` icon in the bold style.
  const RewindBackBoldIcon({
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
    name: 'rewind-back',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21.9998 17.5737L21.9998 6.42632C21.9998 4.57895 20.3991 3.41122 19.0966 4.30838L13 8.76844L13 7.12303C13 5.50658 11.5327 4.48482 10.3388 5.26983L2.92136 10.1468C1.69288 10.9545 1.69288 13.0455 2.92135 13.8532L10.3388 18.7302C11.5327 19.5152 13 18.4934 13 16.877V15.2316L19.0966 19.6916C20.3991 20.5888 21.9998 19.4211 21.9998 17.5737Z" fill="currentColor"/>''',
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
