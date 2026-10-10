// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `health` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiA5LjMxNzVDMiAxMy4wNDY4IDYuMDE5NDMgMTYuOTkxIDguOTYxNzMgMTkuMzc4NkMxMC4yOTM3IDIwLjQ1OTUgMTAuOTU5NyAyMSAxMiAyMUMxMy4wNDAzIDIxIDEzLjcwNjMgMjAuNDU5NiAxNS4wMzgzIDE5LjM3ODdDMTcuOTgwNiAxNi45OTEgMjIgMTMuMDQ2OCAyMiA5LjMxNzQ3QzIyIDMuMDg3NDggMTYuNDk5OCAwLjc2MTQ5OCAxMiA1LjU3NDEyQzcuNTAwMTYgMC43NjE0OTggMiAzLjA4NzQ4IDIgOS4zMTc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTE2LjUgNi4yNUMxNi45MTQyIDYuMjUgMTcuMjUgNi41ODU3OSAxNy4yNSA3TDE3LjI1IDguMjUwMDJIMTguNUMxOC45MTQyIDguMjUwMDIgMTkuMjUgOC41ODU4IDE5LjI1IDkuMDAwMDJDMTkuMjUgOS40MTQyMyAxOC45MTQyIDkuNzUwMDIgMTguNSA5Ljc1MDAySDE3LjI1VjExQzE3LjI1IDExLjQxNDIgMTYuOTE0MiAxMS43NSAxNi41IDExLjc1QzE2LjA4NTggMTEuNzUgMTUuNzUgMTEuNDE0MiAxNS43NSAxMUwxNS43NSA5Ljc1MDAyTDE0LjUgOS43NTAwMkMxNC4wODU4IDkuNzUwMDIgMTMuNzUgOS40MTQyMyAxMy43NSA5LjAwMDAyQzEzLjc1IDguNTg1OCAxNC4wODU4IDguMjUwMDIgMTQuNSA4LjI1MDAySDE1Ljc1TDE1Ljc1IDdDMTUuNzUgNi41ODU3OSAxNi4wODU4IDYuMjUgMTYuNSA2LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class HealthBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `health` icon in the boldDuotone style.
  const HealthBoldDuotoneIcon({
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
    name: 'health',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.5 6.25C16.9142 6.25 17.25 6.58579 17.25 7L17.25 8.25002H18.5C18.9142 8.25002 19.25 8.5858 19.25 9.00002C19.25 9.41423 18.9142 9.75002 18.5 9.75002H17.25V11C17.25 11.4142 16.9142 11.75 16.5 11.75C16.0858 11.75 15.75 11.4142 15.75 11L15.75 9.75002L14.5 9.75002C14.0858 9.75002 13.75 9.41423 13.75 9.00002C13.75 8.5858 14.0858 8.25002 14.5 8.25002H15.75L15.75 7C15.75 6.58579 16.0858 6.25 16.5 6.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 9.3175C2 13.0468 6.01943 16.991 8.96173 19.3786C10.2937 20.4595 10.9597 21 12 21C13.0403 21 13.7063 20.4596 15.0383 19.3787C17.9806 16.991 22 13.0468 22 9.31747C22 3.08748 16.4998 0.761498 12 5.57412C7.50016 0.761498 2 3.08748 2 9.3175Z" fill="currentColor"/>''',
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
