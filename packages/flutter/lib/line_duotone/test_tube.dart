// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOSA3LjgwMzc0TDE4LjE1OTQgNy4zMTk4N0w5Ljc0ODcyIDIuNDk0MTVNOS43NDg3MiAyLjQ5NDE1TDIuNjUwOTMgMTQuNzQ1NUMxLjMxMDkzIDE3LjA1ODQgMi4xMDYxNSAyMC4wMTU5IDQuNDI3MDkgMjEuMzUxM0M2Ljc0ODAzIDIyLjY4NjcgOS43MTU4IDIxLjg5NDIgMTEuMDU1OCAxOS41ODEzTDEyLjU1MTEgMTcuMDAwM0wxNC4xODg2IDE0LjE3MzhMMTUuOTAyIDExLjIxNjNMMTguMTU5NCA3LjMxOTg3TTkuNzQ4NzIgMi40OTQxNUw4LjkxMjgzIDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xNS45MDIxIDExLjIxNjRMMTMuMzQ0MSA5Ljc0NDYzTTE0LjE4ODcgMTQuMTczOUw5Ljk4NTc3IDExLjc1NTdNMTIuNTUxMiAxNy4wMDA0TDkuOTM4NDggMTUuNDk3MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIyIDE0LjkxNjZDMjIgMTYuMDY3MiAyMS4xMDQ2IDE2Ljk5OTkgMjAgMTYuOTk5OUMxOC44OTU0IDE2Ljk5OTkgMTggMTYuMDY3MiAxOCAxNC45MTY2QzE4IDE0LjE5NjcgMTguNzgzIDEzLjIzNTggMTkuMzY5MSAxMi42MTc0QzE5LjcxNjEgMTIuMjUxMiAyMC4yODM5IDEyLjI1MTIgMjAuNjMwOSAxMi42MTc0QzIxLjIxNyAxMy4yMzU4IDIyIDE0LjE5NjcgMjIgMTQuOTE2NloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class TestTubeLineDuotoneIcon extends StatelessWidget {
  /// Creates the `test-tube` icon in the lineDuotone style.
  const TestTubeLineDuotoneIcon({
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
    name: 'test-tube',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M19 7.80374L18.1594 7.31987L9.74872 2.49415M9.74872 2.49415L2.65093 14.7455C1.31093 17.0584 2.10615 20.0159 4.42709 21.3513C6.74803 22.6867 9.7158 21.8942 11.0558 19.5813L12.5511 17.0003L14.1886 14.1738L15.902 11.2163L18.1594 7.31987M9.74872 2.49415L8.91283 2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.9021 11.2164L13.3441 9.74463M14.1887 14.1739L9.98577 11.7557M12.5512 17.0004L9.93848 15.4972" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M22 14.9166C22 16.0672 21.1046 16.9999 20 16.9999C18.8954 16.9999 18 16.0672 18 14.9166C18 14.1967 18.783 13.2358 19.3691 12.6174C19.7161 12.2512 20.2839 12.2512 20.6309 12.6174C21.217 13.2358 22 14.1967 22 14.9166Z" stroke="currentColor" stroke-linecap="round"/>''',
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
