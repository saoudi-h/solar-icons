// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNC41ODMgMjAuOTk5QzE0LjM5MzggMjAuOTk5MiAxNC4xOTk2IDIxIDE0IDIxSDEwQzkuODAwNDQgMjEgOS42MDYxNiAyMC45OTkyIDkuNDE2OTkgMjAuOTk5VjNIMTQuNTgzVjIwLjk5OVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTcuOTE2OTkgMjAuOTg2M0M1LjQ4OSAyMC45NDc1IDQuMTA0MzggMjAuNzYwNiAzLjE3MTg4IDE5LjgyODFDMi4wMDAzIDE4LjY1NjYgMiAxNi43NzEyIDIgMTNWMTFDMiA3LjIyODc2IDIuMDAwMyA1LjM0MzQ1IDMuMTcxODggNC4xNzE4OEM0LjEwNDM4IDMuMjM5MzcgNS40ODg5OSAzLjA1MTUyIDcuOTE2OTkgMy4wMTI3VjIwLjk4NjNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNi4wODMgMy4wMTI3QzE4LjUxMSAzLjA1MTUyIDE5Ljg5NTYgMy4yMzkzNyAyMC44MjgxIDQuMTcxODhDMjEuOTk5NyA1LjM0MzQ1IDIyIDcuMjI4NzYgMjIgMTFWMTNDMjIgMTYuNzcxMiAyMS45OTk3IDE4LjY1NjYgMjAuODI4MSAxOS44MjgxQzE5Ljg5NTYgMjAuNzYwNiAxOC41MTEgMjAuOTQ3NSAxNi4wODMgMjAuOTg2M1YzLjAxMjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class Columns3BoldIcon extends StatelessWidget {
  /// Creates the `columns-3` icon in the bold style.
  const Columns3BoldIcon({
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
    name: 'columns-3',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M14.583 20.999C14.3938 20.9992 14.1996 21 14 21H10C9.80044 21 9.60616 20.9992 9.41699 20.999V3H14.583V20.999Z" fill="currentColor"/>
<path d="M7.91699 20.9863C5.489 20.9475 4.10438 20.7606 3.17188 19.8281C2.0003 18.6566 2 16.7712 2 13V11C2 7.22876 2.0003 5.34345 3.17188 4.17188C4.10438 3.23937 5.48899 3.05152 7.91699 3.0127V20.9863Z" fill="currentColor"/>
<path d="M16.083 3.0127C18.511 3.05152 19.8956 3.23937 20.8281 4.17188C21.9997 5.34345 22 7.22876 22 11V13C22 16.7712 21.9997 18.6566 20.8281 19.8281C19.8956 20.7606 18.511 20.9475 16.083 20.9863V3.0127Z" fill="currentColor"/>''',
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
