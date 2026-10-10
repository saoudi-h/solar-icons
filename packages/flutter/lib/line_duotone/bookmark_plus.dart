// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bookmark-plus` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIxIDE2LjA5MDlWMTEuMDk3NUMyMSA2LjgwODkxIDIxIDQuNjY0NiAxOS42ODIgMy4zMzIzQzE4LjM2NCAyIDE2LjI0MjYgMiAxMiAyQzcuNzU3MzYgMiA1LjYzNjA0IDIgNC4zMTgwMiAzLjMzMjNDMyA0LjY2NDYgMyA2LjgwODkxIDMgMTEuMDk3NVYxNi4wOTA5QzMgMTkuMTg3NSAzIDIwLjczNTggMy43MzQxMSAyMS40MTIzQzQuMDg0MjEgMjEuNzM1IDQuNTI2MTUgMjEuOTM3NyA0Ljk5NjkyIDIxLjk5MTVDNS45ODQwMiAyMi4xMDQ1IDcuMTM2NzMgMjEuMDg0OSA5LjQ0MjE2IDE5LjA0NThDMTAuNDYxMiAxOC4xNDQ1IDEwLjk3MDggMTcuNjkzOCAxMS41NjAzIDE3LjU3NTFDMTEuODUwNiAxNy41MTY2IDEyLjE0OTQgMTcuNTE2NiAxMi40Mzk3IDE3LjU3NTFDMTMuMDI5MiAxNy42OTM4IDEzLjUzODggMTguMTQ0NSAxNC41NTc4IDE5LjA0NThDMTYuODYzMyAyMS4wODQ5IDE4LjAxNiAyMi4xMDQ1IDE5LjAwMzEgMjEuOTkxNUMxOS40NzM5IDIxLjkzNzcgMTkuOTE1OCAyMS43MzUgMjAuMjY1OSAyMS40MTIzQzIxIDIwLjczNTggMjEgMTkuMTg3NSAyMSAxNi4wOTA5WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE1LjI1IDkuNzYzN0gxMk0xMiA5Ljc2MzdMOC43NSA5Ljc2MzdNMTIgOS43NjM3TDEyIDYuNTEzNjdNMTIgOS43NjM3TDEyIDEzLjAxMzciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BookmarkPlusLineDuotoneIcon extends StatelessWidget {
  /// Creates the `bookmark-plus` icon in the lineDuotone style.
  const BookmarkPlusLineDuotoneIcon({
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
    name: 'bookmark-plus',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21 16.0909V11.0975C21 6.80891 21 4.6646 19.682 3.3323C18.364 2 16.2426 2 12 2C7.75736 2 5.63604 2 4.31802 3.3323C3 4.6646 3 6.80891 3 11.0975V16.0909C3 19.1875 3 20.7358 3.73411 21.4123C4.08421 21.735 4.52615 21.9377 4.99692 21.9915C5.98402 22.1045 7.13673 21.0849 9.44216 19.0458C10.4612 18.1445 10.9708 17.6938 11.5603 17.5751C11.8506 17.5166 12.1494 17.5166 12.4397 17.5751C13.0292 17.6938 13.5388 18.1445 14.5578 19.0458C16.8633 21.0849 18.016 22.1045 19.0031 21.9915C19.4739 21.9377 19.9158 21.735 20.2659 21.4123C21 20.7358 21 19.1875 21 16.0909Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.25 9.7637H12M12 9.7637L8.75 9.7637M12 9.7637L12 6.51367M12 9.7637L12 13.0137" stroke="currentColor" stroke-linecap="round"/>''',
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
