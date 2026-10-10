// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMSAxNi4wOTA5VjExLjA5NzVDMjEgNi44MDg5MSAyMSA0LjY2NDYgMTkuNjgyIDMuMzMyM0MxOC4zNjQgMiAxNi4yNDI2IDIgMTIgMkM3Ljc1NzM2IDIgNS42MzYwNCAyIDQuMzE4MDIgMy4zMzIzQzMgNC42NjQ2IDMgNi44MDg5MSAzIDExLjA5NzVWMTYuMDkwOUMzIDE5LjE4NzUgMyAyMC43MzU4IDMuNzM0MTEgMjEuNDEyM0M0LjA4NDIxIDIxLjczNSA0LjUyNjE1IDIxLjkzNzcgNC45OTY5MiAyMS45OTE1QzUuOTg0MDIgMjIuMTA0NSA3LjEzNjczIDIxLjA4NDkgOS40NDIxNiAxOS4wNDU4QzEwLjQ2MTIgMTguMTQ0NSAxMC45NzA4IDE3LjY5MzggMTEuNTYwMyAxNy41NzUxQzExLjg1MDYgMTcuNTE2NiAxMi4xNDk0IDE3LjUxNjYgMTIuNDM5NyAxNy41NzUxQzEzLjAyOTIgMTcuNjkzOCAxMy41Mzg4IDE4LjE0NDUgMTQuNTU3OCAxOS4wNDU4QzE2Ljg2MzMgMjEuMDg0OSAxOC4wMTYgMjIuMTA0NSAxOS4wMDMxIDIxLjk5MTVDMTkuNDczOSAyMS45Mzc3IDE5LjkxNTggMjEuNzM1IDIwLjI2NTkgMjEuNDEyM0MyMSAyMC43MzU4IDIxIDE5LjE4NzUgMjEgMTYuMDkwOVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOC43NSAxMC4yNTEyTDEwLjYwNzEgMTIuMjAxMkwxNS4yNSA3LjMyNjE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class BookmarkCheckLinearIcon extends StatelessWidget {
  /// Creates the `bookmark-check` icon in the linear style.
  const BookmarkCheckLinearIcon({
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
    name: 'bookmark-check',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M21 16.0909V11.0975C21 6.80891 21 4.6646 19.682 3.3323C18.364 2 16.2426 2 12 2C7.75736 2 5.63604 2 4.31802 3.3323C3 4.6646 3 6.80891 3 11.0975V16.0909C3 19.1875 3 20.7358 3.73411 21.4123C4.08421 21.735 4.52615 21.9377 4.99692 21.9915C5.98402 22.1045 7.13673 21.0849 9.44216 19.0458C10.4612 18.1445 10.9708 17.6938 11.5603 17.5751C11.8506 17.5166 12.1494 17.5166 12.4397 17.5751C13.0292 17.6938 13.5388 18.1445 14.5578 19.0458C16.8633 21.0849 18.016 22.1045 19.0031 21.9915C19.4739 21.9377 19.9158 21.735 20.2659 21.4123C21 20.7358 21 19.1875 21 16.0909Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.75 10.2512L10.6071 12.2012L15.25 7.32617" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
