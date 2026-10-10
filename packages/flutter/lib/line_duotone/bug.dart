// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bug` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTkgMTRIMjJNNSAxNEgyTTE0LjI5MDUgMy42MjU3MUwxNyAyTTkuNzA5NDcgMy42MjU2OUw2Ljk5OTk4IDJNMTcuODAwMyAxOC45MjAyTDIwLjUwMDIgMjAuMDAwMU0xNy43Nzk4IDkuMDg3ODlMMjAuNDk5OSA3Ljk5OTg0TTYuMTk5NzEgMTguOTIwMkwzLjQ5OTg3IDIwLjAwMDFNMTIgMjJWMTVNNi4yMjAyMSA5LjA4Nzg5TDMuNTAwMTggNy45OTk4OCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi41IDguMjcwNjVWNy41QzE2LjUgNS4wMTQ3MiAxNC40ODUzIDMgMTIgM0M5LjUxNDcyIDMgNy41IDUuMDE0NzIgNy41IDcuNVY4LjI3MDY1TTE5IDExLjkzNzVWMTVDMTkgMTguODY2IDE1Ljg2NiAyMiAxMiAyMkM4LjEzNDAxIDIyIDUgMTguODY2IDUgMTVWMTEuOTM3NUM1IDkuNzYyODggNi43NjI4OCA4IDguOTM3NSA4SDE1LjA2MjVDMTcuMjM3MSA4IDE5IDkuNzYyODggMTkgMTEuOTM3NVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BugLineDuotoneIcon extends StatelessWidget {
  /// Creates the `bug` icon in the lineDuotone style.
  const BugLineDuotoneIcon({
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
    name: 'bug',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M16.5 8.27065V7.5C16.5 5.01472 14.4853 3 12 3C9.51472 3 7.5 5.01472 7.5 7.5V8.27065M19 11.9375V15C19 18.866 15.866 22 12 22C8.13401 22 5 18.866 5 15V11.9375C5 9.76288 6.76288 8 8.9375 8H15.0625C17.2371 8 19 9.76288 19 11.9375Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19 14H22M5 14H2M14.2905 3.62571L17 2M9.70947 3.62569L6.99998 2M17.8003 18.9202L20.5002 20.0001M17.7798 9.08789L20.4999 7.99984M6.19971 18.9202L3.49987 20.0001M12 22V15M6.22021 9.08789L3.50018 7.99988" stroke="currentColor" stroke-linecap="round"/>''',
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
