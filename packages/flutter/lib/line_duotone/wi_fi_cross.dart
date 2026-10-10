// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-cross` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNOC42NjY5OSAxNS44OTMxQzEwLjUwNzkgMTMuOTA2MSAxMy40OTI3IDEzLjkwNjEgMTUuMzMzNyAxNS44OTMxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNS4zMzMwMSAxMi4yOTVDNy40Mjk2NSAxMC4wMzIgMTAuMjY4MSA5LjA1NzY0IDEzLjAwMzUgOS4zNzE5NSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIgOC42OTY5NEM1LjAxODE2IDUuNDM5MjUgOS4wNjExMSAzLjk2MTg1IDEzLjAwODggNC4yNjQ3MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyLjAxNzYgMTkuNDY0NEgxMi4wMTc3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIyIDUuMDAwMDJMMTYgMTFNMTYgNUwyMS45OTk5IDExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class WiFiCrossLineDuotoneIcon extends StatelessWidget {
  /// Creates the `wi-fi-cross` icon in the lineDuotone style.
  const WiFiCrossLineDuotoneIcon({
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
    name: 'wi-fi-cross',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 5.00002L16 11M16 5L21.9999 11" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M8.66699 15.8931C10.5079 13.9061 13.4927 13.9061 15.3337 15.8931" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5.33301 12.295C7.42965 10.032 10.2681 9.05764 13.0035 9.37195" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2 8.69694C5.01816 5.43925 9.06111 3.96185 13.0088 4.26472" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
