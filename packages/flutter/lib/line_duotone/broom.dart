// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMi43MjggNS41MzU4N0MxNC4yOTAxIDMuOTczNzcgMTYuODIyNyAzLjk3MzcgMTguMzg0OCA1LjUzNTc5QzE5Ljk0NjkgNy4wOTc4OSAxOS45NDY5IDkuNjMwNjMgMTguMzg0OCAxMS4xOTI3TTMuNTc5NTIgMTIuOTc5NEwyLjkxMjY0IDExLjg4MzJDMi4wNDA1OSAxMC4xNzQ4IDIuNjAwODMgNy45NjUzNSA0LjQwNzczIDcuMDExMzJDNS4yNjE1MyA2LjU2MDUxIDYuMjE4NDYgNi4xMzIwOSA3LjE2OTMzIDUuODYwMjZDMTAuMDI4OCA1LjA0MjggMTIuNTM0NyA1LjM0MjUzIDEyLjUzNDcgNS4zNDI1M0wxOC41Nzc5IDExLjM4NTdDMTguNTc3OSAxMS4zODU3IDE4Ljg3NzcgMTMuODkxNiAxOC4wNjAyIDE2Ljc1MTFDMTcuNzg4NCAxNy43MDIgMTcuMzU5OSAxOC42NTg5IDE2LjkwOTEgMTkuNTEyN0MxNS45NTUxIDIxLjMxOTYgMTMuNzQ1NyAyMS44Nzk5IDEyLjAzNzMgMjEuMDA3OEwxMC45NDA5IDIwLjM0MDlDNy45MzM1MiAxOC41MTEzIDUuNDA5MDMgMTUuOTg2OCAzLjU3OTUyIDEyLjk3OTRaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjAuNTA2MSAzLjQxNDA2TDE4LjM4NDggNS41MzUzOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BroomLineDuotoneIcon extends StatelessWidget {
  /// Creates the `broom` icon in the lineDuotone style.
  const BroomLineDuotoneIcon({
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
    name: 'broom',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12.728 5.53587C14.2901 3.97377 16.8227 3.9737 18.3848 5.53579C19.9469 7.09789 19.9469 9.63063 18.3848 11.1927M3.57952 12.9794L2.91264 11.8832C2.04059 10.1748 2.60083 7.96535 4.40773 7.01132C5.26153 6.56051 6.21846 6.13209 7.16933 5.86026C10.0288 5.0428 12.5347 5.34253 12.5347 5.34253L18.5779 11.3857C18.5779 11.3857 18.8777 13.8916 18.0602 16.7511C17.7884 17.702 17.3599 18.6589 16.9091 19.5127C15.9551 21.3196 13.7457 21.8799 12.0373 21.0078L10.9409 20.3409C7.93352 18.5113 5.40903 15.9868 3.57952 12.9794Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.5061 3.41406L18.3848 5.53538" stroke="currentColor" stroke-linecap="round"/>''',
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
