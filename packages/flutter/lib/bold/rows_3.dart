// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zLjAwMDk4IDE0LjU4M0MzLjAwMDggMTQuMzkzOCAzIDE0LjE5OTYgMyAxNEwzIDEwQzMgOS44MDA0NCAzLjAwMDggOS42MDYxNiAzLjAwMDk4IDkuNDE2OTlMMjEgOS40MTY5OUwyMSAxNC41ODNMMy4wMDA5OCAxNC41ODNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0zLjAxMzY3IDcuOTE2OTlDMy4wNTI1IDUuNDg5IDMuMjM5MzcgNC4xMDQzOCA0LjE3MTg3IDMuMTcxODdDNS4zNDM0NSAyLjAwMDMgNy4yMjg3NiAyIDExIDJMMTMgMkMxNi43NzEyIDIgMTguNjU2NiAyLjAwMDMgMTkuODI4MSAzLjE3MTg3QzIwLjc2MDYgNC4xMDQzOCAyMC45NDg1IDUuNDg4OTkgMjAuOTg3MyA3LjkxNjk5TDMuMDEzNjcgNy45MTY5OVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIwLjk4NzMgMTYuMDgzQzIwLjk0ODUgMTguNTExIDIwLjc2MDYgMTkuODk1NiAxOS44MjgxIDIwLjgyODFDMTguNjU2NiAyMS45OTk3IDE2Ljc3MTIgMjIgMTMgMjJMMTEgMjJDNy4yMjg3NiAyMiA1LjM0MzQ1IDIxLjk5OTcgNC4xNzE4NyAyMC44MjgxQzMuMjM5MzcgMTkuODk1NiAzLjA1MjUgMTguNTExIDMuMDEzNjcgMTYuMDgzTDIwLjk4NzMgMTYuMDgzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class Rows3BoldIcon extends StatelessWidget {
  /// Creates the `rows-3` icon in the bold style.
  const Rows3BoldIcon({
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
    name: 'rows-3',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3.00098 14.583C3.0008 14.3938 3 14.1996 3 14L3 10C3 9.80044 3.0008 9.60616 3.00098 9.41699L21 9.41699L21 14.583L3.00098 14.583Z" fill="currentColor"/>
<path d="M3.01367 7.91699C3.0525 5.489 3.23937 4.10438 4.17187 3.17187C5.34345 2.0003 7.22876 2 11 2L13 2C16.7712 2 18.6566 2.0003 19.8281 3.17187C20.7606 4.10438 20.9485 5.48899 20.9873 7.91699L3.01367 7.91699Z" fill="currentColor"/>
<path d="M20.9873 16.083C20.9485 18.511 20.7606 19.8956 19.8281 20.8281C18.6566 21.9997 16.7712 22 13 22L11 22C7.22876 22 5.34345 21.9997 4.17187 20.8281C3.23937 19.8956 3.0525 18.511 3.01367 16.083L20.9873 16.083Z" fill="currentColor"/>''',
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
