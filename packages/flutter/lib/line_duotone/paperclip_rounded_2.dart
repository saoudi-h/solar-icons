// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyLjk1MDIgMTEuMDA4N0wxMC4wMTA0IDEzLjkzNTFDOC4zODY4NyAxNS41NTEzIDguMzg2ODcgMTguMTcxNiAxMC4wMTA0IDE5Ljc4NzhDMTEuNjM0IDIxLjQwNCAxNC4yNjY0IDIxLjQwNCAxNS44ODk5IDE5Ljc4NzhMMTkuNTY0NiAxNi4xMjk5QzIyLjgxMTggMTIuODk3NSAyMi44MTE4IDcuNjU2NyAxOS41NjQ2IDQuNDI0M0MxNi4zMTc1IDEuMTkxOSAxMS4wNTI4IDEuMTkxOSA3LjgwNTYzIDQuNDI0M0w0LjEzMDk1IDguMDgyMjlDMS4yODk2OCAxMC45MTA2IDEuMjg5NjggMTUuNDk2MyA0LjEzMDk1IDE4LjMyNDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNC4xMzA5NSAxOC4zMjQ3QzEuMjg5NjggMTUuNDk2MyAxLjI4OTY4IDEwLjkxMDYgNC4xMzA5NSA4LjA4MjI5TDcuODA1NjMgNC40MjQzQzExLjA1MjggMS4xOTE5IDE2LjMxNzUgMS4xOTE5IDE5LjU2NDYgNC40MjQzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class PaperclipRounded2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `paperclip-rounded-2` icon in the lineDuotone style.
  const PaperclipRounded2LineDuotoneIcon({
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
    name: 'paperclip-rounded-2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4.13095 18.3247C1.28968 15.4963 1.28968 10.9106 4.13095 8.08229L7.80563 4.4243C11.0528 1.1919 16.3175 1.1919 19.5646 4.4243" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.9502 11.0087L10.0104 13.9351C8.38687 15.5513 8.38687 18.1716 10.0104 19.7878C11.634 21.404 14.2664 21.404 15.8899 19.7878L19.5646 16.1299C22.8118 12.8975 22.8118 7.6567 19.5646 4.4243C16.3175 1.1919 11.0528 1.1919 7.80563 4.4243L4.13095 8.08229C1.28968 10.9106 1.28968 15.4963 4.13095 18.3247" stroke="currentColor" stroke-linecap="round"/>''',
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
