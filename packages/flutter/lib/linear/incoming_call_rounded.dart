// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `incoming-call-rounded` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE5IDVMMTUgOU0xOCA5SDE1VjYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAuMDM3NiA1LjMxNjE3TDEwLjY4NjYgNi40NzkxQzExLjI3MjMgNy41Mjg1OCAxMS4wMzcyIDguOTA1MzMgMTAuMTE0NyA5LjgyNzhDMTAuMTE0NyA5LjgyNzggOC45OTU3OCAxMC45NDY3IDExLjAyNDUgMTIuOTc1NUMxMy4wNTMyIDE1LjAwNDIgMTQuMTcyMiAxMy44ODUzIDE0LjE3MjIgMTMuODg1M0MxNS4wOTQ3IDEyLjk2MjggMTYuNDcxNCAxMi43Mjc3IDE3LjUyMDkgMTMuMzEzNEwxOC42ODM4IDEzLjk2MjRDMjAuMjY4NiAxNC44NDY4IDIwLjQ1NTcgMTcuMDY5MiAxOS4wNjI4IDE4LjQ2MjJDMTguMjI1OCAxOS4yOTkyIDE3LjIwMDQgMTkuOTUwNSAxNi4wNjY5IDE5Ljk5MzRDMTQuMTU4OCAyMC4wNjU4IDEwLjkxODMgMTkuNTgyOSA3LjY2NzcgMTYuMzMyM0M0LjQxNzEzIDEzLjA4MTcgMy45MzQyMSA5Ljg0MTIyIDQuMDA2NTUgNy45MzMwOUM0LjA0OTUyIDYuNzk5NiA0LjcwMDggNS43NzQyMyA1LjUzNzgxIDQuOTM3MjNDNi45MzA3NiAzLjU0NDI4IDkuMTUzMTcgMy43MzE0NCAxMC4wMzc2IDUuMzE2MTdaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class IncomingCallRoundedLinearIcon extends StatelessWidget {
  /// Creates the `incoming-call-rounded` icon in the linear style.
  const IncomingCallRoundedLinearIcon({
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
    name: 'incoming-call-rounded',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19 5L15 9M18 9H15V6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10.0376 5.31617L10.6866 6.4791C11.2723 7.52858 11.0372 8.90533 10.1147 9.8278C10.1147 9.8278 8.99578 10.9467 11.0245 12.9755C13.0532 15.0042 14.1722 13.8853 14.1722 13.8853C15.0947 12.9628 16.4714 12.7277 17.5209 13.3134L18.6838 13.9624C20.2686 14.8468 20.4557 17.0692 19.0628 18.4622C18.2258 19.2992 17.2004 19.9505 16.0669 19.9934C14.1588 20.0658 10.9183 19.5829 7.6677 16.3323C4.41713 13.0817 3.93421 9.84122 4.00655 7.93309C4.04952 6.7996 4.7008 5.77423 5.53781 4.93723C6.93076 3.54428 9.15317 3.73144 10.0376 5.31617Z" stroke="currentColor" stroke-linecap="round"/>''',
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
