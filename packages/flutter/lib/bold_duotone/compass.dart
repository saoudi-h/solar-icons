// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `compass` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTcuNTIyOCA2LjQ3NzE1IDIyIDEyIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTMuMDI0IDE0LjU2MDFDMTMuNTE2NiAxNC4zNjMgMTMuNzYzIDE0LjI2NDUgMTMuOTU2MiAxNC4wOTVDMTQuMDA1NSAxNC4wNTE4IDE0LjA1MTggMTQuMDA1NSAxNC4wOTUgMTMuOTU2MkMxNC4yNjQ1IDEzLjc2MyAxNC4zNjMgMTMuNTE2NiAxNC41NjAxIDEzLjAyNEMxNS40ODQgMTAuNzE0MiAxNS45NDYgOS41NTkzIDE1LjQ5NzcgOC44OTk2NEMxNS4zOTE0IDguNzQzMjQgMTUuMjU2NSA4LjYwODM0IDE1LjEwMDEgOC41MDIwNkMxNC40NDA1IDguMDUzOCAxMy4yODU2IDguNTE1NzUgMTAuOTc1OCA5LjQzOTY2QzEwLjQ4MzEgOS42MzY3MyAxMC4yMzY4IDkuNzM1MjcgMTAuMDQzNSA5LjkwNDc0QzkuOTk0MjkgOS45NDc5MiA5Ljk0NzkyIDkuOTk0MjkgOS45MDQ3NCAxMC4wNDM1QzkuNzM1MjcgMTAuMjM2OCA5LjYzNjczIDEwLjQ4MzEgOS40Mzk2NiAxMC45NzU4QzguNTE1NzUgMTMuMjg1NiA4LjA1MzggMTQuNDQwNSA4LjUwMjA2IDE1LjEwMDFDOC42MDgzNCAxNS4yNTY1IDguNzQzMjQgMTUuMzkxNCA4Ljg5OTY0IDE1LjQ5NzdDOS41NTkzIDE1Ljk0NiAxMC43MTQyIDE1LjQ4NCAxMy4wMjQgMTQuNTYwMVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class CompassBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `compass` icon in the boldDuotone style.
  const CompassBoldDuotoneIcon({
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
    name: 'compass',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.024 14.5601C13.5166 14.363 13.763 14.2645 13.9562 14.095C14.0055 14.0518 14.0518 14.0055 14.095 13.9562C14.2645 13.763 14.363 13.5166 14.5601 13.024C15.484 10.7142 15.946 9.5593 15.4977 8.89964C15.3914 8.74324 15.2565 8.60834 15.1001 8.50206C14.4405 8.0538 13.2856 8.51575 10.9758 9.43966C10.4831 9.63673 10.2368 9.73527 10.0435 9.90474C9.99429 9.94792 9.94792 9.99429 9.90474 10.0435C9.73527 10.2368 9.63673 10.4831 9.43966 10.9758C8.51575 13.2856 8.0538 14.4405 8.50206 15.1001C8.60834 15.2565 8.74324 15.3914 8.89964 15.4977C9.5593 15.946 10.7142 15.484 13.024 14.5601Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
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
