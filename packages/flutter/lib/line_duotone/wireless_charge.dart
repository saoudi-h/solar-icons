// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wireless-charge` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjA2NDYgMTcuOTk5N0MxNi40ODI3IDE4LjAzNTQgMjAuMDM1NCAxNC40ODI3IDE5Ljk5OTcgMTAuMDY0NkMxOS45NjQxIDUuNjQ2NDIgMTYuMzUzNiAyLjAzNTkyIDExLjkzNTQgMi4wMDAyN0M3LjUxNzMxIDEuOTY0NjEgMy45NjQ2MSA1LjUxNzMxIDQuMDAwMjcgOS45MzU0NUM0LjAzNTkyIDE0LjM1MzYgNy42NDY0MiAxNy45NjQxIDEyLjA2NDYgMTcuOTk5N1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMi44NTcxIDdMMTAgMTBIMTRMMTEuMTQyOSAxMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDIxVjIyTTEyIDIxQzExLjUzNDEgMjEgMTEuMzAxMSAyMSAxMS4xMTczIDIwLjkyMzlDMTAuODcyMyAyMC44MjI0IDEwLjY3NzYgMjAuNjI3NyAxMC41NzYxIDIwLjM4MjdDMTAuNSAyMC4xOTg5IDEwLjUgMTkuOTY1OSAxMC41IDE5LjVWMThNMTIgMjFDMTIuNDY1OSAyMSAxMi42OTg5IDIxIDEyLjg4MjcgMjAuOTIzOUMxMy4xMjc3IDIwLjgyMjQgMTMuMzIyNCAyMC42Mjc3IDEzLjQyMzkgMjAuMzgyN0MxMy41IDIwLjE5ODkgMTMuNSAxOS45NjU5IDEzLjUgMTkuNVYxOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class WirelessChargeLineDuotoneIcon extends StatelessWidget {
  /// Creates the `wireless-charge` icon in the lineDuotone style.
  const WirelessChargeLineDuotoneIcon({
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
    name: 'wireless-charge',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12.0646 17.9997C16.4827 18.0354 20.0354 14.4827 19.9997 10.0646C19.9641 5.64642 16.3536 2.03592 11.9354 2.00027C7.51731 1.96461 3.96461 5.51731 4.00027 9.93545C4.03592 14.3536 7.64642 17.9641 12.0646 17.9997Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.8571 7L10 10H14L11.1429 13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M12 21V22M12 21C11.5341 21 11.3011 21 11.1173 20.9239C10.8723 20.8224 10.6776 20.6277 10.5761 20.3827C10.5 20.1989 10.5 19.9659 10.5 19.5V18M12 21C12.4659 21 12.6989 21 12.8827 20.9239C13.1277 20.8224 13.3224 20.6277 13.4239 20.3827C13.5 20.1989 13.5 19.9659 13.5 19.5V18" stroke="currentColor" stroke-linecap="round"/>''',
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
