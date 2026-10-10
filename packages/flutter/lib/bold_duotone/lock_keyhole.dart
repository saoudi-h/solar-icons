// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `lock-keyhole` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxNkMyIDEzLjE3MTYgMiAxMS43NTc0IDIuODc4NjggMTAuODc4N0MzLjc1NzM2IDEwIDUuMTcxNTcgMTAgOCAxMEgxNkMxOC44Mjg0IDEwIDIwLjI0MjYgMTAgMjEuMTIxMyAxMC44Nzg3QzIyIDExLjc1NzQgMjIgMTMuMTcxNiAyMiAxNkMyMiAxOC44Mjg0IDIyIDIwLjI0MjYgMjEuMTIxMyAyMS4xMjEzQzIwLjI0MjYgMjIgMTguODI4NCAyMiAxNiAyMkg4QzUuMTcxNTcgMjIgMy43NTczNiAyMiAyLjg3ODY4IDIxLjEyMTNDMiAyMC4yNDI2IDIgMTguODI4NCAyIDE2WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIgMTRDMTMuMTA0NiAxNCAxNCAxNC44OTU0IDE0IDE2QzE0IDE3LjEwNDYgMTMuMTA0NiAxOCAxMiAxOEMxMC44OTU0IDE4IDEwIDE3LjEwNDYgMTAgMTZDMTAgMTQuODk1NCAxMC44OTU0IDE0IDEyIDE0WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIgMS4yNUMxNS43Mjc5IDEuMjUgMTguNzUgNC4yNzIwOCAxOC43NSA4VjEwLjA1NDdDMTguMzEzNSAxMC4wMjIxIDE3LjgxNzQgMTAuMDA5MiAxNy4yNSAxMC4wMDM5VjhDMTcuMjUgNS4xMDA1MSAxNC44OTk1IDIuNzUgMTIgMi43NUM5LjEwMDUxIDIuNzUgNi43NSA1LjEwMDUxIDYuNzUgOFYxMC4wMDM5QzYuMTgyNjQgMTAuMDA5MiA1LjY4NjUxIDEwLjAyMjEgNS4yNSAxMC4wNTQ3VjhDNS4yNSA0LjI3MjA4IDguMjcyMDggMS4yNSAxMiAxLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class LockKeyholeBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `lock-keyhole` icon in the boldDuotone style.
  const LockKeyholeBoldDuotoneIcon({
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
    name: 'lock-keyhole',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 14C13.1046 14 14 14.8954 14 16C14 17.1046 13.1046 18 12 18C10.8954 18 10 17.1046 10 16C10 14.8954 10.8954 14 12 14Z" fill="currentColor"/>
<path d="M12 1.25C15.7279 1.25 18.75 4.27208 18.75 8V10.0547C18.3135 10.0221 17.8174 10.0092 17.25 10.0039V8C17.25 5.10051 14.8995 2.75 12 2.75C9.10051 2.75 6.75 5.10051 6.75 8V10.0039C6.18264 10.0092 5.68651 10.0221 5.25 10.0547V8C5.25 4.27208 8.27208 1.25 12 1.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 16C2 13.1716 2 11.7574 2.87868 10.8787C3.75736 10 5.17157 10 8 10H16C18.8284 10 20.2426 10 21.1213 10.8787C22 11.7574 22 13.1716 22 16C22 18.8284 22 20.2426 21.1213 21.1213C20.2426 22 18.8284 22 16 22H8C5.17157 22 3.75736 22 2.87868 21.1213C2 20.2426 2 18.8284 2 16Z" fill="currentColor"/>''',
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
