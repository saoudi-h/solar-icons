// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `mouse` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTkgOC45NzQxNFYxNC45ODZDMTkgMTguODU5NyAxNS44NjYgMjEuOTk5OSAxMiAyMS45OTk5QzguMTM0MDEgMjEuOTk5OSA1IDE4Ljg1OTcgNSAxNC45ODZWOC45NzQxNEM1IDUuMzU0MzMgNy43MzY2OCAyLjM3NDk3IDExLjI1IDJWNS4zODU0MkMxMC42NTg4IDUuNjY2ODUgMTAuMjUgNi4yNzA2NyAxMC4yNSA2Ljk3MDE2VjguOTc0MTRDMTAuMjUgOS45NDI1NiAxMS4wMzM1IDEwLjcyNzYgMTIgMTAuNzI3NkMxMi45NjY1IDEwLjcyNzYgMTMuNzUgOS45NDI1NiAxMy43NSA4Ljk3NDE0VjYuOTcwMTZDMTMuNzUgNi4yNzA2NyAxMy4zNDEyIDUuNjY2ODUgMTIuNzUgNS4zODU0MlYyQzE2LjI2MzMgMi4zNzQ5NyAxOSA1LjM1NDMzIDE5IDguOTc0MTRaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMy43NSA4Ljk3Mzg1VjYuOTY5ODdDMTMuNzUgNi4yNzAzOCAxMy4zNDEyIDUuNjY2NTYgMTIuNzUgNS4zODUxM1YxLjk5OTcxQzEyLjUwMzYgMS45NzM0MSAxMi4yNTM0IDEuOTU5OTYgMTIgMS45NTk5NkMxMS43NDY2IDEuOTU5OTYgMTEuNDk2NCAxLjk3MzQxIDExLjI1IDEuOTk5NzFWNS4zODUxM0MxMC42NTg4IDUuNjY2NTYgMTAuMjUgNi4yNzAzOCAxMC4yNSA2Ljk2OTg3VjguOTczODVDMTAuMjUgOS45NDIyNyAxMS4wMzM1IDEwLjcyNzMgMTIgMTAuNzI3M0MxMi45NjY1IDEwLjcyNzMgMTMuNzUgOS45NDIyNyAxMy43NSA4Ljk3Mzg1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MouseBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `mouse` icon in the boldDuotone style.
  const MouseBoldDuotoneIcon({
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
    name: 'mouse',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.75 8.97385V6.96987C13.75 6.27038 13.3412 5.66656 12.75 5.38513V1.99971C12.5036 1.97341 12.2534 1.95996 12 1.95996C11.7466 1.95996 11.4964 1.97341 11.25 1.99971V5.38513C10.6588 5.66656 10.25 6.27038 10.25 6.96987V8.97385C10.25 9.94227 11.0335 10.7273 12 10.7273C12.9665 10.7273 13.75 9.94227 13.75 8.97385Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M19 8.97414V14.986C19 18.8597 15.866 21.9999 12 21.9999C8.13401 21.9999 5 18.8597 5 14.986V8.97414C5 5.35433 7.73668 2.37497 11.25 2V5.38542C10.6588 5.66685 10.25 6.27067 10.25 6.97016V8.97414C10.25 9.94256 11.0335 10.7276 12 10.7276C12.9665 10.7276 13.75 9.94256 13.75 8.97414V6.97016C13.75 6.27067 13.3412 5.66685 12.75 5.38542V2C16.2633 2.37497 19 5.35433 19 8.97414Z" fill="currentColor"/>''',
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
